#include "Includes.h"

extern uint8 Turn_Around;
extern uint8 Family_Status;

/*
Function：速度控制总函数
Return：Null
*/
void Motor_Ctrl()
{   
   //---速度设置---//
   if(Turn_Around == 0)
      Ahead_Spd_Set();   //前车速度设置
   else 
      Behind_Spd_Set();  //后车速度设置
   
   //---PIDT控制---//
   if(Family_Status == 0)
      Elder_Spd_Ctrl();   //老大PIDT
   else
      Younger_Spd_Ctrl(); //老二PIDT
  
   //-----输出-----//
   Motor_Output();
}



