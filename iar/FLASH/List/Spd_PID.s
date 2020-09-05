///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:35
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_PID.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_PID.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Spd_PID.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AheadStop_BehindAccel
        EXTERN Case2_Ahead_KeepSide
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN Spd
        EXTERN Ud
        EXTERN Ud_Last
        EXTERN Ud_error
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN final

        PUBLIC Elder_Spd_Ctrl
        PUBLIC Kd1
        PUBLIC Kd2
        PUBLIC Kq
        PUBLIC Motor_Output
        PUBLIC Q
        PUBLIC R
        PUBLIC Spd_Filter
        PUBLIC Spd_Get
        PUBLIC Younger_Spd_Ctrl
        PUBLIC k
        PUBLIC p

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_PID.c
//    1 #include "Includes.h"
//    2 
//    3 extern float percent_ahead;
//    4 extern float percent_behind;
//    5 extern uint8  trend;
//    6 extern uint8  Flag_Follow;
//    7 extern uint8  OverTake;
//    8 extern uint8  Family_Status;
//    9 extern uint8  Case1_Behind_IslandStop;
//   10 extern uint8  Flag_Island;
//   11 extern uint8  Flag_Ramp;
//   12 extern uint8  Flag_Stop;
//   13 extern uint8  Turn_Around;
//   14 extern uint8  final;
//   15 extern uint8  final_Last;
//   16 extern uint8  Flag_Island;
//   17 extern uint8  Flag_Island_Last;
//   18 extern uint8 Spd_Switch;
//   19 extern uint8 Case2_Ahead_KeepSide; 
//   20 extern long int IslandIn_Distance;
//   21 extern int Mixed_Distance;
//   22 extern int Derivative_Error;
//   23 extern int EnterCurve_SumDis;
//   24 extern int EnterStrai_SumDis;
//   25 extern int EnterStrai_SumDis_Last;
//   26 extern int TurnSwitch_Distance;
//   27 extern int Grid_Distance;
//   28 extern int Grid_Error;
//   29 extern int Grid_Error_Last;
//   30 extern int Grid_Error_Last2;
//   31 extern int Grid_Error_Last3;
//   32 extern int Ud,Ud_error,Ud_Last;
//   33 extern int Rudder_Mid;
//   34 extern int Pre_Error[];
//   35 extern int peak[];
//   36 extern int Error;
//   37 extern int Distance;
//   38 extern int Flag_Island_Confirm;
//   39 extern int Flag_Island_Confirm_Last;
//   40 extern long int IslandAdmit_Distance; 
//   41 extern int IslandAdmit_Distance_Last; 
//   42 extern long int Sum_Distance;
//   43 extern int Stop_Distance;
//   44 extern int Count;
//   45 extern uint8 OverTake_CrossRoad;
//   46 extern uint8 Case3_Ahead_Stop;
//   47 extern uint8 Case3_Behind_Pass;
//   48 extern uint8 AheadStop_BehindAccel;
//   49 extern struct Rudder Angle;
//   50 extern struct Speed Spd;
//   51 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 float Kq=0.1, Kd1=30, Kd2=40;
Kq:
        DATA
        DC32 3DCCCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd1:
        DATA
        DC32 41F00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd2:
        DATA
        DC32 42200000H
//   53 
//   54 /*
//   55 Function：老大PIDT
//   56 Return：Null
//   57 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void Elder_Spd_Ctrl()
//   59 {
Elder_Spd_Ctrl:
        PUSH     {R4-R6,LR}
//   60   //变量更新
//   61   Spd.error = Spd.target - Spd.feedback;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+24]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+12]
//   62   Spd.drror = Spd.error - Spd.error_last;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+20]
//   63   Spd.tag_error = (int)(Spd.target-Spd.preTarget[7]);
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+124]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+8]
//   64   
//   65   
//   66   Ud = (int)(Kq*Ud + (1-Kq)*Spd.error + Kq*Kd1*Spd.drror);  
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   67   if(Ud > 250)   Ud = 250;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+251
        BLT.N    ??Elder_Spd_Ctrl_0
        MOVS     R0,#+250
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
        B.N      ??Elder_Spd_Ctrl_1
