///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\app\PIT.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\app\PIT.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -lB
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -o
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Dis_Calc
        EXTERN Motor_Ctrl
        EXTERN Rudder_Ctrl
        EXTERN Spd_Get

        PUBLIC Count
        PUBLIC Distance
        PUBLIC pit_5ms

// C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\app\PIT.c
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
//    6 /*
//    7 ���ܣ�10ms����һ�θ��жϺ���������ѭ����ͼ��ɼ����Ƕȡ��ٶȿ���
//    8 ����ֵ���� 
//    9 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   10 void pit_5ms()
//   11 { 
pit_5ms:
        PUSH     {R7,LR}
//   12   Spd_Get(); 
        BL       Spd_Get
//   13   Dis_Calc();
        BL       Dis_Calc
//   14   Rudder_Ctrl();
        BL       Rudder_Ctrl
//   15   Motor_Ctrl();  
        BL       Motor_Ctrl
//   16   Count++; 
        LDR.N    R0,??pit_5ms_0
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??pit_5ms_0
        STR      R0,[R1, #+0]
//   17 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??pit_5ms_0:
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
// 36 bytes in section .text
// 
// 36 bytes of CODE memory
//  8 bytes of DATA memory
//
//Errors: none
//Warnings: none
