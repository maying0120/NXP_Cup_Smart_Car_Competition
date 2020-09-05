#ifndef __MOTOR_CTRL_H
#define __MOTOR_CTRL_H 
#include "common.h"


#define AveError_Straight            Ave_absError_Calcu(Straight_Distance)

struct Speed { 
  int target;
  int target_Basic;
  int tag_error;
  int error;
  int error_last;
  int drror;
  int feedback;
  int feedback_last;
  int Average;
  int filter;
  int pre_feedback[10];
  float P;
  float I;
  float D;
  float T; 
  float preTarget[10];
  long int MotorPWM;
  long int MotorPWM_Out;
};
void Motor_Ctrl(void);


#endif