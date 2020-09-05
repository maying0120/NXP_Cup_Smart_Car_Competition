///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Jul/2017  15:31:59
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Rudder_Ctrl.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Rudder_Ctrl.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Rudder_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Case1_TurnSwitch_Dis
        EXTERN Case2_Ahead_KeepSide
        EXTERN Case2_Behind_KeepSide
        EXTERN EnterStrai_SumDis
        EXTERN Error
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Ramp
        EXTERN Island_Distance
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN Limit_Distance_EnterIsland
        EXTERN OverTake_Island
        EXTERN RampIn_Distance
        EXTERN Spd
        EXTERN Spd_DownLimit
        EXTERN Spd_Switch
        EXTERN Spd_UpLimit
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN final

        PUBLIC Angle
        PUBLIC Elder_Rudder_Ctrl
        PUBLIC Rudder_Ctrl
        PUBLIC Rudder_Err
        PUBLIC Rudder_Init
        PUBLIC Rudder_Max
        PUBLIC Rudder_Mid
        PUBLIC Rudder_Min
        PUBLIC Younger_Rudder_Ctrl
        PUBLIC xy

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Rudder_Ctrl.c
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

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 int   Rudder_Init;
Rudder_Init:
        DS8 4
//    8 extern uint8 Flag_Island;
//    9 extern uint8 Turn_Around;
//   10 extern uint8 Family_Status;
//   11 extern uint8 Flag_Ramp;
//   12 extern uint8 Spd_Switch;
//   13 extern uint8 final;
//   14 extern uint8 Spd_Set_ZeroStart;
//   15 extern uint8 Case2_Ahead_KeepSide;
//   16 extern uint8 Case2_Behind_KeepSide;
//   17 extern uint8 OverTake_Island;
//   18 extern int   Sum_Distance_EnterCurve;
//   19 extern int   Derivative_Error;
//   20 extern int   Error;
//   21 extern int   Leave_trend;
//   22 extern int   Flag_Island_Confirm;
//   23 extern int   EnterCurve_SumDis;
//   24 extern int   Flag_Island_Confirm_Last;
//   25 extern int   Pre_Error[];
//   26 extern int Case1_TurnSwitch_Dis;
//   27 extern long int   Sum_Distance;
//   28 extern int   RampIn_Distance;
//   29 extern int EnterStrai_SumDis;
//   30 
//   31 extern int  Limit_Distance_EnterCurve; 
//   32 extern int  Spd_UpLimit; 
//   33 extern int  Spd_DownLimit; 
//   34 extern int  Limit_Distance_EnterStrai; 
//   35 extern int  Spd_Straight;
//   36 
//   37 extern int Limit_Distance_EnterIsland; 
//   38 extern int Island_Spd_UpLimit; 
//   39 extern int Island_Spd_DownLimit;
//   40 extern int Island_Distance;
//   41 
//   42 extern float percent_ahead;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 struct Rudder Angle;
Angle:
        DS8 104
//   44 extern struct Speed  Spd;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   45 int xy = 5470;
xy:
        DATA
        DC32 5470
//   46 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void Rudder_Ctrl()
//   48 {
Rudder_Ctrl:
        PUSH     {R7,LR}
//   49    if(Family_Status == 0)
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Rudder_Ctrl_0
//   50        Elder_Rudder_Ctrl(); //老大的舵机控制
        BL       Elder_Rudder_Ctrl
        B.N      ??Rudder_Ctrl_1
//   51    else 
//   52        Younger_Rudder_Ctrl(); //老二的舵机控制
??Rudder_Ctrl_0:
        BL       Younger_Rudder_Ctrl
//   53 }
??Rudder_Ctrl_1:
        POP      {R0,PC}          ;; return
//   54 
//   55 
//   56 /**********老大的舵机控制***********/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void Elder_Rudder_Ctrl()
//   58 {
Elder_Rudder_Ctrl:
        PUSH     {R3-R7,LR}
