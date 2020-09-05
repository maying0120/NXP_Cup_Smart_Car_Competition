#ifndef AD_CONVERT_H
#define AD_CONVERT_H

#include "common.h"

#define   SampleNum         100
#define   ErrorNum          100
#define   Sensor_Height2    13.5
#define   Sensor_Height7    12.0
#define   Error_Limit       30


//偏差计算总函数
void  Dis_Calc(void);
//计算每个电感的峰峰值
void  peak_calc(void);
//计算最大值最小值之差
uint8 CalcMaxToMin(uint8 data[SampleNum]);
//计算到跑道中心的偏差
void  error_calcu(void);
//开机求Emax平均值
void  AveEmax_Calcu();  
//AD转换函数
void  ad_convert(void);
//开机采出Sensor_Parameter值
void  Set_SensorPara(uint8 cnt);
//防丢线
void  Prevent_LostLine(void);


#endif