#include "Includes.h"

extern float percent_ahead;
extern float percent_behind;
extern uint8  trend;
extern uint8  Flag_Follow;
extern uint8  OverTake;
extern uint8  Family_Status;
extern uint8  Case1_Behind_IslandStop;
extern uint8  Flag_Island;
extern uint8  Flag_Ramp;
extern uint8  Flag_Stop;
extern uint8  Turn_Around;
extern uint8  final;
extern uint8  final_Last;
extern uint8  Flag_Island;
extern uint8  Flag_Island_Last;
extern uint8 Spd_Switch;
extern uint8 Case2_Ahead_KeepSide; 
extern long int IslandIn_Distance;
extern int Mixed_Distance;
extern int Derivative_Error;
extern int EnterCurve_SumDis;
extern int EnterStrai_SumDis;
extern int EnterStrai_SumDis_Last;
extern int TurnSwitch_Distance;
extern int Grid_Distance;
extern int Grid_Error;
extern int Grid_Error_Last;
extern int Grid_Error_Last2;
extern int Grid_Error_Last3;
extern int Ud,Ud_error,Ud_Last;
extern int Rudder_Mid;
extern int Pre_Error[];
extern int peak[];
extern int Error;
extern int Distance;
extern int Flag_Island_Confirm;
extern int Flag_Island_Confirm_Last;
extern long int IslandAdmit_Distance; 
extern int IslandAdmit_Distance_Last; 
extern long int Sum_Distance;
extern int Stop_Distance;
extern int Count;
extern uint8 OverTake_CrossRoad;
extern uint8 Case3_Ahead_Stop;
extern uint8 Case3_Behind_Pass;
extern uint8 AheadStop_BehindAccel;
extern struct Rudder Angle;
extern struct Speed Spd;

float Kq=0.1, Kd1=30, Kd2=40;

/*
Function���ϴ�PIDT
Return��Null
*/
void Elder_Spd_Ctrl()
{
  //��������
  Spd.error = Spd.target - Spd.feedback;
  Spd.drror = Spd.error - Spd.error_last;
  Spd.tag_error = (int)(Spd.target-Spd.preTarget[7]);
  
  
  Ud = (int)(Kq*Ud + (1-Kq)*Spd.error + Kq*Kd1*Spd.drror);  
  if(Ud > 250)   Ud = 250;
  else if(Ud < -250)  Ud = -250; 
  
  Ud_error = Ud - Ud_Last;
  Ud_Last = Ud;
  
  for(int i=0; i<9; i++)
     Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
  Spd.pre_feedback[9] = Spd.feedback;
  for(int i=0; i<9; i++)
     Spd.preTarget[i] = Spd.preTarget[i+1];
  
  Spd.preTarget[9] = Spd.target;
  Spd.error_last = Spd.error;
 
  //PID
  float P_Max=30,P_Min=12;
  Spd.P = P_Min + ((P_Max-P_Min)*Spd.error)/130;
  if(Spd.P > P_Max)      Spd.P = P_Max;  
  if(Spd.P < P_Min)      Spd.P = P_Min;  
  
  Spd.P = 18;
  Spd.I = 4;
  
  //ֱ������������
  if(Case2_Ahead_KeepSide == 1)
    {
      Spd.P = 30;
      Spd.I = 10;    
    }
  
  //�ͼ���
  if(Spd.target == 0)
    {
      Spd.P = 10;
      Spd.I = 3;    
    }

    if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0 || AheadStop_BehindAccel==1)
    {
      Spd.P = 40;
      Spd.I = 5;      
    }

  Spd.MotorPWM += Spd.I*Ud + Spd.P*Ud_error + Spd.T*Spd.tag_error;;
  
   //����޷�        
  if(AheadStop_BehindAccel == 1)
    {
       if(Spd.MotorPWM > 9000)
         Spd.MotorPWM = 9000;
       else if(Spd.MotorPWM<-9900 )
         Spd.MotorPWM = -9900;  
    }
  else
    {
       if(Spd.MotorPWM > 7000)
         Spd.MotorPWM = 7000;
       else if(Spd.MotorPWM<-7000 )
         Spd.MotorPWM = -7000;  
    }
}


