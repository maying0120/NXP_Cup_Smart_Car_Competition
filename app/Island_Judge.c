#include "Includes.h"

uint8 Flag_Island_Position = 0;
uint8 final = 0;
uint8 step3_biaozhi;
uint8 Case1_Behind_IslandFollow = 0;
uint8 Case1_Behind_IslandStop = 0;
uint8 Dir_IslandTurn = 0;
uint8 Case1_AheadLeave_Wait = 0;
uint8 Case1_OverTake_Num = 1;
uint8 Island_Error_Turn = 0;
uint8 CrossRoad_Num = 0;
uint8 Flag_Island_Confirm_Dir = 0;
float Ave_absError;
int Case1_AheadLeave_Dis = 0;
int Ahead_TurnError;
int Ms100_Distance;
int EncoderDis_Ahead;
int EncoderDis_Behind;
int final_Distance = 0;
int Distance;
int CrossRoad_Distance;
int CrossRoadGap_Dis;
int Pre_Distance[100];
long int Sum_Distance;
long int Behind_EnterRamp_AdmitDis;
long int IslandAdmit_Distance = 0;     //后车可以识别环岛的距离
long int IslandAdmit_Distance_Last = 0;
long int IslandGap_Distance = 0;       //识别两个环岛之间的最短距离
long int IslandIn_Distance;            //后车在环岛内等待的距离
int Flag_Island_Confirm = 0;
int Flag_Island_Confirm_Last = 0;
int trendSum_Peak1[2];
int trendSum_Peak2[2];
int trendSum_Peak3[2];
int trendSum_Peak7[2];
int Pre_Peak1[6];
int Pre_Peak2[6];
int Pre_Peak3[6];
int Pre_Peak7[6];
extern uint8 SendCommand;
extern uint8 Flag_Ramp;
extern uint8 Turn_Around;
extern uint8 Flag_Island;
extern uint8 Flag_Island_Last;
extern uint8 Family_Status;
extern uint8 Spd_Set_ZeroStart;
extern uint8 Stop_Behind;
extern uint8 Flag_Turn;
extern uint8 final_Last;
extern uint8 Single_Run;
extern uint8 Spd_Switch;
extern uint8 OverTake_Island;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;  
extern uint8 Case2_Behind_KeepSide;
extern uint8 OverTake_CrossRoad;
extern uint8 Case3_Ahead_Stop;
extern uint8 Case3_Behind_Pass;
extern uint8 Case3_Turn;
extern uint8 Ahead_LeaveIsland_WaitFlag;
extern uint8 Behind_LeaveIsland_ChaseFlag;
extern int peak[];
extern int RampIn_Distance;
extern int EnterStrai_SumDis;
extern int Case3_Behind_PassDis;
extern int RampAdmit_Distance;
extern int   EnterCurve_SumDis;
extern int Case1_TurnSwitch_Dis;
extern int Mixed_Distance;
extern int Pre_Error[];
extern int Error;
extern int Count;
extern int Stop_Distance;
extern int Island_Distance;
extern int Grid_Error_Last;
extern int Grid_Error_Last2;
extern int Grid_Error_Last3;
extern float percent_ahead;
extern float percent_behind;
extern struct Speed Spd;


void Island_Handle()
{ 
  //------------数据更新-------------//
  Flag_Island_Confirm_Last = Flag_Island_Confirm;
  final_Last = final;
  Flag_Island_Last = Flag_Island;
  
/******************各种距离*******************/  
  Calcu_AllDis();
   
/****************环岛处理部分******************/     
  //--进环岛--//
  Enter_Island();
  
  //--允许超车的前提下，切换前后车--//
  if(OverTake_Island != No)              
    TurnSwitch_InIsland();
  
  //--出环岛--//
  Leave_Island();
         
/****************LED标志信号*******************/    
  Led_Show();
}



