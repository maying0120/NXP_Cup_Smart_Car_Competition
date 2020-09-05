#include "Includes.h"

uint16 Ultra_Distance_Unfilter = 50;
uint16 Pre_Ultra_Distance[10] = {0};
uint8 Spd_Set_ZeroStart = 0;
uint8  Flag_Turn;
int   Ultra_Count;
int   Ultra_Count_Last, Ultra_Count_Last2, Ultra_Count_Last3;
extern int Count;
extern int Stop_Distance;
extern uint8 Turn_Around;
extern uint8 Flag_Island;
extern uint8 OverTake_Island;
extern uint8 Case1_Behind_IslandFollow;
extern uint8 Case1_Behind_IslandStart;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;  
extern uint8 Case2_Behind_KeepSide;
extern uint32 Case2_Behind_SwitchDis;
extern uint8 Behind_LeaveIsland_ChaseFlag;
extern uint8 SendCommand;
extern uint8 AheadStop_BehindStop;
extern struct Speed Spd;


void UltraDis_Measure()
{
   if(HC_Echo == 1)
     {
        PIT->CHANNEL[1].TCTRL &= ~PIT_TCTRL_TEN_MASK;//ֹͣ��ʱ��
        PIT->CHANNEL[1].LDVAL  = 0XFFFFFFFF;     //���ض�ʱ��ֵ
        PIT->CHANNEL[1].TCTRL |= PIT_TCTRL_TEN_MASK;  //ʹ�ܶ�ʱ��
     }
   else 
     {
        Ultra_Count_Last3 = Ultra_Count_Last2;
        Ultra_Count_Last2 = Ultra_Count_Last;
        Ultra_Count_Last = Ultra_Count;
        Ultra_Count = Count;
                
        Ultra_Distance_Unfilter = (0xFFFFFFFF - PIT->CHANNEL[1].CVAL)/1200;

                
        //----Case2��ֱ��������������£��ı�����֮���ǰ��״̬----//  
        if(OverTake_Straight == Yes)
            //�л�ǰ������֮һ��ǰ�����յ��������ź�
            if(Turn_Around==0 && Ultra_Count-Ultra_Count_Last3<15)
              if(Count>50 && Spd.target==0) 
                {
                  if(Case2_Ahead_KeepSide == 1)
                    if(Ultra_Distance_Unfilter>60 && Ultra_Distance_Unfilter<290)
                      {
                         Turn_Around = 1;
                         SendCommand = Case2_SwitchTurn; 
                         Case2_Ahead_KeepSide = 0;
                         Case2_Behind_KeepSide = 0;
                      }               
                }   
        
        //----Case1������������������£�����������ȴ���־----//
        if(Turn_Around==1 && Flag_Island==0)
          if(Behind_LeaveIsland_ChaseFlag == 1)
            if(Ultra_Distance_Unfilter < 120)
                Behind_LeaveIsland_ChaseFlag = 0;
         
        //---------------ͣ������£��󳵽���ɲ��----------------//
        if(AheadStop_BehindStop == 1)
          if(Turn_Around == 1)
             if(Ultra_Distance_Unfilter < 200)
                Stop_Distance = 10*100;
            
        PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//ֹͣ��ʱ��
     }
   
   UltraDis_Filter();
       
   LPLD_GPIO_ClearIntFlag(PORTA);
}


void UltraDis_Filter()
{
   //--�����������޷�--//
   if(Ultra_Distance_Unfilter < 10)
        Ultra_Distance_Unfilter = 10;
   if(Ultra_Distance_Unfilter > 300)
        Ultra_Distance_Unfilter = 300;

   //--�������ݸ���--//
   for(uint8 i=0; i<9; i++)
      Pre_Ultra_Distance[i] = Pre_Ultra_Distance[i+1];
   Pre_Ultra_Distance[9] = Ultra_Distance_Unfilter;   
}


