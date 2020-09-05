#ifndef __RUDDER_CTRL_H
#define __RUDDER_CTRL_H 

#include "common.h"

struct Rudder{ 
  int error;
  int drror;
  int ddrror;
  int pre_error[10];
  int pre_drror[10];
  float P;
  float D; 
  uint16 RudderPWM;
};

void Rudder_Ctrl(void);
void Elder_Rudder_Ctrl(void);
void Younger_Rudder_Ctrl(void);

#endif