//   68   else if(Ud < -250)  Ud = -250; 
??Elder_Spd_Ctrl_0:
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        CMN      R0,#+250
        BGE.N    ??Elder_Spd_Ctrl_1
        MVNS     R0,#+249
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   69   
//   70   Ud_error = Ud - Ud_Last;
??Elder_Spd_Ctrl_1:
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//   71   Ud_Last = Ud;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//   72   
//   73   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Elder_Spd_Ctrl_2
//   74      Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
??Elder_Spd_Ctrl_3:
        LDR.W    R1,??DataTable4
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+44]
        LDR.W    R2,??DataTable4
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+40]
        ADDS     R0,R0,#+1
??Elder_Spd_Ctrl_2:
        CMP      R0,#+9
        BLT.N    ??Elder_Spd_Ctrl_3
//   75   Spd.pre_feedback[9] = Spd.feedback;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+76]
//   76   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Elder_Spd_Ctrl_4
//   77      Spd.preTarget[i] = Spd.preTarget[i+1];
??Elder_Spd_Ctrl_5:
        LDR.W    R1,??DataTable4
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+100]
        LDR.W    R2,??DataTable4
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+96]
        ADDS     R0,R0,#+1
??Elder_Spd_Ctrl_4:
        CMP      R0,#+9
        BLT.N    ??Elder_Spd_Ctrl_5
//   78   
//   79   Spd.preTarget[9] = Spd.target;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+132]
//   80   Spd.error_last = Spd.error;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+16]
//   81  
//   82   //PID
//   83   float P_Max=30,P_Min=12;
        LDR.W    R5,??DataTable4_6  ;; 0x41f00000
        LDR.W    R4,??DataTable4_7  ;; 0x41400000
//   84   Spd.P = P_Min + ((P_Max-P_Min)*Spd.error)/130;
        MOVS     R0,R5
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R6,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_8  ;; 0x43020000
        BL       __aeabi_fdiv
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+80]
//   85   if(Spd.P > P_Max)      Spd.P = P_Max;  
        MOVS     R0,R5
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+80]
        BL       __aeabi_cfcmple
        BCS.N    ??Elder_Spd_Ctrl_6
        LDR.W    R0,??DataTable4
        STR      R5,[R0, #+80]
//   86   if(Spd.P < P_Min)      Spd.P = P_Min;  
??Elder_Spd_Ctrl_6:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+80]
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??Elder_Spd_Ctrl_7
        LDR.W    R0,??DataTable4
        STR      R4,[R0, #+80]
//   87   
//   88   Spd.P = 18;
??Elder_Spd_Ctrl_7:
        LDR.W    R0,??DataTable4_9  ;; 0x41900000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+80]
//   89   Spd.I = 4;
        MOVS     R0,#+1082130432
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+84]
//   90   
//   91   //直道超车缓减速
//   92   if(Case2_Ahead_KeepSide == 1)
        LDR.W    R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Elder_Spd_Ctrl_8
//   93     {
//   94       Spd.P = 30;
        LDR.W    R0,??DataTable4_6  ;; 0x41f00000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+80]
//   95       Spd.I = 10;    
        LDR.W    R0,??DataTable4_11  ;; 0x41200000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+84]
//   96     }
//   97   
//   98   //猛减速
//   99   if(Spd.target == 0)
??Elder_Spd_Ctrl_8:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Spd_Ctrl_9
//  100     {
//  101       Spd.P = 10;
        LDR.W    R0,??DataTable4_11  ;; 0x41200000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+80]
//  102       Spd.I = 3;    
        LDR.W    R0,??DataTable4_12  ;; 0x40400000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+84]
