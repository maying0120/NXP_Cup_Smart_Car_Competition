///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Rudder_Ctrl.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Rudder_Ctrl.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Rudder_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Distance
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Ramp
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN exp
        EXTERN trend

        PUBLIC Angle
        PUBLIC Elder_Rudder_Ctrl
        PUBLIC Rudder_Ctrl
        PUBLIC Rudder_Err
        PUBLIC Rudder_Max
        PUBLIC Rudder_Mid
        PUBLIC Rudder_Min
        PUBLIC Younger_Rudder_Ctrl

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Rudder_Ctrl.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int   Rudder_Err; 
Rudder_Err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int   Rudder_Mid;    
Rudder_Mid:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int   Rudder_Min;  
Rudder_Min:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 int   Rudder_Max;
Rudder_Max:
        DS8 4
//    7 //int   xy = 3540;
//    8 extern uint8 Flag_Island;
//    9 extern int Distance;
//   10 extern int Leave_trend;
//   11 extern uint8 Turn_Around;
//   12 extern uint8 Family_Status;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 struct Rudder Angle;
Angle:
        DS8 60
//   14 extern int trend;
//   15 extern uint8 Flag_Ramp;
//   16 extern int Flag_Island_Confirm;
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void Rudder_Ctrl()
//   19 {
Rudder_Ctrl:
        PUSH     {R7,LR}
//   20    if(Family_Status == 0)
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Rudder_Ctrl_0
//   21        Elder_Rudder_Ctrl(); //老大的舵机控制
        BL       Elder_Rudder_Ctrl
        B.N      ??Rudder_Ctrl_1
//   22    else 
//   23        Younger_Rudder_Ctrl(); //老二的舵机控制
??Rudder_Ctrl_0:
        BL       Younger_Rudder_Ctrl
//   24 }
??Rudder_Ctrl_1:
        POP      {R0,PC}          ;; return
//   25 
//   26 /**********老大的舵机控制***********/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   27 void Elder_Rudder_Ctrl()
//   28 {
Elder_Rudder_Ctrl:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D9}
//   29   Rudder_Err = 500;
        MOV      R0,#+500
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   30   Rudder_Mid = 3535;  //  左增右减
        MOVW     R0,#+3535
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   31   Rudder_Min = Rudder_Mid - Rudder_Err;
        LDR.W    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   32   Rudder_Max = Rudder_Mid + Rudder_Err; 
        LDR.W    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   33    
//   34   //PID调节
//   35   Angle.error = Distance;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   36   Angle.drror = Angle.error - Angle.pre_error[8];
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_6
        LDR      R1,[R1, #+40]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_6
        STR      R0,[R1, #+4]
//   37   
//   38   //参数更新
//   39   for(uint8 i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Elder_Rudder_Ctrl_0
//   40     Angle.pre_error[i] = Angle.pre_error[i+1];
??Elder_Rudder_Ctrl_1:
        LDR.W    R1,??DataTable2_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+12]
        LDR.W    R2,??DataTable2_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+8]
        ADDS     R0,R0,#+1
