///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  11:48:01
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Motor_Ctrl.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Motor_Ctrl.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\Motor_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty

        PUBLIC Motor_Ctrl
        PUBLIC Spd
        PUBLIC Spd_Ctrl
        PUBLIC Spd_Get
        PUBLIC Spd_Set
        PUBLIC speed

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Motor_Ctrl.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 struct Speed Spd;
Spd:
        DS8 116
//    4 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 int speed = 400;
speed:
        DATA
        DC32 400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void Spd_Set()
//    7 {
//    8   Spd.target = speed;
Spd_Set:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//    9 }
        BX       LR               ;; return
//   10 
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void Spd_Ctrl()
//   13 {
//   14   //参数设定
//   15   Spd.tag_error = (int)(Spd.target-Spd.preTarget[5]);
Spd_Ctrl:
        LDR.N    R0,??DataTable3_1
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable3_1
        VLDR     S1,[R0, #+92]
        VSUB.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable3_1
        VSTR     S0,[R0, #+4]
//   16   Spd.I = 0.5; 
        LDR.N    R0,??DataTable3_1
        MOVS     R1,#+1056964608
        STR      R1,[R0, #+64]
//   17   Spd.P = 0;
        LDR.N    R0,??DataTable3_1
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
//   18   Spd.error = Spd.target - Spd.feedback;
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_1
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+8]
//   19   Spd.drror = Spd.feedback - Spd.pre_feedback[5];
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable3_1
        LDR      R1,[R1, #+40]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+12]
//   20   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Spd_Ctrl_0
//   21      Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
??Spd_Ctrl_1:
        LDR.N    R1,??DataTable3_1
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+24]
        LDR.N    R2,??DataTable3_1
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+20]
        ADDS     R0,R0,#+1
??Spd_Ctrl_0:
        CMP      R0,#+9
        BLT.N    ??Spd_Ctrl_1
//   22   Spd.pre_feedback[9] = Spd.feedback;
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+56]
//   23   
//   24   //增量式PID
//   25   Spd.MotorPWM += Spd.I*Spd.error + Spd.P*Spd.drror + Spd.T*Spd.tag_error;                
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+112]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.N    R0,??DataTable3_1
        VLDR     S1,[R0, #+8]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable3_1
        VLDR     S2,[R0, #+64]
        VMUL.F32 S1,S1,S2
        LDR.N    R0,??DataTable3_1
        VLDR     S2,[R0, #+12]
        VCVT.F32.S32 S2,S2
        LDR.N    R0,??DataTable3_1
        VLDR     S3,[R0, #+60]
        VMLA.F32 S1,S2,S3
        LDR.N    R0,??DataTable3_1
        VLDR     S2,[R0, #+4]
        VCVT.F32.S32 S2,S2
        LDR.N    R0,??DataTable3_1
        VLDR     S3,[R0, #+68]
        VMLA.F32 S1,S2,S3
        VADD.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        LDR.N    R1,??DataTable3_1
        STRH     R0,[R1, #+112]
//   26   
//   27   //棒棒
//   28   if(Spd.feedback+300 < Spd.target)
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+16]
        ADDS     R0,R0,#+300
        LDR.N    R1,??DataTable3_1
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Spd_Ctrl_2
//   29     Spd.MotorPWM = 9800;
        MOVW     R0,#+9800
        LDR.N    R1,??DataTable3_1
        STRH     R0,[R1, #+112]
        B.N      ??Spd_Ctrl_3
//   30   else if(Spd.feedback-300 > Spd.target)
??Spd_Ctrl_2:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_1
        LDR      R1,[R1, #+16]
        SUBS     R1,R1,#+300
        CMP      R0,R1
        BGE.N    ??Spd_Ctrl_3
//   31     Spd.MotorPWM = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRH     R0,[R1, #+112]
//   32 }
??Spd_Ctrl_3:
        BX       LR               ;; return
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void Motor_Ctrl()
//   35 {  
Motor_Ctrl:
        PUSH     {R7,LR}
//   36    Spd_Set();
        BL       Spd_Set
//   37    Spd_Ctrl();
        BL       Spd_Ctrl
//   38      
//   39    //限幅
//   40    if(Spd.MotorPWM > 9800)
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+112]
        MOVW     R1,#+9801
        CMP      R0,R1
        BLT.N    ??Motor_Ctrl_0
//   41      Spd.MotorPWM = 9800;
        MOVW     R0,#+9800
        LDR.N    R1,??DataTable3_1
        STRH     R0,[R1, #+112]
        B.N      ??Motor_Ctrl_1
//   42    else if(Spd.MotorPWM < 200)
??Motor_Ctrl_0:
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+112]
        CMP      R0,#+200
        BGE.N    ??Motor_Ctrl_1
//   43      Spd.MotorPWM = 200;
        MOVS     R0,#+200
        LDR.N    R1,??DataTable3_1
        STRH     R0,[R1, #+112]
//   44    
//   45    //输出
//   46    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
??Motor_Ctrl_1:
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   47    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, Spd.MotorPWM);
        LDR.N    R0,??DataTable3_1
        LDRH     R2,[R0, #+112]
        MOVS     R1,#+2
        LDR.N    R0,??DataTable3_2  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   48 }
        POP      {R0,PC}          ;; return
//   49 
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void Spd_Get()
//   52 { 
Spd_Get:
        PUSH     {R7,LR}
//   53   Spd.feedback = 65536 - LPLD_FTM_GetCounter(FTM2) ; 
        LDR.N    R0,??DataTable3_3  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        RSBS     R0,R0,#+65536
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+16]
//   54   if(Spd.feedback > 40000)
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+16]
        MOVW     R1,#+40001
        CMP      R0,R1
        BLT.N    ??Spd_Get_0
//   55     Spd.feedback = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+16]
//   56   LPLD_FTM_ClearCounter(FTM2);     
??Spd_Get_0:
        LDR.N    R0,??DataTable3_3  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   57 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x400b8000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   58 
//   59 
//   60 
// 
// 116 bytes in section .bss
//   4 bytes in section .data
// 400 bytes in section .text
// 
// 400 bytes of CODE memory
// 120 bytes of DATA memory
//
//Errors: none
//Warnings: none
