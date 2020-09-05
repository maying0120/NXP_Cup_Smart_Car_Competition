#include "Includes.h"


int  Limit_Distance_EnterCurve  = 100; 
int  Spd_UpLimit                = 230; 
int  Spd_DownLimit              = 200; 
int  Limit_Distance_EnterStrai  = 100; 
int  Spd_Straight               = 260;

int Limit_Distance_EnterIsland  = 180; 
int Island_Spd_UpLimit          = 200; 
int Island_Spd_DownLimit        = 150;

uint8  Flag_Follow = 0;
uint8  Behind_LeaveIsland_ChaseFlag;
int    Derivative_Error = 0;
int    Island_Distance = 0;
int    EnterCurve_SumDis = 0;
int    EnterStrai_SumDis = 11000;
int    EnterStrai_SumDis_Last = 0;
int    Spd_Set_ZeroStart_Dis = 0;
int    Case1_TurnSwitch_Dis;
int    Grid_Distance;
int    Chase_Distance_Last, Chase_Distance_Last2, Chase_Distance_Last3;
int    Grid_Error;
int    Grid_Error_Last;
int    Grid_Error_Last2;
int    Grid_Error_Last3;
int    Ud, Ud_error, Ud_Last;
int    Mixed_Error, Mixed_Error_Last, Mixed_Drror;
int    Target,Feedback;
float  percent_ahead = 1.0;
float  percent_behind = 1.0;
struct Speed Spd;
extern uint8 Case1_AheadLeave_Wait;
extern uint8 OverTake;
extern uint8 Case1_Behind_IslandStop;
extern uint8 Case1_Behind_IslandFollow;
extern uint8 Flag_Island_Position;
extern uint8 Turn_Around;
extern uint8 Family_Status;
extern uint8 Spd_Set_ZeroStart;
extern uint8 Flag_Island;
extern uint8 Flag_Ramp;
extern uint8 Flag_Stop;
extern uint8 Turn_Around;
extern uint8 final;
extern uint8 final_Last;
extern uint8 Flag_Island;
extern uint8 Flag_Island_Last;
extern uint8 Single_Run;
extern uint8 OverTake_Island;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;
extern uint8 Case2_Behind_KeepSide;
extern uint8 SendCommand;
extern long int IslandIn_Distance;
extern long int IslandAdmit_Distance;
extern long int Sum_Distance;
extern int IslandAdmit_Distance_Last; 
extern int Mixed_Distance;
extern int Stop_Distance;
extern int Behind_SpdDwn_EnterIslDis;
extern int Rudder_Mid;
extern int Pre_Error[];
extern int peak[];
extern int Error;
extern int Distance;
extern int RampIn_Distance;
extern int Flag_Island_Confirm;
extern int Flag_Island_Confirm_Last;
extern int Count;
extern int Island_Distance;
extern uint8 Spd_Switch;
extern uint8 AheadStop_BehindAccel;
extern struct Rudder Angle;
extern int final_Distance;


