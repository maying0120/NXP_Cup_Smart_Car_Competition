#ifndef _BLUETOOTH_H
#define _BLUETOOTH_H

#include "common.h"

//-------------����ƥ�䶨��---------------//
#define  Reseter                       0
#define  Sender                        1
#define  Receiver                      2
#define  Command_Start                 104
#define  Command_End                   150


//-------------����У������---------------//
#define  CommuCheck_First              253
#define  CommuCheck_Second             254

//------------�������������--------------//
#define  MixedDis_Step                  10
#define  MixedDis_Min                   10
#define  MixedDis_Max                   49

//------------������λ������--------------//
#define  EncoderDis_Step                50
#define  EncoderDis_Min                 50
#define  EncoderDis_Max                 99

//---------------��������-----------------//
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


//��������
void SendData(void);
//ǰ�����󳵷���һ�����ݣ�����ͨ��Э��
void Commu_Onetime(uint8 data);

//��������
void RecData(void);
//ǰ�����պ�����
void Receive_From_Behind(void);
//�󳵽���ǰ������
void Receive_From_Ahead(void);

//��Ҫָ��ƥ��
void Command_Match(void);
//�������ݸ�����
void SendData_To_PC(void);

#endif