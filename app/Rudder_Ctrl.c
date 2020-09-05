#include "Includes.h"

int   Rudder_Err; 
int   Rudder_Mid;    
int   Rudder_Min;  
int   Rudder_Max;
int   Rudder_Init;
extern uint8 Flag_Island;
extern uint8 Turn_Around;
extern uint8 Family_Status;
extern uint8 Flag_Ramp;
extern uint8 Spd_Switch;
extern uint8 final;
extern uint8 Spd_Set_ZeroStart;
extern uint8 Case2_Ahead_KeepSide;
extern uint8 Case2_Behind_KeepSide;
extern uint8 OverTake_Island;
extern int   Sum_Distance_EnterCurve;
extern int   Derivative_Error;
extern int   Error;
extern int   Leave_trend;
extern int   Flag_Island_Confirm;
extern int   EnterCurve_SumDis;
extern int   Flag_Island_Confirm_Last;
extern int   Pre_Error[];
extern int Case1_TurnSwitch_Dis;
extern long int   Sum_Distance;
extern int   RampIn_Distance;
extern int EnterStrai_SumDis;

extern int  Limit_Distance_EnterCurve; 
extern int  Spd_UpLimit; 
extern int  Spd_DownLimit; 
extern int  Limit_Distance_EnterStrai; 
extern int  Spd_Straight;

extern int Limit_Distance_EnterIsland; 
extern int Island_Spd_UpLimit; 
extern int Island_Spd_DownLimit;
extern int Island_Distance;

extern float percent_ahead;
struct Rudder Angle;
extern struct Speed  Spd;
int xy = 5470;

void Rudder_Ctrl()
{
   if(Family_Status == 0)
       Elder_Rudder_Ctrl(); //老大的舵机控制
   else 
       Younger_Rudder_Ctrl(); //老二的舵机控制
}