/*
Function: 计算各种Distance
Return: Null
*/
void Calcu_AllDis(void)
{
  //一个pit内小车行进的距离
  Distance = Spd.feedback;
  if(Distance > 4*100)    Distance = 4*100;    
 
  Sum_Distance += Distance;
  
  //停车距离
    if(Stop_Distance != 0)
      Stop_Distance += Distance;
    
  
  //进入环岛前40cm需要直线行驶
  for(uint8 i=0; i<ErrorNum-1; i++)
     Pre_Distance[i] = Pre_Distance[i+1];
  Pre_Distance[ErrorNum-1] = Distance;
  Ave_absError = Ave_absError_Calcu(40);
   
  //允许识别两个环岛的最小距离
  if(IslandGap_Distance != 0)
     IslandGap_Distance += Distance;
  if(IslandGap_Distance > IslandGap_MinDis*100)
     IslandGap_Distance = 0;
  
  //进出环岛之间的最小距离     
  if(IslandIn_Distance != 0) 
      IslandIn_Distance += Distance;  
  
  
  //触发环岛、确认环岛之间的缓冲距离
  if(Flag_Island_Confirm != 0)
     Flag_Island_Confirm += Distance;
  
  //十字判断
  if(peak[2]>80) 
    if(   (peak[0]>Peak04_Cross_Limit||peak[4]>Peak04_Cross_Limit) && (peak[0]+peak[4]>Peak04_Cross_SumLimit) 
        && RampIn_Distance==0)
       CrossRoad_Distance = Pulse_Distance*100;
  
  if(CrossRoad_Distance != 0)
    CrossRoad_Distance += Distance;
  if(CrossRoad_Distance > CrossRoad_MinDis*100)
    CrossRoad_Distance = 0;
  
  //100ms内运动距离
  Ms100_Distance += Distance;
  if(Count%10 == 0)
    {
      if(Ms100_Distance < 0)
        Ms100_Distance = 0;
      if(Ms100_Distance > 40*100)
        Ms100_Distance = 40*100;
          
      if(Turn_Around == 0)
         EncoderDis_Ahead = Ms100_Distance/100;
      else
         EncoderDis_Behind = Ms100_Distance/100;
      
       Ms100_Distance = 0;
    }
       
  //后车允许进入环岛的距离
  IslandAdmit_Distance_Last = IslandAdmit_Distance;
  if(IslandAdmit_Distance != 0)
    {
       IslandAdmit_Distance -= Distance;
      if(IslandAdmit_Distance < 0)
         IslandAdmit_Distance = 0;
    } 
  
  //后车允许进入坡道的距离
  if(Behind_EnterRamp_AdmitDis != 0)
     Behind_EnterRamp_AdmitDis -= Distance;
  if(Behind_EnterRamp_AdmitDis < 0)
     Behind_EnterRamp_AdmitDis = 0;
  
      
  //前后车切换的确认距离
  if(Case1_TurnSwitch_Dis != 0)
     Case1_TurnSwitch_Dis += Distance;
  
  //Case1(超车)情况下，前车出环岛的距离
  if(Case1_AheadLeave_Dis != 0)
     Case1_AheadLeave_Dis += Distance;
  
  //环岛第二步距离
    if(final_Distance != 0)
     final_Distance += Distance;
}