/*
Function���϶�PIDT
Return��Null
*/
void Younger_Spd_Ctrl()
{    
  //��������
  Spd.error = Spd.target - Spd.feedback;
  Spd.drror = Spd.error - Spd.error_last;
  Spd.tag_error = (int)(Spd.target-Spd.preTarget[2]);
  
  Ud = (int)(Kq*Ud + (1-Kq)*Spd.error + Kq*Kd2*Spd.drror);  
  if(Ud > 250)   Ud = 250;
  else if(Ud < -250)  Ud = -250; 
  
  Ud_error = Ud - Ud_Last;
  Ud_Last = Ud;
  
  for(int i=0; i<9; i++)
     Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
  Spd.pre_feedback[9] = Spd.feedback;
  for(int i=0; i<9; i++)
     Spd.preTarget[i] = Spd.preTarget[i+1];
  
  Spd.preTarget[9] = Spd.target;
  Spd.error_last = Spd.error;
 
  //PID
  Spd.P = 15;
  Spd.I = 5;
  Spd.T = 0;
  
  if(Spd.error < 0)
      Spd.P *= 1.2;
  
  //ֱ������������
  if(Case2_Ahead_KeepSide == 1)
    {
      Spd.P = 30;
      Spd.I = 10;    
    }
  
  //ͣ���ͼ���
  if(Spd.target == 0)
    {
      Spd.P = 10;
      Spd.I = 3;    
    }
    
  //�����ͼ���
  if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0 || AheadStop_BehindAccel==1)
    {
      Spd.P = 50;
      Spd.I = 3;      
    }
  
  Spd.MotorPWM += Spd.I*Ud + Spd.P*Ud_error + Spd.T*Spd.tag_error;
  
  
   //����޷�         
  if(AheadStop_BehindAccel == 1)
    {
       if(Spd.MotorPWM > 9000)
         Spd.MotorPWM = 9000;
       else if(Spd.MotorPWM<-9900 )
         Spd.MotorPWM = -9900;  
    }
  else
    {
       if(Spd.MotorPWM > 6000)
         Spd.MotorPWM = 6000;
       else if(Spd.MotorPWM<-7000 )
         Spd.MotorPWM = -7000;  
    }
}


/*
Function��output the PWM
Return��Null
*/
void Motor_Output()
{
  if( Spd.target==0 && Spd.feedback<(30-20*(Family_Status)) ) 
      if(Spd.MotorPWM < 0) 
           Spd.MotorPWM = 0;  
    
   if(Spd.MotorPWM > 0)
    { 
       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, Spd.MotorPWM );    
    }
   else
    {
       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (int)(fabs(Spd.MotorPWM)));
       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);    
    }
}


/*
Function��Sample the speed
Return��Null
*/
void Spd_Get()
{  
  Spd.feedback = LPLD_FTM_GetCounter(FTM1); 
  
  if(Spd.feedback<40000 && Spd.feedback >= 0)
     Spd.feedback = -Spd.feedback;
  else if(Spd.feedback>40000 && Spd.feedback<65536)
     Spd.feedback = 65535 - LPLD_FTM_GetCounter(FTM1); 
  
  if( fabs(Spd.feedback-Spd.feedback_last) > 10000)
    Spd.feedback = Spd.feedback_last;   
  Spd.feedback_last = Spd.feedback;  

  Spd.feedback /= Measuring_Scale;  
    
  //��ײͣ��
//  if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
//    if(Sum_Distance > 1000*100)
//      if(Spd.feedback <= 10)
//        Stop_Distance = 300*100;
//
  Spd_Filter();
  
  LPLD_FTM_ClearCounter(FTM1);     
}


/*
function��filter the Spd.feedback
return��Null
*/
float  k;            //k��ʾ���������棬KֵԽ���ʾ�˴�Ԥ��ֵԽ�ӽ��ڲ���ֵ��ԽС��ʾԽ�ӽ�����һ�ε�Ԥ��ֵ
float  p = 0;        //Pֵ��С�ɱ�ʾ�����ٶȣ�Խ������Խ��
float  Q = 0.05;     //Q��R�����˶�Ԥ�����ݵ����ζȣ�QԽ����Խ���Ų���ֵ��RԽ����Խ����Ԥ��ֵ 
float  R = 2.5;      //�о�����Q̫��Ļ���ʱС���Ӳ������࣬R̫��ͻ����ͺ�                     
void Spd_Filter()
{
   p = p+Q;        
   k = p/(p+R);    
   Spd.filter = (int) ( Spd.filter + k*(Spd.feedback - Spd.filter) );  
   p = (1-k)*p;   
   Spd.feedback = Spd.filter;
}