
#include "Includes.h"

uint8 Turn_Around = 0;   //前车为0，后车为1
uint8 Family_Status = 0;   //老大为0，老二为1
uint8 Spd_Switch, Spd_Switch_A, Spd_Switch_B;
uint8 Single_Run = 0;
uint8 OverTake_Island = 0;
uint8 OverTake_Straight = 0;
uint8 Case2_Ahead_KeepSide = 0;
uint8 Case2_Behind_KeepSide = 0;
uint32 Case2_Behind_SwitchDis = 0;
uint8 OverTake_CrossRoad;
uint8 Case3_Ahead_Stop;
uint8 Case3_Behind_Pass;
uint8 Page_Slt = 1;
uint8 SendCommand = 0;
uint8 Command_Cnt = 0;
extern int Count;
extern uint8 SendData_Arise;
extern uint8 SendData_Clear;
extern uint8 SendData_Arise_Cnt;

void Status_Init(void); 
int while_cnt;


//--------主函数入口--------//
void main (void)   
{    
  DisableInterrupts;
    
  //模块初始化
  HardwareInit(); 
  
  //开机状态选择
  Status_Init();  
  
  EnableInterrupts;

  while(1)
   {  
      //-------------无线部分---------------
        // 发送指令
         if(SendCommand != 0)
           { 
             if(Command_Cnt == 0)
               {
                  if(SendCommand>=Command_Start && SendCommand<=Command_End)    Command_Cnt = 3;
                  else  Command_Cnt = 1;
               }
               
             Commu_Onetime(SendCommand); 
             
             Command_Cnt--;
             if(Command_Cnt == 0)    SendCommand = 0;
           }
              
         //双车距离通信
         Commun_Shift();

         //发送数据到电脑
      //   SendData();  
        
     
      //--------------按键调参-------------
         Keyboard(); 
    
          
      //--------------OLED显示-------------
         if(Count%30 == 0)
            OLED_while(Page_Slt);     
   } 
}



//--------开机状态选择--------
void Status_Init()
{
  DialSwitch_init();
  
  //老大老二选择
  Family_Status = 1 - LPLD_GPIO_Input_b(PTD, 7);  
  Turn_Around   = 1 - LPLD_GPIO_Input_b(PTD, 6);
  
  if(Turn_Around == 0)
    {   
       Commu_Onetime(Start_Admit);
       LPLD_LPTMR_DelayMs(500);
       pit_10ms_init();    
    }
  
  //速度档位选择
  Spd_Switch_A  = 1 - LPLD_GPIO_Input_b(PTD, 9);
  Spd_Switch_B  = 1 - LPLD_GPIO_Input_b(PTD, 8);
  Spd_Switch = Spd_Switch_A*2 + Spd_Switch_B + 1;
  
  //方案选择
  Single_Run = No;
  OverTake_Island = 4*LPLD_GPIO_Input_b(PTD, 11);
  OverTake_Straight = LPLD_GPIO_Input_b(PTD, 10);

  if(OverTake_Straight == Yes)
    {
      Case2_Ahead_KeepSide = 1;
      Case2_Behind_KeepSide = 1;
    }
}


