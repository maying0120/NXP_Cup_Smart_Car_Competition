///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Rudder_Ctrl.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Rudder_Ctrl.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\Rudder_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Distance
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d

        PUBLIC Angle
        PUBLIC Rudder_Ctrl
        PUBLIC xy

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Rudder_Ctrl.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 struct Rudder Angle;
Angle:
        DS8 60
//    4 extern int Distance;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 int xy = 800;
xy:
        DATA
        DC32 800
//    6 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    7 void Rudder_Ctrl()
//    8 {
Rudder_Ctrl:
        PUSH     {R7,LR}
//    9   //PID调节
//   10   if(fabs(Distance) < 10)
        LDR.N    R0,??Rudder_Ctrl_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??Rudder_Ctrl_0+0xC  ;; 0x40240000
        BL       __aeabi_cdcmple
        BCS.N    ??Rudder_Ctrl_1
//   11     Angle.P = 4.0;
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+48]
        B.N      ??Rudder_Ctrl_2
//   12   else
//   13     Angle.P = 4.0 + 0.3*fabs(fabs(Distance)-10);
??Rudder_Ctrl_1:
        LDR.N    R0,??Rudder_Ctrl_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??Rudder_Ctrl_0+0x14  ;; 0xc0240000
        BL       __aeabi_dadd
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+858993459
        LDR.N    R3,??Rudder_Ctrl_0+0x18  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??Rudder_Ctrl_0+0x1C  ;; 0x40100000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STR      R0,[R1, #+48]
//   14   if(Angle.P > 9)
??Rudder_Ctrl_2:
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        VLDR     S0,[R0, #+48]
        VLDR.W   S1,??Rudder_Ctrl_0  ;; 0x41100001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Rudder_Ctrl_3
//   15     Angle.P = 9; 
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDR.N    R1,??Rudder_Ctrl_0+0x20  ;; 0x41100000
        STR      R1,[R0, #+48]
//   16   
//   17   Angle.D = 0;
??Rudder_Ctrl_3:
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
//   18   Angle.error = -Distance;
        LDR.N    R0,??Rudder_Ctrl_0+0x8
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STR      R0,[R1, #+0]
//   19   Angle.drror = Angle.error - Angle.error_pre[5];
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STR      R0,[R1, #+4]
//   20   Angle.RudderPWM = (uint16)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror); 
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        VLDR     S1,[R0, #+48]
        VLDR.W   S2,??Rudder_Ctrl_0+0x4  ;; 0x4473c000
        VMLA.F32 S2,S0,S1
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        VLDR     S0,[R0, #+4]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        VLDR     S1,[R0, #+52]
        VMLA.F32 S2,S0,S1
        VCVT.S32.F32 S0,S2
        VMOV     R0,S0
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STRH     R0,[R1, #+56]
//   21   
//   22   //参数更新
//   23   Angle.error_pre[9] = Angle.error;
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STR      R0,[R1, #+44]
//   24   for(uint8 i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Rudder_Ctrl_4
//   25     Angle.error_pre[i] = Angle.error_pre[i];
??Rudder_Ctrl_5:
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+8]
        LDR.N    R2,??Rudder_Ctrl_0+0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+8]
        ADDS     R0,R0,#+1
??Rudder_Ctrl_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Rudder_Ctrl_5
//   26   
//   27   //限幅保护  
//   28   if(Angle.RudderPWM > Rudder_Max)
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDRH     R0,[R0, #+56]
        MOVW     R1,#+1061
        CMP      R0,R1
        BLT.N    ??Rudder_Ctrl_6
//   29     Angle.RudderPWM = Rudder_Max;
        MOVW     R0,#+1060
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STRH     R0,[R1, #+56]
        B.N      ??Rudder_Ctrl_7
//   30   else if(Angle.RudderPWM < Rudder_Min)
??Rudder_Ctrl_6:
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDRH     R0,[R0, #+56]
        CMP      R0,#+880
        BGE.N    ??Rudder_Ctrl_7
//   31     Angle.RudderPWM = Rudder_Min;
        MOV      R0,#+880
        LDR.N    R1,??Rudder_Ctrl_0+0x10
        STRH     R0,[R1, #+56]
//   32   
//   33   LPLD_FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, Angle.RudderPWM);
??Rudder_Ctrl_7:
        LDR.N    R0,??Rudder_Ctrl_0+0x10
        LDRH     R2,[R0, #+56]
        MOVS     R1,#+0
        LDR.N    R0,??Rudder_Ctrl_0+0x24  ;; 0x400b9000
        BL       LPLD_FTM_PWM_ChangeDuty
//   34 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??Rudder_Ctrl_0:
        DC32     0x41100001
        DC32     0x4473c000
        DC32     Distance
        DC32     0x40240000
        DC32     Angle
        DC32     0xc0240000
        DC32     0x3fd33333
        DC32     0x40100000
        DC32     0x41100000
        DC32     0x400b9000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   35 
// 
//  60 bytes in section .bss
//   4 bytes in section .data
// 332 bytes in section .text
// 
// 332 bytes of CODE memory
//  64 bytes of DATA memory
//
//Errors: none
//Warnings: none
