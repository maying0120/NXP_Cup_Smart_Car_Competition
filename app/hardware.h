#ifndef HARDWARE_H
#define HARDWARE_H
#include "common.h"

//º¯Êý¶¨Òå
void HardwareInit(void);
void hcsr04_init(void);
void pit_hcsr04_init(void);
void pit_10ms_init(void);
void nvic_init(void);
void sensor_adc_init(void);
void Rudder_ftm2_init(void);
void Motor_ftm0_init(void);
void bluetooth_uart4_init(void);
void Oled_Start_init(void);
void qd_ftm1_init(void);
void DialSwitch_init(void);
void keyboard_init(void);
void Led_init(void);
void OLED_Init(void);
void KeyBoard_init(void);
void Stop_init(void);

#endif
