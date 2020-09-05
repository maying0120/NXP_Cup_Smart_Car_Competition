///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Motor_Ctrl.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Motor_Ctrl.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Motor_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Ahead_Spd_Set
        EXTERN Behind_Spd_Set
        EXTERN Elder_Spd_Ctrl
        EXTERN Family_Status
        EXTERN Motor_Output
        EXTERN Turn_Around
        EXTERN Younger_Spd_Ctrl

        PUBLIC Motor_Ctrl

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Motor_Ctrl.c
//    1 #include "Includes.h"
//    2 
//    3 extern uint8 Turn_Around;
//    4 extern uint8 Family_Status;
//    5 
//    6 /*
//    7 Function：速度控制总函数
//    8 Return：Null
//    9 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   10 void Motor_Ctrl()
//   11 {   
Motor_Ctrl:
        PUSH     {R7,LR}
//   12    //---速度设置---//
//   13    if(Turn_Around == 0)
        LDR.N    R0,??Motor_Ctrl_0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Motor_Ctrl_1
//   14       Ahead_Spd_Set();   //前车速度设置
        BL       Ahead_Spd_Set
        B.N      ??Motor_Ctrl_2
//   15    else 
//   16       Behind_Spd_Set();  //后车速度设置
??Motor_Ctrl_1:
        BL       Behind_Spd_Set
//   17    
//   18    //---PIDT控制---//
//   19    if(Family_Status == 0)
??Motor_Ctrl_2:
        LDR.N    R0,??Motor_Ctrl_0+0x4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Motor_Ctrl_3
//   20       Elder_Spd_Ctrl();   //老大PIDT
        BL       Elder_Spd_Ctrl
        B.N      ??Motor_Ctrl_4
//   21    else
//   22       Younger_Spd_Ctrl(); //老二PIDT
??Motor_Ctrl_3:
        BL       Younger_Spd_Ctrl
//   23   
//   24    //-----输出-----//
//   25    Motor_Output();
??Motor_Ctrl_4:
        BL       Motor_Output
//   26 }
        POP      {R0,PC}          ;; return
        DATA
??Motor_Ctrl_0:
        DC32     Turn_Around
        DC32     Family_Status

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   27 
//   28 
//   29 
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