//   59   Rudder_Err = 700;
        MOV      R0,#+700
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//   60   Rudder_Mid = 4530; //4655
        MOVW     R0,#+4530
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   61   
//   62   //坡道舵机修正
//   63   if(Flag_Ramp==1 && RampIn_Distance>=150*100)
        LDR.W    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Elder_Rudder_Ctrl_0
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        MOVW     R1,#+15000
        CMP      R0,R1
        BLT.N    ??Elder_Rudder_Ctrl_0
//   64     Rudder_Err *= 0.6;
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_3  ;; 0x3fe33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//   65 
//   66   //环岛内舵机打较修正
//   67   if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
??Elder_Rudder_Ctrl_0:
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_1
        LDR.W    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_1
        LDR.W    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_2
//   68     Rudder_Err *= 0.95;  
??Elder_Rudder_Ctrl_1:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable1_7  ;; 0x3fee6666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//   69   
//   70   Rudder_Min = Rudder_Mid - Rudder_Err; 
??Elder_Rudder_Ctrl_2:
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   71   Rudder_Max = Rudder_Mid + Rudder_Err;
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   72   Rudder_Init = Rudder_Mid;
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8
        STR      R0,[R1, #+0]
//   73   
//   74   //PID变量赋值  
//   75   if(EnterStrai_SumDis != 0)
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_3
//   76      Angle.error = 0.4*Error + 0.6*Angle.error;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable2_6  ;; 0x9999999a
        LDR.W    R3,??DataTable1_9  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_3  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
        B.N      ??Elder_Rudder_Ctrl_4
//   77   else
//   78      Angle.error = Error;
??Elder_Rudder_Ctrl_3:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   79   
//   80   Angle.drror = Angle.error - Angle.pre_error[8];
??Elder_Rudder_Ctrl_4:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+44]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//   81   if(Angle.drror >  4)       Angle.drror =  4;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        CMP      R0,#+5
        BLT.N    ??Elder_Rudder_Ctrl_5
        MOVS     R0,#+4
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//   82   if(Angle.drror < -4)       Angle.drror = -4;
??Elder_Rudder_Ctrl_5:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        CMN      R0,#+4
        BGE.N    ??Elder_Rudder_Ctrl_6
        MVNS     R0,#+3
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//   83   
//   84   
//   85   //变化率限幅
//   86   if(Angle.error-Angle.pre_error[9]>8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
??Elder_Rudder_Ctrl_6:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+48]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BLT.N    ??Elder_Rudder_Ctrl_7
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_7
        LDR.W    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_7
        LDR.W    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_7
//   87      Angle.error = Angle.pre_error[9]+8;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+48]
        ADDS     R0,R0,#+8
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
        B.N      ??Elder_Rudder_Ctrl_8
//   88   else if(Angle.error-Angle.pre_error[9]<-8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
??Elder_Rudder_Ctrl_7:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+48]
        SUBS     R0,R0,R1
        CMN      R0,#+8
        BGE.N    ??Elder_Rudder_Ctrl_8
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_8
        LDR.W    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_8
        LDR.W    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_8
//   89      Angle.error = Angle.pre_error[9]-8;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+48]
        SUBS     R0,R0,#+8
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   90 
//   91   if(Angle.error > Error_Limit)
??Elder_Rudder_Ctrl_8:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Elder_Rudder_Ctrl_9
//   92      Angle.error = Error_Limit;
        MOVS     R0,#+30
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   93   if(Angle.error < -Error_Limit)
??Elder_Rudder_Ctrl_9:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        CMN      R0,#+30
        BGE.N    ??Elder_Rudder_Ctrl_10
//   94      Angle.error = -Error_Limit;
        MVNS     R0,#+29
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   95   
//   96   
//   97   //变量更新  
//   98   for(uint8 i=0; i<9; i++)
??Elder_Rudder_Ctrl_10:
        MOVS     R0,#+0
        B.N      ??Elder_Rudder_Ctrl_11
//   99      Angle.pre_error[i] = Angle.pre_error[i+1];
??Elder_Rudder_Ctrl_12:
        LDR.W    R1,??DataTable2_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+16]
        LDR.W    R2,??DataTable2_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+12]
        ADDS     R0,R0,#+1
