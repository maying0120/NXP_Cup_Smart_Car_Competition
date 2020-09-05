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
Function: �������ݸ�����
Return: Null
*/
void SendData()
{
   SendData_To_PC();
}


/*
Function: �����жϷ�����
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
Function: ǰ�����պ��ź�
Return: Null
*/
void Receive_From_Behind()
{
   /***************���ݽ���******************/
   CommuCheck = LPLD_UART_GetChar(UART4);
      
   if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
       Data_Receive = CommuCheck;
   if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
      {
         CommuCheck_Last_Last = CommuCheck_Last;   
         CommuCheck_Last = CommuCheck;
      }

   /*************��������ͨ��****************/   
   //�󳵷���˫�����������
   if(Data_Receive>=MixedDis_Min && Data_Receive<=MixedDis_Max)
     { 
       Mixed_Distance = (Data_Receive - MixedDis_Step)*10;
     }

   //Case1����������������£��󳵳�������ǰ������
   if(Data_Receive == Case1_Behind_LeaveIsland)
     {
        Case1_AheadLeave_Wait = 0;
        Case1_AheadLeave_Dis = 0;
        EnterStrai_SumDis = Pulse_Distance*100;   
        
        //����������������
        if(OverTake_Island > No)
          {
             OverTake_Island--;    
             //��ָ����󳵣��������������Լ�һ��
             SendCommand = Case1_OverTake_NumDown;
          }
     }
     
        
   /*************��Ҫ����ƥ��ȷ��****************/
   //������ȷ�����
   if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Receiver;
   
   //�������յ������߷�����ָ���źţ�SendCommand_Clear��ʱ�������ظ�����ָ��
   if(SendData_Status == Sender)
     {
       if(Data_Receive == SendCommand_Arise);
         {
            SendCommand_Arise = 0;
            SendData_Status = Reseter;
         }
     }
   
   //�����߽��յ����ź�Ϊ��Ҫָ�SendCommand_Arise��ʱ�������źŸ�������
   else if(SendData_Status == Receiver)
     {
       if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
          SendCommand_Clear = Data_Receive;     
     }
}


