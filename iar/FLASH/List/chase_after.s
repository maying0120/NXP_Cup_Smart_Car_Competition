///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\chase_after.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\chase_after.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\chase_after.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Commu_Onetime
        EXTERN Commun_Shift
        EXTERN Count
        EXTERN DialSwitch_init
        EXTERN HardwareInit
        EXTERN Keyboard
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN OLED_while
        EXTERN pit_10ms_init

        PUBLIC Case2_Ahead_KeepSide
        PUBLIC Case2_Behind_KeepSide
        PUBLIC Case2_Behind_SwitchDis
        PUBLIC Case3_Ahead_Stop
        PUBLIC Case3_Behind_Pass
        PUBLIC Command_Cnt
        PUBLIC Family_Status
        PUBLIC OverTake_CrossRoad
        PUBLIC OverTake_Island
        PUBLIC OverTake_Straight
        PUBLIC Page_Slt
        PUBLIC SendCommand
        PUBLIC Single_Run
        PUBLIC Spd_Switch
        PUBLIC Spd_Switch_A
        PUBLIC Spd_Switch_B
        PUBLIC Status_Init
        PUBLIC Turn_Around
        PUBLIC main
        PUBLIC while_cnt

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\chase_after.c
//    1 
//    2 #include "Includes.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    4 uint8 Turn_Around = 0;   //前车为0，后车为1
Turn_Around:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8 Family_Status = 0;   //老大为0，老二为1
Family_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8 Spd_Switch, Spd_Switch_A, Spd_Switch_B;
Spd_Switch:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Spd_Switch_A:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Spd_Switch_B:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8 Single_Run = 0;
Single_Run:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 OverTake_Island = 0;
OverTake_Island:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8 OverTake_Straight = 0;
OverTake_Straight:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8 Case2_Ahead_KeepSide = 0;
Case2_Ahead_KeepSide:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8 Case2_Behind_KeepSide = 0;
Case2_Behind_KeepSide:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 uint32 Case2_Behind_SwitchDis = 0;
Case2_Behind_SwitchDis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 OverTake_CrossRoad;
OverTake_CrossRoad:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8 Case3_Ahead_Stop;
Case3_Ahead_Stop:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 uint8 Case3_Behind_Pass;
Case3_Behind_Pass:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   16 uint8 Page_Slt = 1;
Page_Slt:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   17 uint8 SendCommand = 0;
SendCommand:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   18 uint8 Command_Cnt = 0;
Command_Cnt:
        DS8 1
//   19 extern int Count;
//   20 extern uint8 SendData_Arise;
//   21 extern uint8 SendData_Clear;
//   22 extern uint8 SendData_Arise_Cnt;
//   23 
//   24 void Status_Init(void); 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 int while_cnt;
while_cnt:
        DS8 4
//   26 
//   27 
//   28 //--------主函数入口--------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void main (void)   
//   30 {    
main:
        PUSH     {R7,LR}
//   31   DisableInterrupts;
        CPSID    I
//   32     
//   33   //模块初始化
//   34   HardwareInit(); 
        BL       HardwareInit
//   35   
//   36   //开机状态选择
//   37   Status_Init();  
        BL       Status_Init
//   38   
//   39   EnableInterrupts;
        CPSIE    I
        B.N      ??main_0
//   40 
//   41   while(1)
//   42    {  
//   43       //-------------无线部分---------------
//   44         // 发送指令
//   45          if(SendCommand != 0)
//   46            { 
//   47              if(Command_Cnt == 0)
//   48                {
//   49                   if(SendCommand>=Command_Start && SendCommand<=Command_End)    Command_Cnt = 3;
//   50                   else  Command_Cnt = 1;
??main_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   51                }
//   52                
//   53              Commu_Onetime(SendCommand); 
??main_2:
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        BL       Commu_Onetime
//   54              
//   55              Command_Cnt--;
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   56              if(Command_Cnt == 0)    SendCommand = 0;
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_3
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   57            }
//   58               
//   59          //双车距离通信
//   60          Commun_Shift();
??main_3:
        BL       Commun_Shift
//   61 
//   62          //发送数据到电脑
//   63       //   SendData();  
//   64         
//   65      
//   66       //--------------按键调参-------------
//   67          Keyboard(); 
        BL       Keyboard
//   68     
//   69           
//   70       //--------------OLED显示-------------
//   71          if(Count%30 == 0)
        MOVS     R0,#+30
        LDR.N    R1,??DataTable1_2
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_2
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??main_0
//   72             OLED_while(Page_Slt);     
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+0]
        BL       OLED_while
??main_0:
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_3
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_2
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+104
        CMP      R0,#+47
        BCS.N    ??main_1
        MOVS     R0,#+3
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
        B.N      ??main_2
//   73    } 
//   74 }
//   75 
//   76 
//   77 
//   78 //--------开机状态选择--------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void Status_Init()
//   80 {
Status_Init:
        PUSH     {R7,LR}
//   81   DialSwitch_init();
        BL       DialSwitch_init
//   82   
//   83   //老大老二选择
//   84   Family_Status = 1 - LPLD_GPIO_Input_b(PTD, 7);  
        MOVS     R1,#+7
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable1_5
        STRB     R0,[R1, #+0]
//   85   Turn_Around   = 1 - LPLD_GPIO_Input_b(PTD, 6);
        MOVS     R1,#+6
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   86   
//   87   if(Turn_Around == 0)
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Status_Init_0
//   88     {   
//   89        Commu_Onetime(Start_Admit);
        MOVS     R0,#+101
        BL       Commu_Onetime
//   90        LPLD_LPTMR_DelayMs(500);
        MOV      R0,#+500
        BL       LPLD_LPTMR_DelayMs
//   91        pit_10ms_init();    
        BL       pit_10ms_init
//   92     }
//   93   
//   94   //速度档位选择
//   95   Spd_Switch_A  = 1 - LPLD_GPIO_Input_b(PTD, 9);
??Status_Init_0:
        MOVS     R1,#+9
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   96   Spd_Switch_B  = 1 - LPLD_GPIO_Input_b(PTD, 8);
        MOVS     R1,#+8
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable1_8
        STRB     R0,[R1, #+0]
//   97   Spd_Switch = Spd_Switch_A*2 + Spd_Switch_B + 1;
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable1_8
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0, LSL #+1
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_9
        STRB     R0,[R1, #+0]
//   98   
//   99   //方案选择
//  100   Single_Run = No;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10
        STRB     R0,[R1, #+0]
//  101   OverTake_Island = 4*LPLD_GPIO_Input_b(PTD, 11);
        MOVS     R1,#+11
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable1_11
        STRB     R0,[R1, #+0]
//  102   OverTake_Straight = LPLD_GPIO_Input_b(PTD, 10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_4  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//  103 
//  104   if(OverTake_Straight == Yes)
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Status_Init_1
//  105     {
//  106       Case2_Ahead_KeepSide = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_13
        STRB     R0,[R1, #+0]
//  107       Case2_Behind_KeepSide = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
//  108     }
//  109 }
??Status_Init_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Command_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     SendCommand

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     Page_Slt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Spd_Switch_A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     Spd_Switch_B

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     Spd_Switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     Single_Run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     OverTake_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     OverTake_Straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     Case2_Behind_KeepSide

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  110 
//  111 
// 
//  23 bytes in section .bss
//   1 byte  in section .data
// 358 bytes in section .text
// 
// 358 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
