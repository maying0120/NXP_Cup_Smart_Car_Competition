#include "Includes.h"

int Count = 0;
int Stop_Distance = 0;
extern int Ms100_Distance;
extern uint16 Ultra_Distance;
extern uint8 Turn_Around;
extern uint8 OverTake;
extern int Ultra_Count;
extern uint8 SendCommand_Arise;
extern uint8 SendData_Clear;
extern uint8 SendCommand_Arise_Cnt;
extern uint8 SendCommand;
extern int Cnt_Encoder;
extern long int Sum_Distance;

/*
���ܣ�10ms����һ�θ��жϺ���������ѭ����·���ɼ����Ƕȡ��ٶȿ���
����ֵ���� 
*/
void pit_10ms()
{  
    //�����ɼ�10��peak,��ƽ��ֵ
    if(Count<10)
      {
         Set_SensorPara(Count);
         if(Count == 9)
            AveEmax_Calcu();          
      }
    
    //����ѭ����·���ɼ����Ƕȡ��ٶȿ���
    else
      {
         Spd_Get(); 
         Rudder_Ctrl();
         Motor_Ctrl();    
         Dis_Calc();       //AD��������while(1)Limian
      }


    Cnt_Encoder = 1;
    Count++;
    if(Count>60000)
       Count = 1000;
}

int isrcnt;
void Stop_Isr()
{
  isrcnt++;
   if(Sum_Distance > 10*10000)
     {
        Stop_Distance = Pulse_Distance*100; 
        if(Turn_Around == 0)
          SendCommand = Ahead_Stop;
     }
}