/**********老大的舵机控制***********/
void Elder_Rudder_Ctrl()
{
  Rudder_Err = 700;
  Rudder_Mid = 4530; //4655
  
  //坡道舵机修正
  if(Flag_Ramp==1 && RampIn_Distance>=150*100)
    Rudder_Err *= 0.6;

  //环岛内舵机打较修正
  if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
    Rudder_Err *= 0.95;  
  
  Rudder_Min = Rudder_Mid - Rudder_Err; 
  Rudder_Max = Rudder_Mid + Rudder_Err;
  Rudder_Init = Rudder_Mid;
  
  //PID变量赋值  
  if(EnterStrai_SumDis != 0)
     Angle.error = 0.4*Error + 0.6*Angle.error;
  else
     Angle.error = Error;
  
  Angle.drror = Angle.error - Angle.pre_error[8];
  if(Angle.drror >  4)       Angle.drror =  4;
  if(Angle.drror < -4)       Angle.drror = -4;
  
  
  //变化率限幅
  if(Angle.error-Angle.pre_error[9]>8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
     Angle.error = Angle.pre_error[9]+8;
  else if(Angle.error-Angle.pre_error[9]<-8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
     Angle.error = Angle.pre_error[9]-8;

  if(Angle.error > Error_Limit)
     Angle.error = Error_Limit;
  if(Angle.error < -Error_Limit)
     Angle.error = -Error_Limit;
  
  
  //变量更新  
  for(uint8 i=0; i<9; i++)
     Angle.pre_error[i] = Angle.pre_error[i+1];
  Angle.pre_error[9] = Angle.error;
  

  //舵机PD参数设置  
  float ramp_Rate1, ramp_Rate2,Start_P;
  Start_P = 25 ;
  ramp_Rate1 = 0.2 ;
  ramp_Rate2 = 0.2 ;

  
  if (fabs(Error) < 8)
    Angle.P = Start_P;
  else if(fabs(Error) < 20)
    Angle.P = Start_P + ramp_Rate1*(fabs(Error) - 8);
  else
    Angle.P = (Start_P + ramp_Rate1*12) + ramp_Rate2*(fabs(Error) - 20);//25 0.4

  
  //环岛超车前车舵机打较修正
  if(OverTake_Island != 0)
    if(Turn_Around == 0)
      {
        if(Flag_Island_Confirm!=0 || final!=0)
          Rudder_Err *= 1.4;      
        if(Case1_TurnSwitch_Dis != 0)
          Rudder_Err *= 0.8;      
      }
  
  if(EnterStrai_SumDis != 0)
     Angle.D = 80 ; // 80
  else
     Angle.D = 100 ; //130   

    
  //P参数修正
   switch (Spd_Switch)
     {
      case 1: { }  break;
 
      case 2: { }  break;

      case 3: { }  break;
      
      case 4: { }  break;
  
      default:     break;
     }

   //左右不对称修正
  if(Error < 0)
    Angle.P *= 1.06;
  else
    Angle.P *= 1.05;
    
   //速度对打角的修正系数
    float Coeff;
     Coeff = 0.15*( (Spd.feedback - Spd_DownLimit ) / ((Spd_UpLimit-Spd_DownLimit)) );     
    if(Coeff >  0.10)     Coeff =  0.10;
    if(Coeff < -0.05)     Coeff = -0.05;
    Angle.P *= (1.0 + Coeff) ; 
   
   //直道超车前车快速打角
   if(Case2_Ahead_KeepSide!=0 || Case2_Behind_KeepSide!=0)       Angle.P *= 0.7;
   if(Case2_Ahead_KeepSide!=0 && Turn_Around==0 && Error>0)      Angle.P *= 0.5;

   
  //P限幅
  if(Angle.P > 40)      Angle.P = 40;
  

  
  //位置式PD
  Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);   
  
  
//限幅保护  
  if(Angle.RudderPWM > Rudder_Max)
    Angle.RudderPWM = Rudder_Max;
  else if(Angle.RudderPWM < Rudder_Min)
    Angle.RudderPWM = Rudder_Min;
  
  //Angle.RudderPWM = xy;
  LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
}


/***********老二舵机控制************/
void Younger_Rudder_Ctrl()
{        
  Rudder_Err = 800;
  Rudder_Mid = 6040; //4655
  
  //坡道舵机修正
  if(Flag_Ramp==1 && RampIn_Distance>=150*100)
    Rudder_Err *= 0.6;  
  
  //环岛内舵机打较修正
  if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
    Rudder_Err *= 0.90;  
  
  if(OverTake_Island != 0)
    if(Turn_Around == 0)
      { 
        if(Flag_Island_Confirm != 0)
            Rudder_Err *= 1.5;  
      }
  
  Rudder_Min = Rudder_Mid - Rudder_Err; 
  Rudder_Max = Rudder_Mid + Rudder_Err;
  Rudder_Init = Rudder_Mid;
  
  //PID变量赋值  
  if(EnterStrai_SumDis != 0)
     Angle.error = 0.3*Error + 0.7*Angle.error;
  else
     Angle.error = Error;
  
  Angle.drror = Angle.error - Angle.pre_error[8];
  if(Angle.drror >  4)       Angle.drror =  4;
  if(Angle.drror < -4)       Angle.drror = -4;
  
  
  //变化率限幅
  if(Angle.error-Angle.pre_error[9]>8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
     Angle.error = Angle.pre_error[9]+8;
  else if(Angle.error-Angle.pre_error[9]<-8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
     Angle.error = Angle.pre_error[9]-8;

  if(Angle.error > Error_Limit)
     Angle.error = Error_Limit;
  if(Angle.error < -Error_Limit)
     Angle.error = -Error_Limit;
  
  
  //变量更新  
  for(uint8 i=0; i<9; i++)
     Angle.pre_error[i] = Angle.pre_error[i+1];
  Angle.pre_error[9] = Angle.error;
  

  //舵机PD参数设置  
  float ramp_Rate1, ramp_Rate2,Start_P;
  Start_P = 25 ;
  ramp_Rate1 = 0.05 ;
  ramp_Rate2 = 0.05 ;
  
  if (fabs(Error) < 8)
    Angle.P = Start_P;
  else if(fabs(Error) < 20)
    Angle.P = Start_P + ramp_Rate1*(fabs(Error) - 8);
  else
    Angle.P = (Start_P + ramp_Rate1*12) + ramp_Rate2*(fabs(Error) - 20);//25 0.4

  
  //环岛超车前车舵机打较修正
  if(OverTake_Island != 0)
    if(Turn_Around == 0)
      {
          if(Flag_Island_Confirm!=0)
            Rudder_Err *= 1.4;      
          if( final!=0 || Case1_TurnSwitch_Dis != 0)
            {
              Rudder_Err *= 0.7;     
              Island_Distance = Limit_Distance_EnterIsland*100;
            } 
      }
  
  
  if(EnterStrai_SumDis != 0)
     Angle.D =  100 ; // 80
  else
     Angle.D = 100 ; //130   

    
  //P参数修正
   switch (Spd_Switch)
     {
      case 1:
        { }
        break;
 
     case 2:
        { }
        break;
        
      case 3:
        { }
       break;
        
      case 4:
        { }
       break;
        
      default:
        break;
     }

   //左右不对称修正
  if(Error < 0)
    Angle.P *= 1.06;
  else
    Angle.P *= 1.06;
    
   //速度对打角的修正系数
    float Coeff;
     Coeff = 0.15*( (Spd.feedback - Spd_DownLimit ) / ((Spd_UpLimit-Spd_DownLimit)) );     
    if(Coeff >  0.10)     Coeff =  0.10;
    if(Coeff < -0.05)     Coeff = -0.05;
    Angle.P *= (1.0 + Coeff) ; 

    //超车时修正
   if(Case2_Ahead_KeepSide!=0 || Case2_Behind_KeepSide!=0)       Angle.P *= 0.7;
   if(Case2_Ahead_KeepSide!=0 && Turn_Around==0 && Error>0)      Angle.P *= 0.4;
   
  //P限幅
  if(Angle.P > 40)      Angle.P = 40;
  

  
  //位置式PD
  Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);   
  
  
//限幅保护  
  if(Angle.RudderPWM > Rudder_Max)
    Angle.RudderPWM = Rudder_Max;
  else if(Angle.RudderPWM < Rudder_Min)
    Angle.RudderPWM = Rudder_Min;
  
//Angle.RudderPWM = xy;
  LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
}