//  103     }
//  104 
//  105     if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0 || AheadStop_BehindAccel==1)
??Elder_Spd_Ctrl_9:
        LDR.W    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Spd_Ctrl_10
        LDR.W    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Spd_Ctrl_10
        LDR.W    R0,??DataTable4_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Elder_Spd_Ctrl_10
        LDR.W    R0,??DataTable4_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Elder_Spd_Ctrl_11
//  106     {
//  107       Spd.P = 40;
??Elder_Spd_Ctrl_10:
        LDR.W    R0,??DataTable4_17  ;; 0x42200000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+80]
//  108       Spd.I = 5;      
        LDR.W    R0,??DataTable4_18  ;; 0x40a00000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+84]
//  109     }
//  110 
//  111   Spd.MotorPWM += Spd.I*Ud + Spd.P*Ud_error + Spd.T*Spd.tag_error;;
??Elder_Spd_Ctrl_11:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+136]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+84]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.W    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+80]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+92]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+136]
//  112   
//  113    //输出限幅        
//  114   if(AheadStop_BehindAccel == 1)
        LDR.W    R0,??DataTable4_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Elder_Spd_Ctrl_12
//  115     {
//  116        if(Spd.MotorPWM > 9000)
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+136]
        MOVW     R1,#+9001
        CMP      R0,R1
        BLT.N    ??Elder_Spd_Ctrl_13
//  117          Spd.MotorPWM = 9000;
        MOVW     R0,#+9000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Elder_Spd_Ctrl_14
//  118        else if(Spd.MotorPWM<-9900 )
??Elder_Spd_Ctrl_13:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+136]
        LDR.W    R1,??DataTable4_19  ;; 0xffffd954
        CMP      R0,R1
        BGE.N    ??Elder_Spd_Ctrl_14
//  119          Spd.MotorPWM = -9900;  
        LDR.W    R0,??DataTable4_19  ;; 0xffffd954
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Elder_Spd_Ctrl_14
//  120     }
//  121   else
//  122     {
//  123        if(Spd.MotorPWM > 7000)
??Elder_Spd_Ctrl_12:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+136]
        MOVW     R1,#+7001
        CMP      R0,R1
        BLT.N    ??Elder_Spd_Ctrl_15
//  124          Spd.MotorPWM = 7000;
        MOVW     R0,#+7000
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Elder_Spd_Ctrl_14
//  125        else if(Spd.MotorPWM<-7000 )
??Elder_Spd_Ctrl_15:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+136]
        LDR.W    R1,??DataTable4_20  ;; 0xffffe4a8
        CMP      R0,R1
        BGE.N    ??Elder_Spd_Ctrl_14
//  126          Spd.MotorPWM = -7000;  
        LDR.W    R0,??DataTable4_20  ;; 0xffffe4a8
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+136]
//  127     }
//  128 }
??Elder_Spd_Ctrl_14:
        POP      {R4-R6,PC}       ;; return
//  129 
//  130 
//  131 /*
//  132 Function：老二PIDT
//  133 Return：Null
//  134 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void Younger_Spd_Ctrl()
//  136 {    
Younger_Spd_Ctrl:
        PUSH     {R3-R5,LR}
//  137   //变量更新
//  138   Spd.error = Spd.target - Spd.feedback;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+24]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+12]
//  139   Spd.drror = Spd.error - Spd.error_last;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+20]
//  140   Spd.tag_error = (int)(Spd.target-Spd.preTarget[2]);
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+104]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+8]
//  141   
//  142   Ud = (int)(Kq*Ud + (1-Kq)*Spd.error + Kq*Kd2*Spd.drror);  
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//  143   if(Ud > 250)   Ud = 250;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+251
        BLT.N    ??Younger_Spd_Ctrl_0
        MOVS     R0,#+250
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
        B.N      ??Younger_Spd_Ctrl_1
