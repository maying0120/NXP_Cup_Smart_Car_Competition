#include "Includes.h"

extern uint8 Turn_Around;
extern uint8 Family_Status;

/*
Function���ٶȿ����ܺ���
Return��Null
*/
void Motor_Ctrl()
{   
   //---�ٶ�����---//
   if(Turn_Around == 0)
      Ahead_Spd_Set();   //ǰ���ٶ�����
   else 
      Behind_Spd_Set();  //���ٶ�����
   
   //---PIDT����---//
   if(Family_Status == 0)
      Elder_Spd_Ctrl();   //�ϴ�PIDT
   else
      Younger_Spd_Ctrl(); //�϶�PIDT
  
   //-----���-----//
   Motor_Output();
}