??Elder_Rudder_Ctrl_11:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Elder_Rudder_Ctrl_12
//  100   Angle.pre_error[9] = Angle.error;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+48]
//  101   
//  102 
//  103   //舵机PD参数设置  
//  104   float ramp_Rate1, ramp_Rate2,Start_P;
//  105   Start_P = 25 ;
        LDR.W    R6,??DataTable2_8  ;; 0x41c80000
//  106   ramp_Rate1 = 0.2 ;
        LDR.W    R4,??DataTable2_9  ;; 0x3e4ccccd
//  107   ramp_Rate2 = 0.2 ;
        LDR.W    R5,??DataTable2_9  ;; 0x3e4ccccd
//  108 
//  109   
//  110   if (fabs(Error) < 8)
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_10  ;; 0x40200000
        BL       __aeabi_cdcmple
        BCS.N    ??Elder_Rudder_Ctrl_13
//  111     Angle.P = Start_P;
        LDR.W    R0,??DataTable2_7
        STR      R6,[R0, #+92]
        B.N      ??Elder_Rudder_Ctrl_14
//  112   else if(fabs(Error) < 20)
??Elder_Rudder_Ctrl_13:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_11  ;; 0x40340000
        BL       __aeabi_cdcmple
        BCS.N    ??Elder_Rudder_Ctrl_15
//  113     Angle.P = Start_P + ramp_Rate1*(fabs(Error) - 8);
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_12  ;; 0xc0200000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
        B.N      ??Elder_Rudder_Ctrl_14
//  114   else
//  115     Angle.P = (Start_P + ramp_Rate1*12) + ramp_Rate2*(fabs(Error) - 20);//25 0.4
??Elder_Rudder_Ctrl_15:
        LDR.W    R0,??DataTable2_13  ;; 0x41400000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_14  ;; 0xc0340000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  116 
//  117   
//  118   //环岛超车前车舵机打较修正
//  119   if(OverTake_Island != 0)
??Elder_Rudder_Ctrl_14:
        LDR.W    R0,??DataTable2_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_16
//  120     if(Turn_Around == 0)
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_16
//  121       {
//  122         if(Flag_Island_Confirm!=0 || final!=0)
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_17
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_18
//  123           Rudder_Err *= 1.4;      
??Elder_Rudder_Ctrl_17:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable2_17  ;; 0x3ff66666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  124         if(Case1_TurnSwitch_Dis != 0)
??Elder_Rudder_Ctrl_18:
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_16
//  125           Rudder_Err *= 0.8;      
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable2_6  ;; 0x9999999a
        LDR.W    R3,??DataTable2_19  ;; 0x3fe99999
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  126       }
//  127   
//  128   if(EnterStrai_SumDis != 0)
??Elder_Rudder_Ctrl_16:
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_19
//  129      Angle.D = 80 ; // 80
        LDR.W    R0,??DataTable2_20  ;; 0x42a00000
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+96]
        B.N      ??Elder_Rudder_Ctrl_20
//  130   else
//  131      Angle.D = 100 ; //130   
??Elder_Rudder_Ctrl_19:
        LDR.W    R0,??DataTable2_21  ;; 0x42c80000
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+96]
//  132 
//  133     
//  134   //P参数修正
//  135    switch (Spd_Switch)
??Elder_Rudder_Ctrl_20:
        LDR.W    R0,??DataTable2_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Elder_Rudder_Ctrl_21
        BCC.N    ??Elder_Rudder_Ctrl_22
        CMP      R0,#+3
        BEQ.N    ??Elder_Rudder_Ctrl_23
        BCC.N    ??Elder_Rudder_Ctrl_24
        CMP      R0,#+4
        BEQ.N    ??Elder_Rudder_Ctrl_25
        B.N      ??Elder_Rudder_Ctrl_22
//  136      {
//  137       case 1: { }  break;
??Elder_Rudder_Ctrl_21:
        B.N      ??Elder_Rudder_Ctrl_26
//  138  
//  139       case 2: { }  break;
??Elder_Rudder_Ctrl_24:
        B.N      ??Elder_Rudder_Ctrl_26