//  144   else if(Ud < -250)  Ud = -250; 
??Younger_Spd_Ctrl_0:
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        CMN      R0,#+250
        BGE.N    ??Younger_Spd_Ctrl_1
        MVNS     R0,#+249
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//  145   
//  146   Ud_error = Ud - Ud_Last;
??Younger_Spd_Ctrl_1:
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//  147   Ud_Last = Ud;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//  148   
//  149   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Younger_Spd_Ctrl_2
//  150      Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
??Younger_Spd_Ctrl_3:
        LDR.W    R1,??DataTable4
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+44]
        LDR.W    R2,??DataTable4
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+40]
        ADDS     R0,R0,#+1
??Younger_Spd_Ctrl_2:
        CMP      R0,#+9
        BLT.N    ??Younger_Spd_Ctrl_3
//  151   Spd.pre_feedback[9] = Spd.feedback;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+76]
//  152   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Younger_Spd_Ctrl_4
//  153      Spd.preTarget[i] = Spd.preTarget[i+1];
??Younger_Spd_Ctrl_5:
        LDR.W    R1,??DataTable4
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+100]
        LDR.W    R2,??DataTable4
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+96]
        ADDS     R0,R0,#+1
??Younger_Spd_Ctrl_4:
        CMP      R0,#+9
        BLT.N    ??Younger_Spd_Ctrl_5
//  154   
//  155   Spd.preTarget[9] = Spd.target;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+132]
//  156   Spd.error_last = Spd.error;
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+16]
//  157  
//  158   //PID
//  159   Spd.P = 15;
        LDR.W    R0,??DataTable4_22  ;; 0x41700000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+80]
//  160   Spd.I = 5;
        LDR.W    R0,??DataTable4_18  ;; 0x40a00000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+84]
//  161   Spd.T = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+92]
//  162   
//  163   if(Spd.error < 0)
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BPL.N    ??Younger_Spd_Ctrl_6
//  164       Spd.P *= 1.2;
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+80]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable4_23  ;; 0x3ff33333
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+80]
//  165   
//  166   //直道超车缓减速
//  167   if(Case2_Ahead_KeepSide == 1)
??Younger_Spd_Ctrl_6:
        LDR.N    R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Younger_Spd_Ctrl_7
//  168     {
//  169       Spd.P = 30;
        LDR.N    R0,??DataTable4_6  ;; 0x41f00000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+80]
//  170       Spd.I = 10;    
        LDR.N    R0,??DataTable4_11  ;; 0x41200000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+84]
//  171     }
//  172   
//  173   //停车猛减速
//  174   if(Spd.target == 0)
??Younger_Spd_Ctrl_7:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Spd_Ctrl_8
//  175     {
//  176       Spd.P = 10;
        LDR.N    R0,??DataTable4_11  ;; 0x41200000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+80]
//  177       Spd.I = 3;    
        LDR.N    R0,??DataTable4_12  ;; 0x40400000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+84]
//  178     }
//  179     
//  180   //环岛猛减速
//  181   if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0 || AheadStop_BehindAccel==1)
??Younger_Spd_Ctrl_8:
        LDR.N    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Spd_Ctrl_9
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Spd_Ctrl_9
        LDR.N    R0,??DataTable4_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Younger_Spd_Ctrl_9
        LDR.N    R0,??DataTable4_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Younger_Spd_Ctrl_10
//  182     {
//  183       Spd.P = 50;
??Younger_Spd_Ctrl_9:
        LDR.N    R0,??DataTable4_24  ;; 0x42480000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+80]
//  184       Spd.I = 3;      
        LDR.N    R0,??DataTable4_12  ;; 0x40400000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+84]
