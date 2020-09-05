#ifndef _BLUETOOTH_H
#define _BLUETOOTH_H

#include "common.h"

//-------------数据匹配定义---------------//
#define  Reseter                       0
#define  Sender                        1
#define  Receiver                      2
#define  Command_Start                 104
#define  Command_End                   150


//-------------数据校验区间---------------//
#define  CommuCheck_First              253
#define  CommuCheck_Second             254

//------------两车距离的区间--------------//
#define  MixedDis_Step                  10
#define  MixedDis_Min                   10
#define  MixedDis_Max                   49

//------------编码器位移区间--------------//
#define  EncoderDis_Step                50
#define  EncoderDis_Min                 50
#define  EncoderDis_Max                 99

//---------------命令区间-----------------//
#define  Start_Admit                    101
#define  Case1_Behind_LeaveIsland       102
#define  Case1_OverTake_NumDown         103

#define  Case2_SwitchTurn               104
#define  Admit_EnterIsland              105
#define  Turn_Right                     106
#define  Turn_Left                      107
#define  Case1_Ahead_LeaveIsland        108
#define  Behind_Meet_Ahead_LeaveIsland  109
#define  Ahead_Stop                     110
#define  Ahead_EnterRamp                111
#define  Ahead_Stop_Unexpected          112


//发送数据
void SendData(void);
//前车给后车发送一次数据，包含通信协议
void Commu_Onetime(uint8 data);

//接收数据
void RecData(void);
//前车接收后车数据
void Receive_From_Behind(void);
//后车接收前车数据
void Receive_From_Ahead(void);

//重要指令匹配
void Command_Match(void);
//发送数据给电脑
void SendData_To_PC(void);

#endif