//  140 
//  141       case 3: { }  break;
??Elder_Rudder_Ctrl_23:
        B.N      ??Elder_Rudder_Ctrl_26
//  142       
//  143       case 4: { }  break;
??Elder_Rudder_Ctrl_25:
        B.N      ??Elder_Rudder_Ctrl_26
//  144   
//  145       default:     break;
//  146      }
//  147 
//  148    //左右不对称修正
//  149   if(Error < 0)
??Elder_Rudder_Ctrl_22:
??Elder_Rudder_Ctrl_26:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Elder_Rudder_Ctrl_27
//  150     Angle.P *= 1.06;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_23  ;; 0x8f5c28f6
        LDR.W    R3,??DataTable2_24  ;; 0x3ff0f5c2
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
        B.N      ??Elder_Rudder_Ctrl_28
//  151   else
//  152     Angle.P *= 1.05;
??Elder_Rudder_Ctrl_27:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_25  ;; 0xcccccccd
        LDR.W    R3,??DataTable2_26  ;; 0x3ff0cccc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  153     
//  154    //速度对打角的修正系数
//  155     float Coeff;
//  156      Coeff = 0.15*( (Spd.feedback - Spd_DownLimit ) / ((Spd_UpLimit-Spd_DownLimit)) );     
??Elder_Rudder_Ctrl_28:
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable2_28
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_29
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable2_28
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        SDIV     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable2_30  ;; 0x3fc33333
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R6,R0
//  157     if(Coeff >  0.10)     Coeff =  0.10;
        MOVS     R0,R6
        LDR.W    R1,??DataTable2_31  ;; 0x3dcccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??Elder_Rudder_Ctrl_29
        LDR.W    R6,??DataTable2_31  ;; 0x3dcccccd
//  158     if(Coeff < -0.05)     Coeff = -0.05;
??Elder_Rudder_Ctrl_29:
        MOVS     R0,R6
        LDR.W    R1,??DataTable2_32  ;; 0xbd4ccccc
        BL       __aeabi_cfcmple
        BCS.N    ??Elder_Rudder_Ctrl_30
        LDR.W    R6,??DataTable2_33  ;; 0xbd4ccccd