/*
Function�������ٶ�����
Return��Null
*/
void Basic_Spd_Set(void)
{
     EnterStrai_SumDis_Last = EnterStrai_SumDis;
   
   //--------------·���жϻ�׼---------------//
     if(Grid_Distance >= 5*100)
        {
           Grid_Error_Last3 = Grid_Error_Last2;
           Grid_Error_Last2 = Grid_Error_Last;
           Grid_Error_Last = Grid_Error;       
           Grid_Error = Error;
           Grid_Distance = 0;
        }
      else 
         Grid_Distance += Distance;

      Derivative_Error = (int) fabs( fabs(Grid_Error+Grid_Error_Last) - fabs(Grid_Error_Last2+Grid_Error_Last3) );
      if(Derivative_Error > 10)
         Derivative_Error = 10;

    
    //---------------------------�����ٶ�--------------------------// 
      //---ֱ������
      if(EnterStrai_SumDis != 0)
        {
          if(fabs(Error) > 9)
            { 
               EnterStrai_SumDis = Pulse_Distance*100;
            }
          if(fabs(Error) > 15)
            { 
               EnterStrai_SumDis = 0;
               EnterCurve_SumDis = Pulse_Distance*100;
            }        
        }
      
      
      //---�������
      if(EnterCurve_SumDis == (190+Pulse_Distance)*100)
        if(Derivative_Error>=5 && fabs(Error)-fabs(Pre_Error[ErrorNum-2])>0 && fabs(Error)>8)
           EnterCurve_SumDis = Pulse_Distance*100;
      
      //---������پ���
      if(EnterCurve_SumDis != 0)
          EnterCurve_SumDis += Distance;
      
      if(EnterCurve_SumDis > (Limit_Distance_EnterCurve+Pulse_Distance)*100 )
          EnterCurve_SumDis = (Limit_Distance_EnterCurve+Pulse_Distance)*100; 
      
      
      //---�����ٶ��趨
      Spd.target = (int) (     Spd_DownLimit 
                            + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
                            * (Spd_UpLimit - Spd_DownLimit)  );  
      
      if(EnterCurve_SumDis != 0)
          {
              switch (Spd_Switch)
                 {
                    case 1:
                          Spd.target = (int) (     Spd_DownLimit 
                                                + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
                                                * (Spd_UpLimit - Spd_DownLimit)  );  
                     break;
                     
                    case 2:
                          Spd.target = (int) (     Spd_DownLimit+10 
                                                + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
                                                * (Spd_UpLimit - Spd_DownLimit)*1.3  );  
                      break;
                      
                    case 3:
                          Spd.target = (int) (     Spd_DownLimit+15
                                                + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
                                                * (Spd_UpLimit - Spd_DownLimit)*1.8  );  
                      break;
                      
                    case 4:
                          Spd.target = (int) (     Spd_DownLimit+20 
                                                + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
                                                * (Spd_UpLimit - Spd_DownLimit)*2.2  );  
                      break;
                      
                    default:
                      break;
                 }       
          }
         
    
    //--------------------------ֱ���ٶ�-------------------------------//
      //---ֱ���ж�
      if(    AveError_Straight<=5 && fabs(Error)<=5
          && Flag_Island_Confirm==0 && Flag_Island==0 && final==0)
        {   
            if(EnterStrai_SumDis == 0)
               EnterStrai_SumDis = Pulse_Distance*100;          
        }      
   
      //---ֱ�����پ���
      if(EnterStrai_SumDis != 0)
        EnterStrai_SumDis += Distance;
      
      if(EnterStrai_SumDis > (Limit_Distance_EnterStrai+Pulse_Distance)*100)
        EnterStrai_SumDis = (Limit_Distance_EnterStrai+Pulse_Distance)*100;
        
      //---ֱ���ٶ�   
      switch (Spd_Switch)
       {
          case 1:
            Spd_Straight = 240;
           break;
           
          case 2:
             Spd_Straight = 260;
            break;
            
          case 3:
             Spd_Straight = 270;
            break;
            
          case 4:
             Spd_Straight = 280;
            break;
            
          default:
            break;
       }  
      
      if(EnterStrai_SumDis != 0)    
         Spd.target = (int)(Spd_UpLimit + ( Spd_Straight-Spd_UpLimit)
                                       *( (EnterStrai_SumDis-Pulse_Distance*100)
                                         /(Limit_Distance_EnterStrai*100.0) )  );

    
      
    //-------------------------�����ٶ�--------------------------//
       //---�������
       if(Flag_Island_Confirm==0 && final_Distance==0)
         if(peak[2]>Peak2_Island_Limit || peak[1]>Peak13_Island_Limit|| peak[3]>Peak13_Island_Limit)
            Island_Distance = 0;
          
      //---��������
      if(Island_Distance!=0 && Flag_Island==1)
         Island_Distance += Distance;
      if(Island_Distance > Limit_Distance_EnterIsland*100)
         Island_Distance = Limit_Distance_EnterIsland*100;
      
      //---�����ٶ�
      if(Island_Distance != 0)
         Spd.target = Island_Spd_DownLimit + (Island_Spd_UpLimit-Island_Spd_DownLimit)*Island_Distance/(Limit_Distance_EnterIsland*100.0);     
}


/*
Function��ǰ���ٶ�����
Return��Null
*/
void Ahead_Spd_Set()
{
  /********************����·���ٶ�***********************/  
  Basic_Spd_Set();
  
  /********************ǰ��׷���ٶ�***********************/
    if(Count%10 == 0)
      {  
         float percent_ahead_P, percent_ahead_D;
         int Chase_Distance;
         
          Chase_Distance = Mixed_Distance + 30 - 10*Spd_Switch;           
         
         //˫�������������
         if(Chase_Distance >= 200) 
            percent_ahead_P = 0.90;       
         else if(Chase_Distance > 150)  
            percent_ahead_P = 1.0 - 0.10*((Chase_Distance-150)/50.0);
         else if(Chase_Distance > 100)  
            percent_ahead_P = 1.05 - 0.05*(Chase_Distance-100)/50.0;
         else  
            percent_ahead_P = 1.05;

         if(percent_ahead_P > 1.05)    percent_ahead_P = 1.05;
         if(percent_ahead_P < 0.9)     percent_ahead_P = 0.9;         

         
         //˫������΢��D����
         percent_ahead_D = (Chase_Distance_Last2 - Chase_Distance)/20.0; //10��������˫��λ�Ʋ�����޷���20cm��
         if(percent_ahead_D > 1)       percent_ahead_D = 1;
         if(percent_ahead_D < -1)       percent_ahead_D = -1;       
        
         Chase_Distance_Last3 = Chase_Distance_Last2;
         Chase_Distance_Last2 = Chase_Distance_Last;
         Chase_Distance_Last = Chase_Distance;

         //˫��������� + ΢�ֿ���
         percent_ahead = percent_ahead_P + 0.15*percent_ahead_D;           
         if(percent_ahead > 1.05)    percent_ahead = 1.05;
         if(percent_ahead < 0.9)    percent_ahead = 0.9;
       }
    
  if(OverTake_Island != No)
    if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
      percent_ahead = 1;
    
    //˫����������£����ƾ���
    if(Single_Run == No)
      if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0 && Case2_Ahead_KeepSide==0)
         Spd.target *= percent_ahead; 
  
    
  /********************����ʱ�ٶ�����********************/   
    //-----Case1������������:ǰ���ٶ�------//
    if(OverTake_Island != No)
      { 
         if(Turn_Around == 0)
           if(Case1_AheadLeave_Wait==1 && Mixed_Distance>200)
              Spd.target = 80 - Family_Status*20;
      }
    
    
    //-----Case2��ֱ��������:ǰ���ٶ�------//
    if(OverTake_Straight == Yes)
      {
        //ǰ���ٶ�����
        if(Case2_Ahead_KeepSide == 1)
          {
            float SumDis_Correct;
            SumDis_Correct = Sum_Distance/10000.0;
            
            if(Sum_Distance/100<80 && Spd.target!=0)
                Spd.target = (int)170*(0.4444*SumDis_Correct*SumDis_Correct + 1);
            else 
                Spd.target = 0;
          }        
      }
  
  
  /*********************����·���ٶ�*********************/ 
    //----�µ��ٶ�----//
    if(Flag_Ramp != 0)
       Spd.target = (int) ( Spd_Ramp*( 1.2 - 0.2*RampIn_Distance/(RampIn_Dis*100.0) ) );
      

 /***********************�����ȴ�************************/
    if(Count < 100)
       Spd.target = 0;  
    
 /***********************ͣ��*************************/   
    if(Stop_Distance > 140*100) 
      {
        Spd.target = 0;
        SendCommand = Ahead_Stop_Unexpected;
      }
}


