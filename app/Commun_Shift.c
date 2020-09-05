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

        /**前车发送100ms内运动距离给后车**/
        if(Turn_Around == 0)   
           Commu_Onetime(EncoderDis_Ahead + EncoderDis_Step);
        
        /***后车解算两车之间的实际距离****/
        else     
          {
             shift_error = (EncoderDis_Ahead - EncoderDis_Behind);
              
             //----能接收到超声波信号时,对超声波进行滤波，以超声波距离为准----//
             if(Count - Ultra_Count <= 10)
                   Mixed_Distance = Ultra_Distance_Unfilter;   

             //--------过渡过程中：双车距离 = 超声波基准距离+位移之差---------//
             else 
                {
                   Mixed_Distance += shift_error;
                   
                   //进环岛时，距离设置为最远
                   if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
                      Mixed_Distance = 300;

                   //出环岛时，追逐距离很远
                   if(Behind_LeaveIsland_ChaseFlag == 1)
                     Mixed_Distance = 1000;
                   
                   //Case2(直道超车)情况下，两车处于超车过程中，距离设置为最远
                   if(OverTake_Straight == Yes)
                     {
                        if(Case2_Ahead_KeepSide == 1)
                           Mixed_Distance = 300;
                     }
                }
             
                          
             //---------------------后车将距离通信给前车----------------------//
             if(Mixed_Distance < 0)
                 Commu_Onetime(MixedDis_Step);
             else if(Mixed_Distance > 300)
                 Commu_Onetime(30 + MixedDis_Step);
             else
                 Commu_Onetime(Mixed_Distance/10 + MixedDis_Step);
          }
     }
}