//  159     Angle.P *= (1.0 + Coeff) ; 
??Elder_Rudder_Ctrl_30:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_34  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  160    
//  161    //直道超车前车快速打角
//  162    if(Case2_Ahead_KeepSide!=0 || Case2_Behind_KeepSide!=0)       Angle.P *= 0.7;
        LDR.W    R0,??DataTable2_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_31
        LDR.W    R0,??DataTable2_36
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_32
??Elder_Rudder_Ctrl_31:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable2_37  ;; 0x3fe66666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  163    if(Case2_Ahead_KeepSide!=0 && Turn_Around==0 && Error>0)      Angle.P *= 0.5;
??Elder_Rudder_Ctrl_32:
        LDR.W    R0,??DataTable2_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Elder_Rudder_Ctrl_33
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Rudder_Ctrl_33
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Elder_Rudder_Ctrl_33
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_38  ;; 0x3fe00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  164 
//  165    
//  166   //P限幅
//  167   if(Angle.P > 40)      Angle.P = 40;
??Elder_Rudder_Ctrl_33:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        LDR.W    R1,??DataTable2_39  ;; 0x42200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Elder_Rudder_Ctrl_34
        LDR.W    R0,??DataTable2_40  ;; 0x42200000
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  168   
//  169 
//  170   
//  171   //位置式PD
//  172   Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);   
??Elder_Rudder_Ctrl_34:
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+92]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+96]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
//  173   
//  174   
//  175 //限幅保护  
//  176   if(Angle.RudderPWM > Rudder_Max)
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDRH     R1,[R1, #+100]
        CMP      R0,R1
        BGE.N    ??Elder_Rudder_Ctrl_35
//  177     Angle.RudderPWM = Rudder_Max;
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
        B.N      ??Elder_Rudder_Ctrl_36
//  178   else if(Angle.RudderPWM < Rudder_Min)
??Elder_Rudder_Ctrl_35:
        LDR.W    R0,??DataTable2_7
        LDRH     R0,[R0, #+100]
        LDR.W    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Elder_Rudder_Ctrl_36
//  179     Angle.RudderPWM = Rudder_Min;
        LDR.W    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
//  180   
//  181   //Angle.RudderPWM = xy;
//  182   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
??Elder_Rudder_Ctrl_36:
        LDR.W    R0,??DataTable2_7
        LDRH     R2,[R0, #+100]
        MOVS     R1,#+1
        LDR.W    R0,??DataTable2_41  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//  183 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Rudder_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     RampIn_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     Rudder_Init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x3fd99999
//  184 
//  185 
//  186 /***********老二舵机控制************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 void Younger_Rudder_Ctrl()
//  188 {        
Younger_Rudder_Ctrl:
        PUSH     {R3-R7,LR}
//  189   Rudder_Err = 800;
        MOV      R0,#+800
        LDR.W    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  190   Rudder_Mid = 6040; //4655
        MOVW     R0,#+6040
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//  191   
//  192   //坡道舵机修正
//  193   if(Flag_Ramp==1 && RampIn_Distance>=150*100)
        LDR.W    R0,??DataTable2_43
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Younger_Rudder_Ctrl_0
        LDR.W    R0,??DataTable2_44
        LDR      R0,[R0, #+0]
        MOVW     R1,#+15000
        CMP      R0,R1
        BLT.N    ??Younger_Rudder_Ctrl_0
//  194     Rudder_Err *= 0.6;  
        LDR.W    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable2_45  ;; 0x3fe33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  195   
//  196   //环岛内舵机打较修正
//  197   if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
??Younger_Rudder_Ctrl_0:
        LDR.W    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_1
        LDR.W    R0,??DataTable2_47
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_1
        LDR.W    R0,??DataTable2_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_2
//  198     Rudder_Err *= 0.90;  
??Younger_Rudder_Ctrl_1:
        LDR.W    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable2_25  ;; 0xcccccccd
        LDR.W    R3,??DataTable2_49  ;; 0x3feccccc
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  199   
//  200   if(OverTake_Island != 0)
??Younger_Rudder_Ctrl_2:
        LDR.W    R0,??DataTable2_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_3
//  201     if(Turn_Around == 0)
        LDR.W    R0,??DataTable2_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_3
//  202       { 
//  203         if(Flag_Island_Confirm != 0)
        LDR.W    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_3
//  204             Rudder_Err *= 1.5;  
        LDR.W    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_50  ;; 0x3ff80000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  205       }
//  206   
//  207   Rudder_Min = Rudder_Mid - Rudder_Err; 
??Younger_Rudder_Ctrl_3:
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_42
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//  208   Rudder_Max = Rudder_Mid + Rudder_Err;
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_42
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  209   Rudder_Init = Rudder_Mid;
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_51
        STR      R0,[R1, #+0]
//  210   
//  211   //PID变量赋值  
//  212   if(EnterStrai_SumDis != 0)
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_4
//  213      Angle.error = 0.3*Error + 0.7*Angle.error;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable2_52  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable2_37  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
        B.N      ??Younger_Rudder_Ctrl_5
//  214   else
//  215      Angle.error = Error;
??Younger_Rudder_Ctrl_4:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//  216   
//  217   Angle.drror = Angle.error - Angle.pre_error[8];
??Younger_Rudder_Ctrl_5:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+44]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//  218   if(Angle.drror >  4)       Angle.drror =  4;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        CMP      R0,#+5
        BLT.N    ??Younger_Rudder_Ctrl_6
        MOVS     R0,#+4
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//  219   if(Angle.drror < -4)       Angle.drror = -4;
??Younger_Rudder_Ctrl_6:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        CMN      R0,#+4
        BGE.N    ??Younger_Rudder_Ctrl_7
        MVNS     R0,#+3
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+4]
//  220   
//  221   
//  222   //变化率限幅
//  223   if(Angle.error-Angle.pre_error[9]>8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
??Younger_Rudder_Ctrl_7:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+48]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BLT.N    ??Younger_Rudder_Ctrl_8
        LDR.W    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_8
        LDR.W    R0,??DataTable2_47
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_8
        LDR.W    R0,??DataTable2_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_8
//  224      Angle.error = Angle.pre_error[9]+8;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+48]
        ADDS     R0,R0,#+8
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
        B.N      ??Younger_Rudder_Ctrl_9
//  225   else if(Angle.error-Angle.pre_error[9]<-8 && Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
??Younger_Rudder_Ctrl_8:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+48]
        SUBS     R0,R0,R1
        CMN      R0,#+8
        BGE.N    ??Younger_Rudder_Ctrl_9
        LDR.W    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_9
        LDR.W    R0,??DataTable2_47
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_9
        LDR.W    R0,??DataTable2_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_9
