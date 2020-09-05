///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       21/Feb/2017  14:00:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\app\Uart_Rec.c
//    Command line =  
//        "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\app\Uart_Rec.c"
//        -D LPLD_K60 -D USE_K60F12 -lCN "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\FLASH\List\"
//        -lB "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\FLASH\List\"
//        -o "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\app\" -I
//        "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\CPU\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\common\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\LPLD\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\LPLD\HW\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\LPLD\DEV\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\LPLD\FUNC\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\uCOS-II\Source\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\FatFs\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\FatFs\option\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\USB\common\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\USB\driver\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\USB\descriptor\"
//        -I "E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\..\..\..\lib\USB\class\"
//        -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        E:\chase
//        after\LPLD_OSKinetis_V3\project\chase_after合并程序1\iar\FLASH\List\Uart_Rec.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar

        PUBLIC Pc_cmd
        PUBLIC uart_isr
        PUBLIC y

// E:\chase after\LPLD_OSKinetis_V3\project\chase_after合并程序1\app\Uart_Rec.c
//    1 #include "Uart_Rec.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int Pc_cmd = 0;
Pc_cmd:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int y;
y:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void uart_isr()
//    6 {
uart_isr:
        PUSH     {R7,LR}
//    7    y++;
        LDR.N    R0,??uart_isr_0
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??uart_isr_0
        STR      R0,[R1, #+0]
//    8    Pc_cmd = LPLD_UART_GetChar(UART1);
        LDR.N    R0,??uart_isr_0+0x4  ;; 0x4006b000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??uart_isr_0+0x8
        STR      R0,[R1, #+0]
//    9 }
        POP      {R0,PC}          ;; return
        DATA
??uart_isr_0:
        DC32     y
        DC32     0x4006b000
        DC32     Pc_cmd

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
// 36 bytes in section .text
// 
// 36 bytes of CODE memory
//  8 bytes of DATA memory
//
//Errors: none
//Warnings: none