/*
function：进环岛的条件判断
return：null
*/
void Enter_Island()
{
  //Flag_Island_Confirm = 0;
  /****************
  环岛第一步*****************/
  if((
  //--------------正入环岛识别----------------//        
      (  peak[2]>45
      && peak[2]<85  
      && peak[7]>82   
      && fabs(peak[1]-peak[3])<35
      && fabs(peak[0]-peak[4])<=35
      && peak[0]>=20
      && peak[0]<=60
      && peak[4]>=20 
      && peak[4]<=60 
      && peak[1]<70
      && peak[3]<70      
      && peak[1]>35
      && peak[3]>35  )  
   //--------------斜入环岛识别---------------//      
      || (peak[4]>40
      && peak[0]<35    
      && peak[3]<60
      && peak[1]<90        
      && peak[3]>25
      && peak[1]>30        
      && peak[6]<peak[5]
      && peak[3]<peak[1]
      && peak[5]>30
      && peak[2]<70
      && peak[7]<95
      && peak[7]>60)  
     
      || (peak[0]>40
      && peak[4]<35    
      && peak[1]<60
      && peak[3]<90        
      && peak[1]>25
      && peak[3]>30        
      && peak[5]<peak[6]
      && peak[1]<peak[3]
      && peak[6]>30
      && peak[2]<70
      && peak[7]<95
      && peak[7]>60)  )
     
      && Flag_Ramp==0
      && Flag_Island_Confirm==0 
      && final==0
      && Flag_Island==0
      && IslandGap_Distance==0 
     )
      {
       /************环岛进入姿态判断*********/
        
         /* 后车进入环岛的条件：--|__Case1(环岛超车方案):前车进入环岛后，后车在一段距离内允许识别*/
         if(   ( Turn_Around==1 && (IslandAdmit_Distance!=0) ) 
             ||  Turn_Around==0  )
              Flag_Island_Confirm = Confirm_First*100;
          
          IslandGap_Distance = (IslandGap_MinDis - 80)*100;
          IslandAdmit_Distance = 0;
          Island_Distance = Pulse_Distance*100;
          
          //前车识别环岛后的一段距离以内，后车可以识别环岛
          if(Turn_Around == 0)
            {
              SendCommand = Admit_EnterIsland;
              Dir_IslandTurn = 0;
              if(Error < 0)
                Ahead_TurnError = -1;
              else 
                Ahead_TurnError = 1;
            }

          
         if(Turn_Around == 0)
           {
               if(Error > 0)
                 Flag_Island_Confirm_Dir = Turn_Left;
               else
                 Flag_Island_Confirm_Dir = Turn_Right;                 
           }

          
          if(Flag_Island_Confirm != 0)
            {
                //后车出环岛加速
                if(Turn_Around == 1)
                  Behind_LeaveIsland_ChaseFlag = 1;            
            }

      }  

  
      //--------第二步前车的处理---------    
    if((Flag_Island_Confirm!=0||final_Distance!=0) && SendCommand==0)
      {
          if(Turn_Around == 0)
             {      
                 //--Case1（环岛超车）情况下，强制后车朝相反方向转--//
                 if(OverTake_Island != No)
                  {
                     if(Ahead_TurnError > 0) //前车距离累加值大于零，左转
                        Dir_IslandTurn = Turn_Left;
                     else                      //前车距离累加值小于零，右转 
                        Dir_IslandTurn = Turn_Right;    

                     if(Dir_IslandTurn == Turn_Right)   //前车右转
                           SendCommand = Turn_Left;    //令后车左转

                     else if(Dir_IslandTurn == Turn_Left) //前车左转
                           SendCommand = Turn_Right;   //令后车右转  
                  }
             
                 //--（环岛不超车）情况下，强制后车朝相同方向转--//
                 else
                  {
                     if(Ahead_TurnError > 0) //前车距离累加值大于零，左转
                        Dir_IslandTurn = Turn_Left;
                     else                      //前车距离累加值小于零，右转 
                        Dir_IslandTurn = Turn_Right;    

                     if(Dir_IslandTurn == Turn_Right)   //前车右转
                        SendCommand = Turn_Right;  //令后车右转

                     else if(Dir_IslandTurn == Turn_Left) //前车左转
                        SendCommand = Turn_Left;  //令后车左转                            
                  }
             }

      }

  
  /****************环岛第二步*****************/
  if(Flag_Island_Confirm > Confirm_Second*100)
    {
       //-----------第二步确认后的处理----------
       if(peak[2]<Peak2_Island_Limit && peak[1]<Peak13_Island_Limit && peak[3]<Peak13_Island_Limit)
          {  
             final = 1;  
             final_Distance = Pulse_Distance*100;
             Flag_Island_Confirm = 0;
             IslandGap_Distance = (IslandGap_MinDis - 80)*100;
                  
          }
       
       //清除第二步后的处理
       else
          {
             Ahead_TurnError = 0;
             Flag_Island_Confirm = 0;
             Island_Distance = 0;
          }
    }

  
     
  /****************环岛第三步*****************/
  for(uint8 i=0; i<5; i++)
    {
      Pre_Peak1[i] = Pre_Peak1[i+1];
      Pre_Peak2[i] = Pre_Peak2[i+1];
      Pre_Peak3[i] = Pre_Peak3[i+1];
      Pre_Peak7[i] = Pre_Peak7[i+1];      
    }
  
  Pre_Peak1[5] = peak[1]; 
  Pre_Peak2[5] = peak[2];
  Pre_Peak3[5] = peak[3]; 
  Pre_Peak7[5] = peak[7]; 
   
  trendSum_Peak2[1] = Pre_Peak2[4] + Pre_Peak2[5]; 
  trendSum_Peak2[0] = Pre_Peak2[2] + Pre_Peak2[3];
  trendSum_Peak1[1] = Pre_Peak1[4] + Pre_Peak1[5]; 
  trendSum_Peak1[0] = Pre_Peak1[2] + Pre_Peak1[3];
  trendSum_Peak3[1] = Pre_Peak3[4] + Pre_Peak3[5]; 
  trendSum_Peak3[0] = Pre_Peak3[2] + Pre_Peak3[3];
  trendSum_Peak7[1] = Pre_Peak7[4] + Pre_Peak7[5]; 
  trendSum_Peak7[0] = Pre_Peak7[2] + Pre_Peak7[3];
  
  if(final_Distance>Island_Third_Dis*100  && Flag_Island_Last==0)
  {
    //确认进入环岛后的处理
    if(    peak[0]<Peak04_Island_Limit && peak[4]<Peak04_Island_Limit
          && peak[1]<Peak13_Island_Limit && peak[3]<Peak13_Island_Limit  
          && peak[2]<Peak2_Island_Limit
        )
         {                    
                 Flag_Island_Confirm = 0;
                 final = 0;                  
                 final_Distance = 0;
                 Flag_Island = 1;
                 
                 IslandIn_Distance = Pulse_Distance*100;  
                 IslandGap_Distance = Pulse_Distance*100;
                 IslandAdmit_Distance = 0;
                 Flag_Island_Confirm_Dir = 0;
                 
                 Dir_IslandTurn = 0;
                 Ahead_TurnError = 0;
                 
         }
    //没有进入环岛的处理
    else
      {
                 Flag_Island_Confirm = 0;
                 final = 0;                  
                 final_Distance = 0;
                 IslandAdmit_Distance = 0;
                 
                 Dir_IslandTurn = 0;
                 Ahead_TurnError = 0;
                 Island_Distance = 0;
                 Flag_Island_Confirm_Dir = 0;
      }
  }
  
  /************环岛换提线************/ 
   if(Flag_Island_Confirm != 0)
       Island_Error_Turn = 1;
 
   if(Island_Error_Turn == 1 )
       if((( (peak[1]<=peak[3] && peak[5]<=peak[6]) || 
             (peak[1]>=peak[3] && peak[5]>=peak[6]))&&
             (peak[2]>40 && peak[2]<65))||
             (Flag_Island_Confirm == 0 && final == 0))
       Island_Error_Turn = 0;
}





