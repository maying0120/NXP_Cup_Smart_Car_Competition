#include "Includes.h"

#define UartDataNum  17	
#define FreeCarsDataNum (UartDataNum*2)

uint8 uSendBuf[UartDataNum*2]={0};
uint8 Data_Receive = 0;
uint8 Stop_Behind = 0;
uint8 CommuCheck;
uint8 CommuCheck_Last = 0;
uint8 CommuCheck_Last_Last = 0;
uint8 SendData_Status = 0;
uint8 SendCommand_Arise = 0;
uint8 SendCommand_Clear = 0;
uint8 SendCommand_Arise_Cnt = 0;
uint8 Case3_Turn = 0;
uint8 AheadStop_BehindAccel = 0;
uint8 AheadStop_BehindStop = 0;
extern int Pre_Error[];
extern int node;
extern int Sum_peak2;
extern int EnterStrai_SumDis;
extern int sum_error;
extern int Distance;
extern int Count;
extern int peak[];
extern int Error;
extern int Pre_Peak5[];
extern int Grid_Error;
extern int Flag_Island_Confirm;
extern int RampAdmit_Distance;
extern int Ms100_Distance;
extern int EncoderDis_Ahead;
extern int EncoderDis_Behind;
extern int Mixed_Distance;
extern int CrossRoad_Distance;
extern int CrossRoadGap_Dis;
extern long int IslandAdmit_Distance;
extern int EnterCurve_SumDis;
extern int trendSum_Peak1[];
extern int trendSum_Peak2[];
extern int trendSum_Peak3[];
extern int Derivative_Error;
extern int Case1_AheadLeave_Dis;
extern long int Behind_EnterRamp_AdmitDis;
extern int16 gyro_x;
extern int16 gyro_y;
extern int16 gyro_z;
extern float Ave_absError;
extern struct Speed Spd;
extern struct Rudder Angle;
extern uint8 Single_Run;
extern uint8 Spd_Set_ZeroStart;
extern uint8 Flag_Island_Position;
extern uint8 Dir_IslandTurn;
extern uint8 final;
extern uint8 OverTake_Island;
extern uint8 SendCommand;
extern uint8 Turn_Around;
extern uint8 Flag_Island;
extern uint8 Flag_Ramp;
extern uint8 Case1_AheadLeave_Wait;
extern uint8 Flag_Follow;
extern uint8 Island_SpdDown;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;  
extern uint8 Case2_Behind_KeepSide;
extern uint8 OverTake_CrossRoad;
extern uint8 Case3_Behind_Pass;
extern uint8 Ahead_LeaveIsland_WaitFlag;
extern float percent_ahead;
void push(uint8 chanel,uint16 data);
void produceScopeData(void);
void sendDataToScope(void);


/*
Function: 发送数据给电脑
Return: Null
*/
void SendData()
{
   SendData_To_PC();
}


/*
Function: 接收中断服务函数
Return: Null
*/
int uart_cnt;
void RecData(void)
{
   uart_cnt++;   
   if(Turn_Around == 0)
     Receive_From_Behind();     
   else
     Receive_From_Ahead();    
}


