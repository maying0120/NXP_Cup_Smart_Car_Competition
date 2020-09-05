#ifndef SPD_PID_H
#define SPD_PID_H

#include "common.h"

void Spd_Get(void);
void Spd_Filter(void);
void Spd_Ctrl(void);
void Younger_Spd_Ctrl(void);
void Elder_Spd_Ctrl(void);
void Motor_Output(void);

#endif

