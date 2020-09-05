#ifndef AD_CONVERT_H
#define AD_CONVERT_H

#include "common.h"

#define   SampleNum         100
#define   ErrorNum          100
#define   Sensor_Height2    13.5
#define   Sensor_Height7    12.0
#define   Error_Limit       30


//ƫ������ܺ���
void  Dis_Calc(void);
//����ÿ����еķ��ֵ
void  peak_calc(void);
//�������ֵ��Сֵ֮��
uint8 CalcMaxToMin(uint8 data[SampleNum]);
//���㵽�ܵ����ĵ�ƫ��
void  error_calcu(void);
//������Emaxƽ��ֵ
void  AveEmax_Calcu();  
//ADת������
void  ad_convert(void);
//�����ɳ�Sensor_Parameterֵ
void  Set_SensorPara(uint8 cnt);
//������
void  Prevent_LostLine(void);


#endif