//  226      Angle.error = Angle.pre_error[9]-8;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+48]
        SUBS     R0,R0,#+8
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//  227 
//  228   if(Angle.error > Error_Limit)
??Younger_Rudder_Ctrl_9:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Younger_Rudder_Ctrl_10
//  229      Angle.error = Error_Limit;
        MOVS     R0,#+30
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//  230   if(Angle.error < -Error_Limit)
??Younger_Rudder_Ctrl_10:
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        CMN      R0,#+30
        BGE.N    ??Younger_Rudder_Ctrl_11
//  231      Angle.error = -Error_Limit;
        MVNS     R0,#+29
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//  232   
//  233   
//  234   //变量更新  
//  235   for(uint8 i=0; i<9; i++)
??Younger_Rudder_Ctrl_11:
        MOVS     R0,#+0
        B.N      ??Younger_Rudder_Ctrl_12
//  236      Angle.pre_error[i] = Angle.pre_error[i+1];
??Younger_Rudder_Ctrl_13:
        LDR.W    R1,??DataTable2_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+16]
        LDR.W    R2,??DataTable2_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+12]
        ADDS     R0,R0,#+1
??Younger_Rudder_Ctrl_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Younger_Rudder_Ctrl_13
//  237   Angle.pre_error[9] = Angle.error;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        STR      R0,[R1, #+48]
//  238   
//  239 
//  240   //舵机PD参数设置  
//  241   float ramp_Rate1, ramp_Rate2,Start_P;
//  242   Start_P = 25 ;
        LDR.W    R6,??DataTable2_8  ;; 0x41c80000
//  243   ramp_Rate1 = 0.05 ;
        LDR.W    R4,??DataTable2_53  ;; 0x3d4ccccd
//  244   ramp_Rate2 = 0.05 ;
        LDR.W    R5,??DataTable2_53  ;; 0x3d4ccccd
//  245   
//  246   if (fabs(Error) < 8)
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_10  ;; 0x40200000
        BL       __aeabi_cdcmple
        BCS.N    ??Younger_Rudder_Ctrl_14