/*
function：进入环岛后，前后车切换                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
return：null
*/
void TurnSwitch_InIsland()
{
   //--前后车切换准备--//
   if(Flag_Island==1 && Flag_Island_Last==0)
     { 
        IslandAdmit_Distance = 0;
        Case1_TurnSwitch_Dis = Pulse_Distance*100;           
     }
        
   //--前后车切换确认--//
   if(Case1_TurnSwitch_Dis > IslandWait_Distance*100)
     {
         //清掉停车距离
         Case1_TurnSwitch_Dis = 0;  
       
         //前车变后车
         if(Turn_Around == 0) 
           {
              Turn_Around = 1;
              Case1_Behind_IslandStop = 1;  
              Behind_LeaveIsland_ChaseFlag = 0;             
           }
         
        //后车变前车
         else if(Turn_Around == 1)
          {  
              Turn_Around = 0;
              Behind_LeaveIsland_ChaseFlag = 0;
          }
     }
}



/*
function：出环岛的处理
return：null
*/
void Leave_Island()
{
  //出环岛条件
  if(Flag_Island==1 && IslandIn_Distance>IslandIn_MinDis*100)
     if(    peak[2] > (Peak2_Island_Limit) 
         || peak[1] > (Peak13_Island_Limit)
         || peak[3] > (Peak13_Island_Limit)
         || peak[5] > Peak56_Island_Limit  
         || peak[6] > Peak56_Island_Limit  
         || peak[7] > Peak7_Island_Limit  
       )      
        {     
            EnterStrai_SumDis = Pulse_Distance*100;   
            Flag_Island_Confirm = 0;        
            final = 0;
            Flag_Island = 0;
            IslandIn_Distance = 0;
            Dir_IslandTurn = 0;
            EnterCurve_SumDis = 10*100;
            IslandGap_Distance = Pulse_Distance*100;
            Island_Distance = 0;
            
            //--Case1（环岛超车）方案下的处理--//
            if(OverTake_Island != No)
              {
                 if(Turn_Around == 0) //前车出环岛，后车出发
                    Case1_AheadLeave_Dis = Pulse_Distance*100; 
                 
                 else   //后车出环岛，前车启动
                   {  
                      SendCommand = Case1_Behind_LeaveIsland;
                   }
              }
         }    
  
  //--Case1(超车）情况下，出环岛的处理--//
  if(OverTake_Island != No)
    {
      if(Case1_AheadLeave_Dis > 70*100)
           SendCommand = Case1_Ahead_LeaveIsland;    
      if(Case1_AheadLeave_Dis > 140*100)
           Case1_AheadLeave_Wait = 1;
    }
  
  
  if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
  {  
      Flag_Island_Position = 0;
      Island_Error_Turn = 0;
  }
}