/*
Function: 前车接收后车信号
Return: Null
*/
void Receive_From_Behind()
{
   /***************数据解码******************/
   CommuCheck = LPLD_UART_GetChar(UART4);
      
   if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
       Data_Receive = CommuCheck;
   if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
      {
         CommuCheck_Last_Last = CommuCheck_Last;   
         CommuCheck_Last = CommuCheck;
      }

   /*************正常数据通信****************/   
   //后车发送双车距离给环岛
   if(Data_Receive>=MixedDis_Min && Data_Receive<=MixedDis_Max)
     { 
       Mixed_Distance = (Data_Receive - MixedDis_Step)*10;
     }

   //Case1（环岛超车）情况下，后车出环岛后，前车启动
   if(Data_Receive == Case1_Behind_LeaveIsland)
     {
        Case1_AheadLeave_Wait = 0;
        Case1_AheadLeave_Dis = 0;
        EnterStrai_SumDis = Pulse_Distance*100;   
        
        //环岛超车次数限制
        if(OverTake_Island > No)
          {
             OverTake_Island--;    
             //发指令给后车，环岛超车次数自减一次
             SendCommand = Case1_OverTake_NumDown;
          }
     }
     
        
   /*************重要数据匹配确认****************/
   //接收者确认身份
   if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Receiver;
   
   //发送者收到接收者反馈的指令信号（SendCommand_Clear）时，不再重复发送指令
   if(SendData_Status == Sender)
     {
       if(Data_Receive == SendCommand_Arise);
         {
            SendCommand_Arise = 0;
            SendData_Status = Reseter;
         }
     }
   
   //接收者接收到的信号为重要指令（SendCommand_Arise）时，反馈信号给发送者
   else if(SendData_Status == Receiver)
     {
       if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
          SendCommand_Clear = Data_Receive;     
     }
}


/*
Function: 后车接收前车信号
Return: Null
*/
void Receive_From_Ahead()
{  
   CommuCheck = LPLD_UART_GetChar(UART4);
   
    /*****************数据解码*******************/
   if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
       Data_Receive = CommuCheck;
   if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
      {
         CommuCheck_Last_Last = CommuCheck_Last;   
         CommuCheck_Last = CommuCheck;
      }
   
   /*****************数据处理********************/
   switch (Data_Receive)
    {
       //后车接收前车的发车信号，然后发车,延时发车
       case Start_Admit:
        { 
           LPLD_LPTMR_DelayMs(500);
           pit_10ms_init(); 
        }
       break;
      
       //前车停车，后车加速
       case Ahead_Stop:
        { 
          AheadStop_BehindAccel = 1;
        }
       break;
       
       //前车停车，后车加速
       case Ahead_Stop_Unexpected:
        { 
          AheadStop_BehindStop = 1;
        }
       break;
       
       //后车允许进入环岛
       case Ahead_EnterRamp:
        { 
          Behind_EnterRamp_AdmitDis = 500*100;
        }
       break;
       
       //环岛超车情况下，前车离开环岛时，后车启动
       case Case1_Ahead_LeaveIsland:
        {
           Mixed_Distance = 300;
           Flag_Follow = 1;
        }
       break;

       
      // 环岛超车次数自减一次
      case Case1_OverTake_NumDown:
        { 
          if(OverTake_Island > No)
             OverTake_Island--;
        }
      break;
       
      //后车接收到该信号，减速并可以检测环岛
      case Admit_EnterIsland:
       {
          IslandAdmit_Distance = IslandAdmit_MaxDis*100;   
       }
       break; 
           
      //后车进环岛时强制右转
      case Turn_Right:
        {
          Dir_IslandTurn = Turn_Right;
        }
       break;

      //后车进环岛时强制左转
      case Turn_Left:
         Dir_IslandTurn = Turn_Left;
       break;
      
      //直道超车后车变前车
      case Case2_SwitchTurn:
         {
           Turn_Around = 0;
           Case2_Ahead_KeepSide = 0;
           Case2_Behind_KeepSide = 0;
         }
       break;
              
       
      default:
       break;
    }
  
   //后车接收前车100ms内运动距离
   if(Data_Receive>=EncoderDis_Step && Data_Receive<=EncoderDis_Max)
      EncoderDis_Ahead = Data_Receive - EncoderDis_Step;

   
   /*************重要数据匹配确认****************/
   //接收者确认身份
   if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Receiver;
   
   //发送者收到接收者反馈的指令信号（SendCommand_Clear）时，不再重复发送指令
   if(SendData_Status == Sender)
     {
       if(Data_Receive == SendCommand_Arise);
         {
            SendCommand_Arise = 0;
            SendData_Status = Reseter;
         }
     }
   
   //接收者接收到的信号为重要指令（SendCommand_Arise）时，反馈信号给发送者
   else if(SendData_Status == Receiver)
     {
       if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
          SendCommand_Clear = Data_Receive;     
     }
}