//  247     Angle.P = Start_P;
        LDR.N    R0,??DataTable2_7
        STR      R6,[R0, #+92]
        B.N      ??Younger_Rudder_Ctrl_15
//  248   else if(fabs(Error) < 20)
??Younger_Rudder_Ctrl_14:
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_11  ;; 0x40340000
        BL       __aeabi_cdcmple
        BCS.N    ??Younger_Rudder_Ctrl_16
//  249     Angle.P = Start_P + ramp_Rate1*(fabs(Error) - 8);
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_12  ;; 0xc0200000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
        B.N      ??Younger_Rudder_Ctrl_15
//  250   else
//  251     Angle.P = (Start_P + ramp_Rate1*12) + ramp_Rate2*(fabs(Error) - 20);//25 0.4
??Younger_Rudder_Ctrl_16:
        LDR.N    R0,??DataTable2_13  ;; 0x41400000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_14  ;; 0xc0340000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  252 
//  253   
//  254   //环岛超车前车舵机打较修正
//  255   if(OverTake_Island != 0)
??Younger_Rudder_Ctrl_15:
        LDR.N    R0,??DataTable2_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_17
//  256     if(Turn_Around == 0)
        LDR.N    R0,??DataTable2_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_17
//  257       {
//  258           if(Flag_Island_Confirm!=0)
        LDR.N    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_18
//  259             Rudder_Err *= 1.4;      
        LDR.N    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_17  ;; 0x3ff66666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  260           if( final!=0 || Case1_TurnSwitch_Dis != 0)
??Younger_Rudder_Ctrl_18:
        LDR.N    R0,??DataTable2_47
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_18
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_17
//  261             {
//  262               Rudder_Err *= 0.7;     
        LDR.N    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_37  ;; 0x3fe66666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_42
        STR      R0,[R1, #+0]
//  263               Island_Distance = Limit_Distance_EnterIsland*100;
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable2_55
        STR      R0,[R1, #+0]
//  264             } 
//  265       }
//  266   
//  267   
//  268   if(EnterStrai_SumDis != 0)
??Younger_Rudder_Ctrl_17:
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_19
//  269      Angle.D =  100 ; // 80
        LDR.N    R0,??DataTable2_21  ;; 0x42c80000
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+96]
        B.N      ??Younger_Rudder_Ctrl_20
//  270   else
//  271      Angle.D = 100 ; //130   
??Younger_Rudder_Ctrl_19:
        LDR.N    R0,??DataTable2_21  ;; 0x42c80000
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+96]
//  272 
//  273     
//  274   //P参数修正
//  275    switch (Spd_Switch)
??Younger_Rudder_Ctrl_20:
        LDR.N    R0,??DataTable2_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Younger_Rudder_Ctrl_21
        BCC.N    ??Younger_Rudder_Ctrl_22
        CMP      R0,#+3
        BEQ.N    ??Younger_Rudder_Ctrl_23
        BCC.N    ??Younger_Rudder_Ctrl_24
        CMP      R0,#+4
        BEQ.N    ??Younger_Rudder_Ctrl_25
        B.N      ??Younger_Rudder_Ctrl_22
//  276      {
//  277       case 1:
//  278         { }
//  279         break;
??Younger_Rudder_Ctrl_21:
        B.N      ??Younger_Rudder_Ctrl_26
//  280  
//  281      case 2:
//  282         { }
//  283         break;
??Younger_Rudder_Ctrl_24:
        B.N      ??Younger_Rudder_Ctrl_26
//  284         
//  285       case 3:
//  286         { }
//  287        break;
??Younger_Rudder_Ctrl_23:
        B.N      ??Younger_Rudder_Ctrl_26
//  288         
//  289       case 4:
//  290         { }
//  291        break;
??Younger_Rudder_Ctrl_25:
        B.N      ??Younger_Rudder_Ctrl_26
//  292         
//  293       default:
//  294         break;
//  295      }
//  296 
//  297    //左右不对称修正
//  298   if(Error < 0)
??Younger_Rudder_Ctrl_22:
??Younger_Rudder_Ctrl_26:
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Younger_Rudder_Ctrl_27
//  299     Angle.P *= 1.06;
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_23  ;; 0x8f5c28f6
        LDR.N    R3,??DataTable2_24  ;; 0x3ff0f5c2
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
        B.N      ??Younger_Rudder_Ctrl_28
//  300   else
//  301     Angle.P *= 1.06;
??Younger_Rudder_Ctrl_27:
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_23  ;; 0x8f5c28f6
        LDR.N    R3,??DataTable2_24  ;; 0x3ff0f5c2
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  302     
//  303    //速度对打角的修正系数
//  304     float Coeff;
//  305      Coeff = 0.15*( (Spd.feedback - Spd_DownLimit ) / ((Spd_UpLimit-Spd_DownLimit)) );     
??Younger_Rudder_Ctrl_28:
        LDR.N    R0,??DataTable2_27
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable2_28
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_29
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable2_28
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        SDIV     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_30  ;; 0x3fc33333
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R6,R0
//  306     if(Coeff >  0.10)     Coeff =  0.10;
        MOVS     R0,R6
        LDR.N    R1,??DataTable2_31  ;; 0x3dcccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??Younger_Rudder_Ctrl_29
        LDR.N    R6,??DataTable2_31  ;; 0x3dcccccd
//  307     if(Coeff < -0.05)     Coeff = -0.05;
??Younger_Rudder_Ctrl_29:
        MOVS     R0,R6
        LDR.N    R1,??DataTable2_32  ;; 0xbd4ccccc
        BL       __aeabi_cfcmple
        BCS.N    ??Younger_Rudder_Ctrl_30
        LDR.N    R6,??DataTable2_33  ;; 0xbd4ccccd
//  308     Angle.P *= (1.0 + Coeff) ; 
??Younger_Rudder_Ctrl_30:
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_34  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  309 
//  310     //超车时修正
//  311    if(Case2_Ahead_KeepSide!=0 || Case2_Behind_KeepSide!=0)       Angle.P *= 0.7;
        LDR.N    R0,??DataTable2_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_31
        LDR.N    R0,??DataTable2_36
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_32
??Younger_Rudder_Ctrl_31:
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_37  ;; 0x3fe66666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  312    if(Case2_Ahead_KeepSide!=0 && Turn_Around==0 && Error>0)      Angle.P *= 0.4;
??Younger_Rudder_Ctrl_32:
        LDR.N    R0,??DataTable2_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Rudder_Ctrl_33
        LDR.N    R0,??DataTable2_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Rudder_Ctrl_33
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Younger_Rudder_Ctrl_33
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_6  ;; 0x9999999a
        LDR.N    R3,??DataTable2_56  ;; 0x3fd99999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  313    
//  314   //P限幅
//  315   if(Angle.P > 40)      Angle.P = 40;
??Younger_Rudder_Ctrl_33:
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+92]
        LDR.N    R1,??DataTable2_39  ;; 0x42200001
        BL       __aeabi_cfrcmple
        BHI.N    ??Younger_Rudder_Ctrl_34
        LDR.N    R0,??DataTable2_40  ;; 0x42200000
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+92]
//  316   
//  317 
//  318   
//  319   //位置式PD
//  320   Angle.RudderPWM = (int)(Rudder_Mid + Angle.P*Angle.error + Angle.D*Angle.drror);   
??Younger_Rudder_Ctrl_34:
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+92]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+96]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
//  321   
//  322   
//  323 //限幅保护  
//  324   if(Angle.RudderPWM > Rudder_Max)
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_7
        LDRH     R1,[R1, #+100]
        CMP      R0,R1
        BGE.N    ??Younger_Rudder_Ctrl_35
//  325     Angle.RudderPWM = Rudder_Max;
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
        B.N      ??Younger_Rudder_Ctrl_36
//  326   else if(Angle.RudderPWM < Rudder_Min)
??Younger_Rudder_Ctrl_35:
        LDR.N    R0,??DataTable2_7
        LDRH     R0,[R0, #+100]
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Younger_Rudder_Ctrl_36
//  327     Angle.RudderPWM = Rudder_Min;
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_7
        STRH     R0,[R1, #+100]
//  328   
//  329 //Angle.RudderPWM = xy;
//  330   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch1, Angle.RudderPWM);
??Younger_Rudder_Ctrl_36:
        LDR.N    R0,??DataTable2_7
        LDRH     R2,[R0, #+100]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_41  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//  331 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     Rudder_Mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Rudder_Min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Rudder_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     EnterStrai_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x41c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0xc0200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0xc0340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     OverTake_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x3ff66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     Case1_TurnSwitch_Dis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     Spd_Switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x8f5c28f6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     0x3ff0f5c2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     0x3ff0cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     Spd_DownLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     Spd_UpLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     0x3fc33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     0xbd4ccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     0xbd4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     Case2_Behind_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     0x42200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     0x42200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     Rudder_Err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     RampIn_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_49:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_50:
        DC32     0x3ff80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_51:
        DC32     Rudder_Init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_52:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_53:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_54:
        DC32     Limit_Distance_EnterIsland

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_55:
        DC32     Island_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_56:
        DC32     0x3fd99999

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  332 
// 
//   124 bytes in section .bss
//     4 bytes in section .data
// 3 144 bytes in section .text
// 
// 3 144 bytes of CODE memory
//   128 bytes of DATA memory
//
//Errors: none
//Warnings: 2
