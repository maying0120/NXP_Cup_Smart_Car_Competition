#include "Includes.h"

int Mixed_Distance = 110;
int shift_error;
int Cnt_Encoder = 0;
extern int Count;
extern int EncoderDis_Ahead;
extern int EncoderDis_Behind;
extern uint16 Ultra_Distance_Unfilter;
extern uint8 Turn_Around;
extern uint8 OverTake;
extern uint8 Case1_Behind_IslandStop;
extern uint8 Case1_Behind_IslandFollow;
extern uint8 OverTake_Island;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;  
extern uint8 Case2_Behind_KeepSide;
extern uint8 Behind_LeaveIsland_ChaseFlag;
extern int Ultra_Count;
extern int Ultra_Count_Last3;
extern int Flag_Island_Confirm;
extern uint8 final;
extern uint8 Flag_Island;


void Commun_Shift(void)
{    
   if(Count%10==0 && Cnt_Encoder==1)
     {  
        Cnt_Encoder = 0;

        /**ǰ������100ms���˶��������**/
        if(Turn_Around == 0)   
           Commu_Onetime(EncoderDis_Ahead + EncoderDis_Step);
        
        /***�󳵽�������֮���ʵ�ʾ���****/
        else     
          {
             shift_error = (EncoderDis_Ahead - EncoderDis_Behind);
              
             //----�ܽ��յ��������ź�ʱ,�Գ����������˲����Գ���������Ϊ׼----//
             if(Count - Ultra_Count <= 10)
                   Mixed_Distance = Ultra_Distance_Unfilter;   

             //--------���ɹ����У�˫������ = ��������׼����+λ��֮��---------//
             else 
                {
                   Mixed_Distance += shift_error;
                   
                   //������ʱ����������Ϊ��Զ
                   if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
                      Mixed_Distance = 300;

                   //������ʱ��׷������Զ
                   if(Behind_LeaveIsland_ChaseFlag == 1)
                     Mixed_Distance = 1000;
                   
                   //Case2(ֱ������)����£��������ڳ��������У���������Ϊ��Զ
                   if(OverTake_Straight == Yes)
                     {
                        if(Case2_Ahead_KeepSide == 1)
                           Mixed_Distance = 300;
                     }
                }
             
                          
             //---------------------�󳵽�����ͨ�Ÿ�ǰ��----------------------//
             if(Mixed_Distance < 0)
                 Commu_Onetime(MixedDis_Step);
             else if(Mixed_Distance > 300)
                 Commu_Onetime(30 + MixedDis_Step);
             else
                 Commu_Onetime(Mixed_Distance/10 + MixedDis_Step);
          }
     }
}