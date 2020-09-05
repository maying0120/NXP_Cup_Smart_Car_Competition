#ifndef SPD_SET_H
#define SPD_SET_H

#include "common.h"

#define trend_SpdHigh                1
#define trend_SpdLow                 0
#define Straight_Distance            50
#define Measuring_Scale              2.27
#define Percent                      1.0
 

#define Spd_Ramp                     300


void Spd_Set(void);
void Basic_Spd_Set(void);
void Ahead_Spd_Set(void);
void Behind_Spd_Set(void);

#endif