/*
Function�����ٶ�����
Return��Null
*/
void Behind_Spd_Set()
{ 
  /*********************�����ٶ�***********************/  
    Basic_Spd_Set();  
   
  /*********************׷���ٶ�***********************/
    if(Count%10==0)
      {  
         float percent_behind_P,percent_behind_D;
         int Chase_Distance;
           
         Chase_Distance = Mixed_Distance+20;   

         //˫���������P����
         if(Chase_Distance > 200) 
            percent_behind_P = 1.05;
         else if(Chase_Distance > 150)  
            percent_behind_P = 1.0 + 0.05*(Chase_Distance-150)/50.0;
         else if(Chase_Distance > 100)  
            percent_behind_P = 0.90 + 0.10*(Chase_Distance-100)/50.0;
         else  
            percent_behind_P = 0.90;
         
         if(percent_behind_P > 1.05)    percent_behind_P = 1.05;
         if(percent_behind_P < 0.9)    percent_behind_P = 0.9;         
   
         //˫������΢��D����
         percent_behind_D = (Chase_Distance - Chase_Distance_Last2)/20.0; //10��������˫��λ�Ʋ�����޷���20cm��
         if(percent_behind_D > 1)       percent_behind_D = 1;
         if(percent_behind_D < -1)       percent_behind_D = -1;       
        
         Chase_Distance_Last3 = Chase_Distance_Last2;
         Chase_Distance_Last2 = Chase_Distance_Last;
         Chase_Distance_Last = Chase_Distance;

         //˫���������΢��PD����
         percent_behind = percent_behind_P + 0.15*percent_behind_D; 
         if(percent_behind > 1.05)     percent_behind = 1.05;
         if(percent_behind < 0.9)     percent_behind = 0.9;       
      }

  if(OverTake_Island != No)
    if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
      percent_behind = 1;
  
  //˫����������£����ƾ���
  if(Single_Run == No)
      Spd.target *= percent_behind; 
  
  /****************--����ʱ�ٶ�����********************/
     //---Case1���������������󳵵��ٶ�����--//
     if(Single_Run == No)
       {
         if(OverTake_Island != No)
           {
              //--������������£��󳵵ȴ�--// 
              if(Flag_Follow == 1)             
                {
                   Flag_Follow = 0;
                   Case1_Behind_IslandStop = 0;
                }
             
              //--������������£���ͣ��--//
              if(Case1_Behind_IslandStop == 1) 
                 Spd.target = 0;   
           }
       }
   
    //----Case2��ֱ�������������ٶ�����----//
    if(OverTake_Straight == Yes)
     {
       //���ٶ�����
       if(Case2_Behind_KeepSide == 1)
            Spd.target = 200;
     }

    
  /********************����·���ٶ�********************/        
  //----���µ��ٶ�----//
  if(Flag_Ramp != 0)
     Spd.target = (int)(Spd_Ramp*( 1.3 - 0.3*RampIn_Distance/(RampIn_Dis*100.0) )*percent_behind);
  
   
  /*********************�����ȴ�***********************/
    if(Count < 100)
      Spd.target = 0;
    
  /***********************ͣ��*************************/
    if(Stop_Distance != 0) 
      Spd.target = 0;
    
    if(AheadStop_BehindAccel==1 && EnterStrai_SumDis!=0)
      Spd.target *= 1.6;
} 


          