//  185     }
//  186   
//  187   Spd.MotorPWM += Spd.I*Ud + Spd.P*Ud_error + Spd.T*Spd.tag_error;
??Younger_Spd_Ctrl_10:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+84]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.N    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+80]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+92]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
//  188   
//  189   
//  190    //输出限幅         
//  191   if(AheadStop_BehindAccel == 1)
        LDR.N    R0,??DataTable4_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Younger_Spd_Ctrl_11
//  192     {
//  193        if(Spd.MotorPWM > 9000)
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        MOVW     R1,#+9001
        CMP      R0,R1
        BLT.N    ??Younger_Spd_Ctrl_12
//  194          Spd.MotorPWM = 9000;
        MOVW     R0,#+9000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Younger_Spd_Ctrl_13
//  195        else if(Spd.MotorPWM<-9900 )
??Younger_Spd_Ctrl_12:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        LDR.N    R1,??DataTable4_19  ;; 0xffffd954
        CMP      R0,R1
        BGE.N    ??Younger_Spd_Ctrl_13
//  196          Spd.MotorPWM = -9900;  
        LDR.N    R0,??DataTable4_19  ;; 0xffffd954
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Younger_Spd_Ctrl_13
//  197     }
//  198   else
//  199     {
//  200        if(Spd.MotorPWM > 6000)
??Younger_Spd_Ctrl_11:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        MOVW     R1,#+6001
        CMP      R0,R1
        BLT.N    ??Younger_Spd_Ctrl_14
//  201          Spd.MotorPWM = 6000;
        MOVW     R0,#+6000
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
        B.N      ??Younger_Spd_Ctrl_13
//  202        else if(Spd.MotorPWM<-7000 )
??Younger_Spd_Ctrl_14:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        LDR.N    R1,??DataTable4_20  ;; 0xffffe4a8
        CMP      R0,R1
        BGE.N    ??Younger_Spd_Ctrl_13
//  203          Spd.MotorPWM = -7000;  
        LDR.N    R0,??DataTable4_20  ;; 0xffffe4a8
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
//  204     }
//  205 }
??Younger_Spd_Ctrl_13:
        POP      {R0,R4,R5,PC}    ;; return
//  206 
//  207 
//  208 /*
//  209 Function：output the PWM
//  210 Return：Null
//  211 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void Motor_Output()
//  213 {
Motor_Output:
        PUSH     {R7,LR}
//  214   if( Spd.target==0 && Spd.feedback<(30-20*(Family_Status)) ) 
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Motor_Output_0
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable4_25
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+20
        MULS     R1,R2,R1
        RSBS     R1,R1,#+30
        CMP      R0,R1
        BGE.N    ??Motor_Output_0
//  215       if(Spd.MotorPWM < 0) 
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        CMP      R0,#+0
        BPL.N    ??Motor_Output_0
//  216            Spd.MotorPWM = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+136]
//  217     
//  218    if(Spd.MotorPWM > 0)
??Motor_Output_0:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        CMP      R0,#+1
        BLT.N    ??Motor_Output_1
//  219     { 
//  220        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  221        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, Spd.MotorPWM );    
        LDR.N    R0,??DataTable4
        LDR      R2,[R0, #+136]
        MOVS     R1,#+2
        LDR.N    R0,??DataTable4_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_Output_2
//  222     }
//  223    else
//  224     {
//  225        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (int)(fabs(Spd.MotorPWM)));
??Motor_Output_1:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+136]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  226        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);    
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable4_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  227     }
//  228 }
??Motor_Output_2:
        POP      {R0,PC}          ;; return
//  229 
//  230 
//  231 /*
//  232 Function：Sample the speed
//  233 Return：Null
//  234 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void Spd_Get()
//  236 {  
Spd_Get:
        PUSH     {R4,LR}
//  237   Spd.feedback = LPLD_FTM_GetCounter(FTM1); 
        LDR.N    R0,??DataTable4_27  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
//  238   
//  239   if(Spd.feedback<40000 && Spd.feedback >= 0)
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        SUBS     R0,R0,#+0
        MOVW     R1,#+40000
        CMP      R0,R1
        BCS.N    ??Spd_Get_0
