#include "Includes.h"

extern uint8 Family_Status;
extern uint8 final;
extern uint8 OverTake;
extern uint8 Flag_Island_Turn;
extern int peak[];
extern int Count;
extern int RampIn_Distance;
extern int RampAdmit_Distance;
extern long int IslandAdmit_Distance; 
extern int Mixed_Distance;
extern int Distance;
extern int CrossRoad_Distance;
extern int trendSum_Peak2[];
extern int Flag_Island_Confirm;
extern int Flag_Island_Confirm_Last;
extern uint8 SendCommand;
extern uint8 Flag_Island_Turn;
extern uint8 final;
extern uint8 Turn_Around;
extern uint8 Flag_Island;
extern uint8 Flag_Ramp;
extern uint8 Flag_Follow;
extern uint8 Island_SpdDown;
extern uint8 Stop_Behind_Flag;
extern uint8 Stop_Behind;
extern long int Behind_EnterRamp_AdmitDis;
int Sum_peak2;
int Pre_peak2[5];
int Sum_peak7;
int Pre_peak7[5];

/*
Function:Solve the problem of the ramp
Return:Null
*/
void Ramp_Handle()
{  
   Sum_peak2 = 0;
   Sum_peak7 = 0;
   
   for(uint8 i=0; i<5; i++)
      Sum_peak2 += Pre_peak2[i];
   
   for(uint8 i=0; i<4; i++)
      Pre_peak2[i] = Pre_peak2[i+1];
   Pre_peak2[4] = peak[2];

   for(uint8 i=0; i<5; i++)
      Sum_peak7 += Pre_peak7[i];
   
   for(uint8 i=0; i<4; i++)
      Pre_peak7[i] = Pre_peak7[i+1];
   Pre_peak7[4] = peak[7];
   
   
   //----------进坡道------------//   
   if(     Flag_Ramp==0 && RampAdmit_Distance==0 && CrossRoad_Distance==0
      && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
      && IslandAdmit_Distance==0 )
        {
           //前车正常识别坡道
           if(Turn_Around == 0)  
              {
                 if(Sum_peak2/5>130 || Sum_peak7/5>130 || peak[1]>200  || peak[3]>200)
                   { 
                      Flag_Ramp = 1;
                      SendCommand = Ahead_EnterRamp;
                   }
              } 
           //后车识别坡道时，两车距离不能太近
           else 
              {
                 if(Mixed_Distance>50 && Behind_EnterRamp_AdmitDis!=0)
                    if(Sum_peak2/5 > 130 || Sum_peak7/5>130 || peak[1]>200 || peak[3]>200)
                       Flag_Ramp = 1;
              }           
        }
      

 // peak2限幅
  if(peak[2] > 100)
    peak[2] = 100;
  if(peak[7] > 100)
    peak[7] = 100; 
   
  //------------下坡道--------------// 
  if(Flag_Ramp != 0)
    { 
      if(RampAdmit_Distance == 0)
         RampAdmit_Distance = Pulse_Distance*100;
      if(RampIn_Distance == 0)
         RampIn_Distance = Pulse_Distance*100;         
    }
    
  if(RampIn_Distance != 0)
      RampIn_Distance += Distance;
  if(Flag_Ramp!=0 && RampIn_Distance>RampIn_Dis*100)
   {
      Flag_Ramp = 0;
      RampIn_Distance = 0; 
   }

  if(RampAdmit_Distance != 0)
     RampAdmit_Distance += Distance;
  if(RampAdmit_Distance > RampAdmit_Dis*100)
     RampAdmit_Distance = 0;
  
  
  //---------坡道LED标志----------//
  if(Flag_Ramp == 1)
    {
       LPLD_GPIO_Output_b(PTD, 5, 1); 
       LPLD_GPIO_Output_b(PTD, 2, 0); 
       LPLD_GPIO_Output_b(PTD, 4, 0); 
    }
  else
    {
       LPLD_GPIO_Output_b(PTD, 2, 0); 
       LPLD_GPIO_Output_b(PTD, 4, 0); 
       LPLD_GPIO_Output_b(PTD, 5, 0);   
    }
}