??Elder_Rudder_Ctrl_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Elder_Rudder_Ctrl_1
//   41   Angle.pre_error[9] = Angle.error;
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_6
        STR      R0,[R1, #+44]
//   42   
//   43   if(fabs(Distance) < 5)
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_7  ;; 0x40140000
        BL       __aeabi_cdcmple
        BCS.N    ??Elder_Rudder_Ctrl_2
//   44     Angle.P = 5;
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_8  ;; 0x40a00000
        STR      R1,[R0, #+48]
        B.N      ??Elder_Rudder_Ctrl_3
//   45   else 
//   46     Angle.P = 0.008667*fabs(Distance)*fabs(Distance) - 0.1033*fabs(Distance) + 6.3;    
??Elder_Rudder_Ctrl_2:
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        VMOV     D8,R0,R1
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        VMOV     D9,R0,R1
        VMOV     R2,R3,D8
        LDR.N    R0,??DataTable2_9  ;; 0xc6f7a0b
        LDR.N    R1,??DataTable2_10  ;; 0x3f81c001
        BL       __aeabi_dmul
        VMOV     R2,R3,D9
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.N    R2,??DataTable2_11  ;; 0x69ad42c4
        LDR.N    R3,??DataTable2_12  ;; 0x3fba71de
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_13  ;; 0x40193333
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+48]
//   47   if(Angle.P < 5)   
??Elder_Rudder_Ctrl_3:
        LDR.N    R0,??DataTable2_6
        VLDR     S0,[R0, #+48]
        VMOV.F32 S1,#5.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??Elder_Rudder_Ctrl_4
//   48     Angle.P = 5;
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_8  ;; 0x40a00000
        STR      R1,[R0, #+48]
//   49   if(Angle.P > 12)
??Elder_Rudder_Ctrl_4:
        LDR.N    R0,??DataTable2_6
        VLDR     S0,[R0, #+48]
        VLDR.W   S1,??DataTable1  ;; 0x41400001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Elder_Rudder_Ctrl_5
//   50     Angle.P = 12;
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_14  ;; 0x41400000
        STR      R1,[R0, #+48]
//   51   Angle.P *= 3;
??Elder_Rudder_Ctrl_5:
        LDR.N    R0,??DataTable2_6
        VLDR     S0,[R0, #+48]
        VMOV.F32 S1,#3.0
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable2_6
        VSTR     S0,[R0, #+48]
//   52 
//   53 
//   54 if(trend==20)
        LDR.N    R0,??DataTable2_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+20
        BNE.N    ??Elder_Rudder_Ctrl_6
//   55     Angle.D = 30;
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_16  ;; 0x41f00000
        STR      R1,[R0, #+52]
        B.N      ??Elder_Rudder_Ctrl_7
//   56   else
//   57     Angle.D = 100;
??Elder_Rudder_Ctrl_6:
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_17  ;; 0x42c80000
        STR      R1,[R0, #+52]
//   58   
//   59 
//   60   Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);  
??Elder_Rudder_Ctrl_7:
        LDR.N    R0,??DataTable2_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable2_6
        VLDR     S1,[R0, #0]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable2_6
        VLDR     S2,[R0, #+48]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable2_6
        VLDR     S1,[R0, #+4]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable2_6
        VLDR     S2,[R0, #+52]
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
//   61   
//   62   //限幅保护  
//   63   if(Angle.RudderPWM > Rudder_Max)
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        LDRH     R1,[R1, #+56]
        CMP      R0,R1
        BGE.N    ??Elder_Rudder_Ctrl_8
//   64     Angle.RudderPWM = Rudder_Max;
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
        B.N      ??Elder_Rudder_Ctrl_9
//   65   else if(Angle.RudderPWM < Rudder_Min)
??Elder_Rudder_Ctrl_8:
        LDR.N    R0,??DataTable2_6
        LDRH     R0,[R0, #+56]
        LDR.N    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Elder_Rudder_Ctrl_9
//   66     Angle.RudderPWM = Rudder_Min;
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
//   67   
//   68   //Angle.RudderPWM = xy;
//   69   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
??Elder_Rudder_Ctrl_9:
        LDR.N    R0,??DataTable2_6
        LDRH     R2,[R0, #+56]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_18  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//   70 }
        VPOP     {D8-D9}
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x41400001
//   71 
//   72 
//   73 /***********老二舵机控制************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void Younger_Rudder_Ctrl()
//   75 {     
Younger_Rudder_Ctrl:
        PUSH     {R7,LR}
//   76   Rudder_Err = 500;
        MOV      R0,#+500
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   77   Rudder_Mid = 2755; 
        MOVW     R0,#+2755
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   78   Rudder_Min = Rudder_Mid - Rudder_Err;
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   79   Rudder_Max = Rudder_Mid + Rudder_Err;
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   80   
//   81   //PID调节
//   82   Angle.error = Distance;
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   83   Angle.drror = Angle.error - Angle.pre_error[8];
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+40]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+4]
//   84   
//   85   //参数更新
//   86   for(uint8 i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Younger_Rudder_Ctrl_0
//   87     Angle.pre_error[i] = Angle.pre_error[i+1];
??Younger_Rudder_Ctrl_1:
        LDR.N    R1,??DataTable2_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+12]
        LDR.N    R2,??DataTable2_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+8]
        ADDS     R0,R0,#+1
??Younger_Rudder_Ctrl_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Younger_Rudder_Ctrl_1
//   88   Angle.pre_error[9] = Angle.error;
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+44]
//   89   
//   90   Angle.P = 14.5*exp(0.0351*fabs(Distance));    
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.N    R2,??DataTable2_19  ;; 0x902de00d
        LDR.N    R3,??DataTable2_20  ;; 0x3fa1f8a0
        BL       __aeabi_dmul
        VMOV     D0,R0,R1
        BL       exp
        VMOV     R2,R3,D0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_21  ;; 0x402d0000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+48]
//   91   if(Flag_Island == 1) Angle.P /= 1.0; //环岛处理  
        LDR.N    R0,??DataTable2_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Younger_Rudder_Ctrl_2
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_23  ;; 0x3ff00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+48]
//   92   if(Flag_Ramp == 2)   Angle.P *= 2.5; //坡道处理
??Younger_Rudder_Ctrl_2:
        LDR.N    R0,??DataTable2_24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Younger_Rudder_Ctrl_3
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_25  ;; 0x40040000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+48]
//   93   
//   94   if(fabs(Distance)<=4 && fabs(Angle.drror)<3)
??Younger_Rudder_Ctrl_3:
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.N    R3,??DataTable2_26  ;; 0x40100000
        BL       __aeabi_cdcmple
        BCS.N    ??Younger_Rudder_Ctrl_4
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_27  ;; 0x40080000
        BL       __aeabi_cdcmple
        BCS.N    ??Younger_Rudder_Ctrl_4
//   95     Angle.D = 20;
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_28  ;; 0x41a00000
        STR      R1,[R0, #+52]
        B.N      ??Younger_Rudder_Ctrl_5
//   96   else
//   97     Angle.D = 80;
??Younger_Rudder_Ctrl_4:
        LDR.N    R0,??DataTable2_6
        LDR.N    R1,??DataTable2_29  ;; 0x42a00000
        STR      R1,[R0, #+52]
//   98   
//   99   Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);   
??Younger_Rudder_Ctrl_5:
        LDR.N    R0,??DataTable2_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable2_6
        VLDR     S1,[R0, #0]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable2_6
        VLDR     S2,[R0, #+48]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable2_6
        VLDR     S1,[R0, #+4]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable2_6
        VLDR     S2,[R0, #+52]
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
//  100   
//  101 //限幅保护  
//  102   if(Angle.RudderPWM > Rudder_Max)
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        LDRH     R1,[R1, #+56]
        CMP      R0,R1
        BGE.N    ??Younger_Rudder_Ctrl_6
//  103     Angle.RudderPWM = Rudder_Max;
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
        B.N      ??Younger_Rudder_Ctrl_7
//  104   else if(Angle.RudderPWM < Rudder_Min)
??Younger_Rudder_Ctrl_6:
        LDR.N    R0,??DataTable2_6
        LDRH     R0,[R0, #+56]
        LDR.N    R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Younger_Rudder_Ctrl_7
//  105     Angle.RudderPWM = Rudder_Min;
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+56]
//  106   
//  107   //Angle.    RudderPWM = xy;
//  108   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
??Younger_Rudder_Ctrl_7:
        LDR.N    R0,??DataTable2_6
        LDRH     R2,[R0, #+56]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_18  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//  109 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     Rudder_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Rudder_Mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Rudder_Min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Rudder_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40140000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0xc6f7a0b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x3f81c001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x69ad42c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x3fba71de

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x40193333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     trend

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     0x902de00d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     0x3fa1f8a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     0x402d0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     0x40100000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     0x40080000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     0x42a00000

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
//    76 bytes in section .bss
// 1 042 bytes in section .text
// 
// 1 042 bytes of CODE memory
//    76 bytes of DATA memory
//
//Errors: none
//Warnings: none