//  240      Spd.feedback = -Spd.feedback;
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        RSBS     R0,R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
        B.N      ??Spd_Get_1
//  241   else if(Spd.feedback>40000 && Spd.feedback<65536)
??Spd_Get_0:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        MOVW     R1,#+40001
        SUBS     R0,R0,R1
        MOVW     R1,#+25535
        CMP      R0,R1
        BCS.N    ??Spd_Get_1
//  242      Spd.feedback = 65535 - LPLD_FTM_GetCounter(FTM1); 
        MOVW     R4,#+65535
        LDR.N    R0,??DataTable4_27  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
//  243   
//  244   if( fabs(Spd.feedback-Spd.feedback_last) > 10000)
??Spd_Get_1:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.N    R3,??DataTable4_28  ;; 0x40c38800
        BL       __aeabi_cdrcmple
        BHI.N    ??Spd_Get_2
//  245     Spd.feedback = Spd.feedback_last;   
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
//  246   Spd.feedback_last = Spd.feedback;  
??Spd_Get_2:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+28]
//  247 
//  248   Spd.feedback /= Measuring_Scale;  
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_29  ;; 0xc28f5c29
        LDR.N    R3,??DataTable4_30  ;; 0x400228f5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
//  249     
//  250   //防撞停车
//  251 //  if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
//  252 //    if(Sum_Distance > 1000*100)
//  253 //      if(Spd.feedback <= 10)
//  254 //        Stop_Distance = 300*100;
//  255 //
//  256   Spd_Filter();
        BL       Spd_Filter
//  257   
//  258   LPLD_FTM_ClearCounter(FTM1);     
        LDR.N    R0,??DataTable4_27  ;; 0x40039000
        BL       LPLD_FTM_ClearCounter
//  259 }
        POP      {R4,PC}          ;; return
//  260 
//  261 
//  262 /*
//  263 function：filter the Spd.feedback
//  264 return：Null
//  265 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  266 float  k;            //k表示卡尔曼增益，K值越大表示此次预测值越接近于测量值，越小表示越接近于上一次的预测值
k:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  267 float  p = 0;        //P值大小可表示收敛速度，越大收敛越快
p:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  268 float  Q = 0.05;     //Q和R代表了对预测数据的信任度，Q越大则越相信测量值，R越大则越相信预测值 
Q:
        DATA
        DC32 3D4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  269 float  R = 2.5;      //感觉就是Q太大的话延时小但杂波会增多，R太大就会有滞后。                     
R:
        DATA
        DC32 40200000H

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 void Spd_Filter()
//  271 {
Spd_Filter:
        PUSH     {R4,LR}
//  272    p = p+Q;        
        LDR.N    R0,??DataTable4_31
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_32
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  273    k = p/(p+R);    
        LDR.N    R0,??DataTable4_31
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        MOVS     R1,R0
        LDR.N    R0,??DataTable4_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  274    Spd.filter = (int) ( Spd.filter + k*(Spd.feedback - Spd.filter) );  
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+36]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+36]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_34
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+36]
//  275    p = (1-k)*p;   
        MOVS     R0,#+1065353216
        LDR.N    R1,??DataTable4_34
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable4_31
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  276    Spd.feedback = Spd.filter;
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+24]
//  277 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     Ud

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     Kq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     Kd1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Ud_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Ud_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x43020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x41900000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     AheadStop_BehindAccel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x42200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0xffffd954

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0xffffe4a8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     Kd2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x3ff33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     0x40c38800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     0xc28f5c29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     0x400228f5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     Q

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     k

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
//     8 bytes in section .bss
//    20 bytes in section .data
// 2 064 bytes in section .text
// 
// 2 064 bytes of CODE memory
//    28 bytes of DATA memory
//
//Errors: none
//Warnings: none
