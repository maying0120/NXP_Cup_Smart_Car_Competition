///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Pit_5ms.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Pit_5ms.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Pit_5ms.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AveEmax_Calcu
        EXTERN Cnt_Encoder
        EXTERN Dis_Calc
        EXTERN Motor_Ctrl
        EXTERN Rudder_Ctrl
        EXTERN SendCommand
        EXTERN Set_SensorPara
        EXTERN Spd_Get
        EXTERN Sum_Distance
        EXTERN Turn_Around

        PUBLIC Count
        PUBLIC Stop_Distance
        PUBLIC Stop_Isr
        PUBLIC isrcnt
        PUBLIC pit_10ms

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Pit_5ms.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int Count = 0;
Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int Stop_Distance = 0;
Stop_Distance:
        DS8 4
//    5 extern int Ms100_Distance;
//    6 extern uint16 Ultra_Distance;
//    7 extern uint8 Turn_Around;
//    8 extern uint8 OverTake;
//    9 extern int Ultra_Count;
//   10 extern uint8 SendCommand_Arise;
//   11 extern uint8 SendData_Clear;
//   12 extern uint8 SendCommand_Arise_Cnt;
//   13 extern uint8 SendCommand;
//   14 extern int Cnt_Encoder;
//   15 extern long int Sum_Distance;
//   16 
//   17 /*
//   18 功能：10ms触发一次该中断函数，周期循环：路径采集、角度、速度控制
//   19 返回值：无 
//   20 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void pit_10ms()
//   22 {  
pit_10ms:
        PUSH     {R7,LR}
//   23     //开机采集10次peak,求平均值
//   24     if(Count<10)
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??pit_10ms_0
//   25       {
//   26          Set_SensorPara(Count);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Set_SensorPara
//   27          if(Count == 9)
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??pit_10ms_1
//   28             AveEmax_Calcu();          
        BL       AveEmax_Calcu
        B.N      ??pit_10ms_1
//   29       }
//   30     
//   31     //周期循环：路径采集、角度、速度控制
//   32     else
//   33       {
//   34          Spd_Get(); 
??pit_10ms_0:
        BL       Spd_Get
//   35          Rudder_Ctrl();
        BL       Rudder_Ctrl
//   36          Motor_Ctrl();    
        BL       Motor_Ctrl
//   37          Dis_Calc();       //AD采样放在while(1)Limian
        BL       Dis_Calc
//   38       }
//   39 
//   40 
//   41     Cnt_Encoder = 1;
??pit_10ms_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   42     Count++;
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   43     if(Count>60000)
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+60001
        CMP      R0,R1
        BLT.N    ??pit_10ms_2
//   44        Count = 1000;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   45 }
??pit_10ms_2:
        POP      {R0,PC}          ;; return
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 int isrcnt;
isrcnt:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void Stop_Isr()
//   49 {
//   50   isrcnt++;
Stop_Isr:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   51    if(Sum_Distance > 10*10000)
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x186a1
        CMP      R0,R1
        BLT.N    ??Stop_Isr_0
//   52      {
//   53         Stop_Distance = Pulse_Distance*100; 
        MOV      R0,#+1000
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//   54         if(Turn_Around == 0)
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Stop_Isr_0
//   55           SendCommand = Ahead_Stop;
        MOVS     R0,#+110
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+0]
//   56      }
//   57 }
??Stop_Isr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     Cnt_Encoder

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     isrcnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     Sum_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x186a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Stop_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     SendCommand

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  12 bytes in section .bss
// 164 bytes in section .text
// 
// 164 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