/*
function：LED标志不同的状态
return：null
*/
void Led_Show()
{
  if(Count < 100)
    {
      LPLD_GPIO_Output_b(PTA, 17, 0);   
      LPLD_GPIO_Output_b(PTC, 0, 0);   
    }    
  else if(Flag_Island_Confirm!=0 || final==1 || Flag_Island == 1)
    {
      LPLD_GPIO_Output_b(PTA, 17, 0);   
      LPLD_GPIO_Output_b(PTC, 0, 1);                           
    }
  else if(Turn_Around == 0)
    {
      LPLD_GPIO_Output_b(PTA, 17, 1);   
      LPLD_GPIO_Output_b(PTC, 0, 1);   
    }
  else if(Turn_Around == 1)
    {
      LPLD_GPIO_Output_b(PTA, 17, 1);   
      LPLD_GPIO_Output_b(PTC, 0, 1);   
    }    
  
  if(Flag_Island_Position == 1)    
    {
      if(Count%10 <= 5)
         LPLD_GPIO_Output_b(PTD, 5, 1);
    }

  

   if(Turn_Around == 0)
     {
        if(percent_ahead > 1)     
           LPLD_GPIO_Output_b(PTD, 4, 1);
        else
           LPLD_GPIO_Output_b(PTD, 4, 0);
     }

   if(Turn_Around == 1)
     {
        if(percent_behind > 1)     
           LPLD_GPIO_Output_b(PTD, 4, 1);
        else
           LPLD_GPIO_Output_b(PTD, 4, 0);
     }
 
}



/*
function：计算出一段距离内error的绝对平均值
return：error的绝对平均值
*/
float Ave_absError_Calcu(int sum_distance)
{  
  int node;
  int sum_error;
  float ave_abserror; 
  sum_distance *= 100;
  sum_error = 0;
  
  for(int i=ErrorNum-1; i>=0; i--)
    {   
      sum_distance -= Pre_Distance[i];  
        
      if(sum_distance < 0)
        {
          node = ErrorNum - i;
          for(int j=ErrorNum-1; j>=i; j--)
             sum_error += (int) fabs(Pre_Error[j]);
          break;
        }  
         
      if(i == 0)
        {  
          node = ErrorNum;
          for(uint8 j=0; j<ErrorNum; j++) 
             sum_error += (int) fabs(Pre_Error[j]);
          break;
        }
    }
  ave_abserror = sum_error/(node+1);
  return ave_abserror;
}