void Command_Match()
{
  if(Count>200)
    {
       //发送者重复发送重要指令给接收者，直到接收者反馈该信号则停止发送
      if(SendData_Status == Sender)
        {
           if(SendCommand_Arise != 0)
              Commu_Onetime(SendCommand_Arise);
        }

       //接收者接收到重要指令信号时，反馈该信号给发送者，发送一次即可；
       //因为如果发送者未接收到该反馈信号时，发送者会持续发送该指令信号，使得接收者的SendCommand_Clear不断被置起
      else if(SendData_Status == Receiver)
        {
           if(SendCommand_Clear != 0)
            {
               Commu_Onetime(SendCommand_Clear);      
               SendCommand_Clear = 0;
               SendData_Status = Reseter; //接收者清除身份
            }        
        }
    }
}


/*
Function: 发送数据给电脑
Return: Null
*/
void SendData_To_PC()
{
    produceScopeData();  //将数据储存于缓存数组 
    sendDataToScope();	 //发送参数到上位机
}


/*
Function: 将数据压入缓存数组
Return: Null
*/
void push(uint8 chanel,uint16 data)
{
    uSendBuf[chanel*2]=data/256;
    uSendBuf[chanel*2+1]=data%256;
}


extern int Ud;
extern int Ud_error;
extern int MaybeRamp_Distance;
extern long int IslandGap_Distance;
extern int RampIn_Distance;
extern int Turn_Error;
extern uint16 Ultra_Distance_Unfilter;
extern uint16 Ultra_Distance_Filter;

/*
Function: 发送需要发送的数据
Return: Null
*/
void produceScopeData(void)
{
    push(0, peak[0]);
    push(1, peak[1]);
    push(2, peak[2]);
    push(3, peak[3]);
    push(4, peak[4]);
    push(5, peak[5]);
    push(6, peak[6]);
    push(7, peak[7]);
    push(8, Error);
    push(9, Flag_Island_Confirm/100);
    push(10,Spd.target);
    push(11,Spd.feedback);
    push(12,EnterCurve_SumDis/100);
    push(13,Spd.MotorPWM/10);
//    push(14,15);
//    push(15,16);
//    push(16,17);
}	 

 
/*
Function: 寄存器发送操作
Return: Null
*/
void sendDataToScope(void)
{
  uint8 i,sum=0; 
  //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
  LPLD_UART_PutChar(UART4, 251);
  LPLD_UART_PutChar(UART4, 109);
  LPLD_UART_PutChar(UART4, 37);
  
  sum+=(251);                   
  sum+=(109);
  sum+=(37);
  for(i=0;i<FreeCarsDataNum;i++)
    {
      LPLD_UART_PutChar(UART4, uSendBuf[i]);
      sum+=uSendBuf[i];          //全部数据加入校验
    }
  LPLD_UART_PutChar(UART4, sum);
}


void Commu_Onetime(uint8 data)
{
   /*******************数据协议**********************/
   LPLD_UART_PutChar(UART4, CommuCheck_First);
   LPLD_UART_PutChar(UART4, CommuCheck_Second); 
   LPLD_UART_PutChar(UART4, data); 
   
   
   /***************命令区间的数据确认*****************/
   //接收者确认身份
   if(data>=Command_Start && data<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Sender;
   
   if(data>=Command_Start && data<=Command_End)
     if(SendData_Status == Sender)
       if(SendCommand_Arise == 0)  //发送者只有第一次发送重要信息时会置起
          {
             if(SendCommand_Arise_Cnt == 0)
                SendCommand_Arise_Cnt = 1;
             SendCommand_Arise = data;
          }
}
