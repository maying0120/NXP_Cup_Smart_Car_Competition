///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:38
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Pit_5ms.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Pit_5ms.c"
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\"
//        -lB
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\"
//        -o
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\app\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\..\..\..\lib\USB\class\"
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Pit_5ms.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Dis_Calc
        EXTERN Motor_Ctrl
        EXTERN Rudder_Ctrl
        EXTERN Spd_Get

        PUBLIC Count
        PUBLIC Distance
        PUBLIC pit_10ms

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Pit_5ms.c
//    1 #include "Includes.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int Count = 0;
Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int Distance = 0;
Distance:
        DS8 4
//    6 
//    7 /*
//    8 功能：10ms触发一次该中断函数，周期循环：路径采集、角度、速度控制
//    9 返回值：无 
//   10 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   11 void pit_10ms()
//   12 {         
pit_10ms:
        PUSH     {R7,LR}
//   13   Spd_Get(); 
        BL       Spd_Get
//   14   Dis_Calc();
        BL       Dis_Calc
//   15   Rudder_Ctrl();
        BL       Rudder_Ctrl
//   16   Motor_Ctrl();  
        BL       Motor_Ctrl
//   17   Count++;
        LDR.N    R0,??pit_10ms_0
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit_10ms_0
        STR      R0,[R1, #+0]
//   18   if(Count>30000)
        LDR.N    R0,??pit_10ms_0
        LDR      R0,[R0, #+0]
        MOVW     R1,#+30001
        CMP      R0,R1
        BLT.N    ??pit_10ms_1
//   19      Count = 0;
        MOVS     R0,#+0
        LDR.N    R1,??pit_10ms_0
        STR      R0,[R1, #+0]
//   20 }
??pit_10ms_1:
        POP      {R0,PC}          ;; return
        DATA
??pit_10ms_0:
        DC32     Count

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
//  8 bytes in section .bss
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//  8 bytes of DATA memory
//
//Errors: none
//Warnings: none
