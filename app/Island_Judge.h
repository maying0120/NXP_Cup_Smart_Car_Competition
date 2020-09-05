#ifndef ISLAND_JUDGE_H
#define ISLAND_JUDGE_H
#include "common.h"

#define  Confirm_First                 15
#define  Confirm_Second                30
#define  Island_Third_Dis              (35-4*Spd_Switch*Turn_Around)
#define  Limit_StrError                4

#define  Pulse_Distance                     10

#define  CrossRoad_MinDis                   60
#define  IslandGap_MinDis                   200
#define  IslandIn_MinDis                    150
#define  IslandAdmit_MaxDis                 500
#define  IslandRamp_MinDis                  150
#define  IslandWait_Distance                (30-20*Family_Status)
#define  Behind_SpdDwn_EnterIslDistance     20


#define  Peak2_Island_Limit            65      
#define  Peak7_Island_Limit            65
#define  Peak13_Island_Limit           65     
#define  Peak56_Island_Limit           65
#define  Peak04_Island_Limit           60
#define  Peak04_Cross_Limit            70
#define  Peak04_Cross_SumLimit         100


//环岛处理总函
void Island_Handle(void);
//计算各种距离
void Calcu_AllDis(void);
//进入环岛
void Enter_Island(void);
//环岛中前后车切换
void TurnSwitch_InIsland(void);
//出环岛
void Leave_Island(void);
//LED标志
void Led_Show(void);
//计算出一段距离内error的绝对平均值
float Ave_absError_Calcu(int sum_distance);
//第三步确认环岛，返回值为1表示确认，返回值为0表示等待
void Island_Third();


#endif