/*
Function: �󳵽���ǰ���ź�
Return: Null
*/
void Receive_From_Ahead()
{  
   CommuCheck = LPLD_UART_GetChar(UART4);
   
    /*****************���ݽ���*******************/
   if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
       Data_Receive = CommuCheck;
   if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
      {
         CommuCheck_Last_Last = CommuCheck_Last;   
         CommuCheck_Last = CommuCheck;
      }
   
   /*****************���ݴ���********************/
   switch (Data_Receive)
    {
       //�󳵽���ǰ���ķ����źţ�Ȼ�󷢳�,��ʱ����
       case Start_Admit:
        { 
           LPLD_LPTMR_DelayMs(500);
           pit_10ms_init(); 
        }
       break;
      
       //ǰ��ͣ�����󳵼���
       case Ahead_Stop:
        { 
          AheadStop_BehindAccel = 1;
        }
       break;
       
       //ǰ��ͣ�����󳵼���
       case Ahead_Stop_Unexpected:
        { 
          AheadStop_BehindStop = 1;
        }
       break;
       
       //��������뻷��
       case Ahead_EnterRamp:
        { 
          Behind_EnterRamp_AdmitDis = 500*100;
        }
       break;
       
       //������������£�ǰ���뿪����ʱ��������
       case Case1_Ahead_LeaveIsland:
        {
           Mixed_Distance = 300;
           Flag_Follow = 1;
        }
       break;

       
      // �������������Լ�һ��
      case Case1_OverTake_NumDown:
        { 
          if(OverTake_Island > No)
             OverTake_Island--;
        }
      break;
       
      //�󳵽��յ����źţ����ٲ����Լ�⻷��
      case Admit_EnterIsland:
       {
          IslandAdmit_Distance = IslandAdmit_MaxDis*100;   
       }
       break; 
           
      //�󳵽�����ʱǿ����ת
      case Turn_Right:
        {
          Dir_IslandTurn = Turn_Right;
        }
       break;

      //�󳵽�����ʱǿ����ת
      case Turn_Left:
         Dir_IslandTurn = Turn_Left;
       break;
      
      //ֱ�������󳵱�ǰ��
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
  
   //�󳵽���ǰ��100ms���˶�����
   if(Data_Receive>=EncoderDis_Step && Data_Receive<=EncoderDis_Max)
      EncoderDis_Ahead = Data_Receive - EncoderDis_Step;

   
   /*************��Ҫ����ƥ��ȷ��****************/
   //������ȷ�����
   if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Receiver;
   
   //�������յ������߷�����ָ���źţ�SendCommand_Clear��ʱ�������ظ�����ָ��
   if(SendData_Status == Sender)
     {
       if(Data_Receive == SendCommand_Arise);
         {
            SendCommand_Arise = 0;
            SendData_Status = Reseter;
         }
     }
   
   //�����߽��յ����ź�Ϊ��Ҫָ�SendCommand_Arise��ʱ�������źŸ�������
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
       //�������ظ�������Ҫָ��������ߣ�ֱ�������߷������ź���ֹͣ����
      if(SendData_Status == Sender)
        {
           if(SendCommand_Arise != 0)
              Commu_Onetime(SendCommand_Arise);
        }

       //�����߽��յ���Ҫָ���ź�ʱ���������źŸ������ߣ�����һ�μ��ɣ�
       //��Ϊ���������δ���յ��÷����ź�ʱ�������߻�������͸�ָ���źţ�ʹ�ý����ߵ�SendCommand_Clear���ϱ�����
      else if(SendData_Status == Receiver)
        {
           if(SendCommand_Clear != 0)
            {
               Commu_Onetime(SendCommand_Clear);      
               SendCommand_Clear = 0;
               SendData_Status = Reseter; //������������
            }        
        }
    }
}


/*
Function: �������ݸ�����
Return: Null
*/
void SendData_To_PC()
{
    produceScopeData();  //�����ݴ����ڻ������� 
    sendDataToScope();	 //���Ͳ�������λ��
}


/*
Function: ������ѹ�뻺������
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
Function: ������Ҫ���͵�����
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
Function: �Ĵ������Ͳ���
Return: Null
*/
void sendDataToScope(void)
{
  uint8 i,sum=0; 
  //ʹ����ѯ�ķ�ʽ�������ݣ�������δ���ͣ�����ͣ�ڴ˴�ֱ���������
  LPLD_UART_PutChar(UART4, 251);
  LPLD_UART_PutChar(UART4, 109);
  LPLD_UART_PutChar(UART4, 37);
  
  sum+=(251);                   
  sum+=(109);
  sum+=(37);
  for(i=0;i<FreeCarsDataNum;i++)
    {
      LPLD_UART_PutChar(UART4, uSendBuf[i]);
      sum+=uSendBuf[i];          //ȫ�����ݼ���У��
    }
  LPLD_UART_PutChar(UART4, sum);
}


void Commu_Onetime(uint8 data)
{
   /*******************����Э��**********************/
   LPLD_UART_PutChar(UART4, CommuCheck_First);
   LPLD_UART_PutChar(UART4, CommuCheck_Second); 
   LPLD_UART_PutChar(UART4, data); 
   
   
   /***************�������������ȷ��*****************/
   //������ȷ�����
   if(data>=Command_Start && data<=Command_End)
     if(SendData_Status == Reseter)
        SendData_Status = Sender;
   
   if(data>=Command_Start && data<=Command_End)
     if(SendData_Status == Sender)
       if(SendCommand_Arise == 0)  //������ֻ�е�һ�η�����Ҫ��Ϣʱ������
          {
             if(SendCommand_Arise_Cnt == 0)
                SendCommand_Arise_Cnt = 1;
             SendCommand_Arise = data;
          }
}
