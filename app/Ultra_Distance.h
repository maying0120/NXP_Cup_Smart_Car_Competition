#ifndef __HC_SR04_H
#define __HC_SR04_H 

#include "common.h"

#define HC_Echo    LPLD_GPIO_Input_b(PTA, 10)


//测量与车前方最近的物体之间的距离
void UltraDis_Measure(void);
void UltraDis_Filter(void);

#endif

