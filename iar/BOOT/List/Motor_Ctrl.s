///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:38
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Motor_Ctrl.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Motor_Ctrl.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Motor_Ctrl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Admit_Dis_EnterIsland
        EXTERN Chase_Distance
        EXTERN Distance
        EXTERN Distance_Island
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Ramp
        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN Pre_Distance
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_i2d
        EXTERN exp
        EXTERN final

        PUBLIC Ahead_Spd_Set
        PUBLIC Behind_Spd_Set
        PUBLIC DisError
        PUBLIC Elder_Spd_Ctrl
        PUBLIC Flag_Out
        PUBLIC Leave_trend
        PUBLIC Motor_Ctrl
        PUBLIC Motor_Output
        PUBLIC Q
        PUBLIC R
        PUBLIC Spd
        PUBLIC Spd_Filter
        PUBLIC Spd_Get
        PUBLIC Sum_Distance_EnterCurve
        PUBLIC Younger_Spd_Ctrl
        PUBLIC k
        PUBLIC p
        PUBLIC trend

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Motor_Ctrl.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int    DisError = 0;
DisError:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    4 int    trend = 2;
trend:
        DATA
        DC32 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int    Leave_trend = 0;
Leave_trend:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 int    Flag_Out = 0;
Flag_Out:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 int    Sum_Distance_EnterCurve = 0;
Sum_Distance_EnterCurve:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 struct Speed Spd;
Spd:
        DS8 140
//    9 extern struct Rudder Angle;
//   10 extern int Rudder_Mid;
//   11 extern int Pre_Distance[];
//   12 extern int Distance;
//   13 extern int Flag_Island_Confirm;
//   14 extern int Admit_Dis_EnterIsland; 
//   15 extern uint16 Chase_Distance;
//   16 extern uint8  Turn_Around;
//   17 extern uint8  Family_Status;
//   18 extern uint8  Flag_Island;
//   19 extern uint8  Flag_Ramp;
//   20 extern uint8  Flag_Stop;
//   21 extern uint8 Turn_Around;
//   22 extern uint8 final;
//   23 extern uint16 Distance_Island;
//   24 
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void Motor_Ctrl()
//   27 {  
Motor_Ctrl:
        PUSH     {R7,LR}
//   28   
//   29    /***速度设置***/
//   30    if(Turn_Around == 0)
        LDR.W    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Motor_Ctrl_0
//   31       Ahead_Spd_Set();   //前车速度设置
        BL       Ahead_Spd_Set
        B.N      ??Motor_Ctrl_1
//   32    else 
//   33       Behind_Spd_Set();  //后车速度设置
??Motor_Ctrl_0:
        BL       Behind_Spd_Set
//   34    
//   35    /***PIDT控制***/
//   36    if(Family_Status == 0)
??Motor_Ctrl_1:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Motor_Ctrl_2
//   37       Elder_Spd_Ctrl();   //老大PIDT
        BL       Elder_Spd_Ctrl
        B.N      ??Motor_Ctrl_3
//   38    else
//   39       Younger_Spd_Ctrl(); //老二PIDT
??Motor_Ctrl_2:
        BL       Younger_Spd_Ctrl
//   40   
//   41    /***输出***/
//   42    Motor_Output();
??Motor_Ctrl_3:
        BL       Motor_Output
//   43 }
        POP      {R0,PC}          ;; return
//   44 
//   45 
//   46 //前车速度设置

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void Ahead_Spd_Set()
//   48 {
Ahead_Spd_Set:
        PUSH     {R3-R5,LR}
        VPUSH    {D8}
//   49  /***************路径判断*****************/  
//   50    DisError = (int)( fabs(Distance - Pre_Distance[5]) );
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+20]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//   51   
//   52   //入弯
//   53    if(DisError>=2 && fabs(Distance)-fabs(Pre_Distance[8])>0 && fabs(Distance)>2 && fabs(Distance)<20 && trend>0)
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Ahead_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        VMOV     D8,R0,R1
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+32]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D8
        BL       __aeabi_dsub
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??Ahead_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        MOVS     R3,#+1073741824
        BL       __aeabi_cdrcmple
        BHI.N    ??Ahead_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_3  ;; 0x40340000
        BL       __aeabi_cdcmple
        BCS.N    ??Ahead_Spd_Set_0
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Ahead_Spd_Set_0
//   54     trend--;
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
        B.N      ??Ahead_Spd_Set_1
//   55    //弯内或直道
//   56    else if(trend < 2)
??Ahead_Spd_Set_0:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??Ahead_Spd_Set_1
//   57     trend++;
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//   58    
//   59    if(Sum_Distance_EnterCurve != 0)
??Ahead_Spd_Set_1:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_2
//   60      Spd.target = 500 + (Sum_Distance_EnterCurve/100)*(600/Limit_Distance_EnterCurve);
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        MOVS     R1,#+20
        MULS     R0,R1,R0
        ADDS     R0,R0,#+500
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
        B.N      ??Ahead_Spd_Set_3
//   61    else
//   62       Spd.target = 1100;
??Ahead_Spd_Set_2:
        MOVW     R0,#+1100
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   63         
//   64    if(trend == 0)
??Ahead_Spd_Set_3:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_4
//   65      Sum_Distance_EnterCurve = 5*100;
        MOV      R0,#+500
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   66    if(Sum_Distance_EnterCurve != 0)
??Ahead_Spd_Set_4:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_5
//   67      Sum_Distance_EnterCurve += Spd.feedback/Measuring_Scale;
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_3  ;; 0xcccccccd
        LDR.W    R3,??DataTable7_4  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   68    
//   69    if(Sum_Distance_EnterCurve > (Limit_Distance_EnterCurve + 5)*100)
??Ahead_Spd_Set_5:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3501
        CMP      R0,R1
        BLT.N    ??Ahead_Spd_Set_6
//   70      Sum_Distance_EnterCurve = 0;   
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   71    
//   72   if(Spd.target > 1100)
??Ahead_Spd_Set_6:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1101
        CMP      R0,R1
        BLT.N    ??Ahead_Spd_Set_7
//   73     Spd.target = 1100;   
        MOVW     R0,#+1100
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   74   if(Spd.target < 300)
??Ahead_Spd_Set_7:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+300
        BGE.N    ??Ahead_Spd_Set_8
//   75     Spd.target = 300;
        MOV      R0,#+300
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   76   
//   77   Spd.target /= 1.2;
??Ahead_Spd_Set_8:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable7_5  ;; 0x3ff33333
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   78      
//   79   /***********特殊路径速度***************/  
//   80   //环岛内速度
//   81   if( Flag_Island == 1)
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ahead_Spd_Set_9
//   82      Spd.target = 600;
        MOV      R0,#+600
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   83   
//   84   //进环岛速度
//   85   if(final==1 || Flag_Island_Confirm!=0)
??Ahead_Spd_Set_9:
        LDR.W    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Ahead_Spd_Set_10
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_11
//   86     Spd.target = 300;
??Ahead_Spd_Set_10:
        MOV      R0,#+300
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   87   
//   88   //坡道速度
//   89   if(Flag_Ramp == 1)
??Ahead_Spd_Set_11:
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ahead_Spd_Set_12
//   90      Spd.target = 800;
        MOV      R0,#+800
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   91 }
??Ahead_Spd_Set_12:
        VPOP     {D8}
        POP      {R0,R4,R5,PC}    ;; return
//   92 
//   93 
//   94 //后车速度设置

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   95 void Behind_Spd_Set()
//   96 { 
Behind_Spd_Set:
        PUSH     {R4-R6,LR}
        VPUSH    {D8}
//   97   /***************路径判断*****************/  
//   98    DisError = (int)( fabs(Distance - Pre_Distance[5]) );
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+20]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//   99   
//  100   //入弯
//  101    if(DisError>=2 && fabs(Distance)-fabs(Pre_Distance[8])>0 && fabs(Distance)>2 && fabs(Distance)<20 && trend>0)
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Behind_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        VMOV     D8,R0,R1
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+32]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D8
        BL       __aeabi_dsub
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??Behind_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        MOVS     R3,#+1073741824
        BL       __aeabi_cdrcmple
        BHI.N    ??Behind_Spd_Set_0
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_3  ;; 0x40340000
        BL       __aeabi_cdcmple
        BCS.N    ??Behind_Spd_Set_0
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Behind_Spd_Set_0
//  102     trend--;
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
        B.N      ??Behind_Spd_Set_1
//  103    //弯内或直道
//  104    else if(trend < 2)
??Behind_Spd_Set_0:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??Behind_Spd_Set_1
//  105     trend++;
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  106    
//  107    if(Sum_Distance_EnterCurve != 0)
??Behind_Spd_Set_1:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_2
//  108      Spd.target = 500 + (Sum_Distance_EnterCurve/100)*(600/Limit_Distance_EnterCurve);
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        MOVS     R1,#+20
        MULS     R0,R1,R0
        ADDS     R0,R0,#+500
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
        B.N      ??Behind_Spd_Set_3
//  109    else
//  110       Spd.target = 1100;
??Behind_Spd_Set_2:
        MOVW     R0,#+1100
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  111         
//  112    if(trend == 0)
??Behind_Spd_Set_3:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Behind_Spd_Set_4
//  113      Sum_Distance_EnterCurve = 5*100;
        MOV      R0,#+500
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//  114    if(Sum_Distance_EnterCurve != 0)
??Behind_Spd_Set_4:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_5
//  115      Sum_Distance_EnterCurve += Spd.feedback/Measuring_Scale;
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_3  ;; 0xcccccccd
        LDR.W    R3,??DataTable7_4  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//  116    
//  117    if(Sum_Distance_EnterCurve > (Limit_Distance_EnterCurve + 5)*100)
??Behind_Spd_Set_5:
        LDR.W    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3501
        CMP      R0,R1
        BLT.N    ??Behind_Spd_Set_6
//  118      Sum_Distance_EnterCurve = 0;   
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//  119    
//  120   if(Spd.target > 1100)
??Behind_Spd_Set_6:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1101
        CMP      R0,R1
        BLT.N    ??Behind_Spd_Set_7
//  121     Spd.target = 1100;   
        MOVW     R0,#+1100
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  122   if(Spd.target < 300)
??Behind_Spd_Set_7:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+300
        BGE.N    ??Behind_Spd_Set_8
//  123     Spd.target = 300;
        MOV      R0,#+300
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  124   
//  125     Spd.target /= 1.2; 
??Behind_Spd_Set_8:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable7_5  ;; 0x3ff33333
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  126     
//  127   /*************追逐速度****************/
//  128   float percent; 
//  129   int Dis;
//  130   Dis = Chase_Distance/10;
        LDR.W    R0,??DataTable7_10
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R6,R0,R1
//  131   if(Dis <= 3)
        CMP      R6,#+4
        BGE.N    ??Behind_Spd_Set_9
//  132     percent = 0.3;
        VLDR.W   S0,??DataTable2  ;; 0x3e99999a
        B.N      ??Behind_Spd_Set_10
//  133   else if(Dis>=4 && Dis<=13)
??Behind_Spd_Set_9:
        SUBS     R0,R6,#+4
        CMP      R0,#+10
        BCS.N    ??Behind_Spd_Set_11
//  134     percent = -0.006346*Dis*Dis + 0.1898*Dis - 0.1123;    
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_11  ;; 0x675ddd2b
        LDR.W    R3,??DataTable7_12  ;; 0xbf79fe43
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_13  ;; 0xcc63f141
        LDR.W    R3,??DataTable7_14  ;; 0x3fc84b5d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable7_15  ;; 0x5b573eab
        LDR.W    R3,??DataTable7_16  ;; 0xbfbcbfb1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        B.N      ??Behind_Spd_Set_10
//  135   else 
//  136     percent = 1.20;
??Behind_Spd_Set_11:
        VLDR.W   S0,??DataTable2_1  ;; 0x3f99999a
//  137   if(percent > 1.20)
??Behind_Spd_Set_10:
        VLDR.W   S1,??DataTable2_1  ;; 0x3f99999a
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Behind_Spd_Set_12
//  138     percent = 1.20;
        VLDR.W   S0,??DataTable2_1  ;; 0x3f99999a
//  139   Spd.target *= percent; 
??Behind_Spd_Set_12:
        LDR.W    R0,??DataTable7_2
        VLDR     S1,[R0, #0]
        VCVT.F32.S32 S1,S1
        VMUL.F32 S0,S1,S0
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable7_2
        VSTR     S0,[R0, #0]
//  140   
//  141   /***********特殊路径速度***************/
//  142   //后车环岛前速度
//  143   if(Admit_Dis_EnterIsland != 0)
        LDR.W    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_13
//  144   {
//  145     Spd.target = 600;
        MOV      R0,#+600
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  146     Admit_Dis_EnterIsland -= Spd.feedback/Measuring_Scale;
        LDR.W    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable7_3  ;; 0xcccccccd
        LDR.W    R3,??DataTable7_4  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable7_17
        STR      R0,[R1, #+0]
//  147     if(Admit_Dis_EnterIsland < 0)
        LDR.W    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Behind_Spd_Set_13
//  148        Admit_Dis_EnterIsland = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_17
        STR      R0,[R1, #+0]
//  149   }
//  150   
//  151   //后车进环岛速度
//  152   if(final==1 || Flag_Island_Confirm!=0)
??Behind_Spd_Set_13:
        LDR.W    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Behind_Spd_Set_14
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_15
//  153     Spd.target = 300; 
??Behind_Spd_Set_14:
        MOV      R0,#+300
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  154   
//  155   //后车环岛内速度
//  156   if( Flag_Island == 1)
??Behind_Spd_Set_15:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_16
//  157      Spd.target = 600;
        MOV      R0,#+600
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  158   
//  159   //后车坡道速度
//  160   if(Flag_Ramp == 1)
??Behind_Spd_Set_16:
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_17
//  161      Spd.target = 800;
        MOV      R0,#+800
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  162   
//  163   //后车超车等待
//  164   if(Distance_Island >= 35*100)  //1m为10000
??Behind_Spd_Set_17:
        LDR.W    R0,??DataTable7_18
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+3500
        CMP      R0,R1
        BLT.N    ??Behind_Spd_Set_18
//  165      Spd.target = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  166   
//  167 
//  168   //后车环岛内启动
//  169    if(Flag_Out == 1)
??Behind_Spd_Set_18:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_19
//  170    {
//  171      Distance_Island = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_18
        STRH     R0,[R1, #+0]
//  172      Flag_Out = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  173    }
//  174 }
??Behind_Spd_Set_19:
        VPOP     {D8}
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3f99999a
//  175 
//  176 
//  177 //老大PIDT

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  178 void Elder_Spd_Ctrl()
//  179 {
Elder_Spd_Ctrl:
        PUSH     {R7,LR}
//  180   Spd.P = 0.4588*exp(0.008722* fabs(Spd.error) );
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.W    R2,??DataTable7_20  ;; 0x60bb2bc
        LDR.W    R3,??DataTable7_21  ;; 0x3f81dcd7
        BL       __aeabi_dmul
        VMOV     D0,R0,R1
        BL       exp
        VMOV     R2,R3,D0
        LDR.W    R0,??DataTable7_22  ;; 0xacd9e83e
        LDR.W    R1,??DataTable7_23  ;; 0x3fdd5cfa
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+80]
//  181   if(Spd.P > 10)  Spd.P = 10;
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #+80]
        VLDR.W   S1,??DataTable3  ;; 0x41200001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Elder_Spd_Ctrl_0
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_24  ;; 0x41200000
        STR      R1,[R0, #+80]
//  182     Spd.I = 0.4853*exp(0.005833* fabs(Spd.error) );
??Elder_Spd_Ctrl_0:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.W    R2,??DataTable7_25  ;; 0x3cd141a
        LDR.W    R3,??DataTable7_26  ;; 0x3f77e458
        BL       __aeabi_dmul
        VMOV     D0,R0,R1
        BL       exp
        VMOV     R2,R3,D0
        LDR.W    R0,??DataTable7_27  ;; 0xbb2fec57
        LDR.W    R1,??DataTable7_28  ;; 0x3fdf0f27
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+84]
//  183   if(Spd.I > 5)  Spd.I = 5;
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #+84]
        VLDR.W   S1,??DataTable3_1  ;; 0x40a00001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Elder_Spd_Ctrl_1
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_29  ;; 0x40a00000
        STR      R1,[R0, #+84]
//  184     Spd.D = 20;
??Elder_Spd_Ctrl_1:
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_30  ;; 0x41a00000
        STR      R1,[R0, #+88]
//  185   if(trend==20 && fabs(Distance)<10)
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+20
        BNE.N    ??Elder_Spd_Ctrl_2
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable7_31  ;; 0x40240000
        BL       __aeabi_cdcmple
        BCS.N    ??Elder_Spd_Ctrl_2
//  186     {
//  187       Spd.P = 1;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+80]
//  188       Spd.I = 1;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+84]
//  189     }
//  190   if(Flag_Island_Confirm > Confirm_Second*100)
??Elder_Spd_Ctrl_2:
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3501
        CMP      R0,R1
        BLT.N    ??Elder_Spd_Ctrl_3
//  191     {
//  192       Spd.P = 1;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+80]
//  193       Spd.I = 1;
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+84]
//  194     }
//  195   
//  196   if(Flag_Island == 1)   Spd.T = 7; //3
??Elder_Spd_Ctrl_3:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Elder_Spd_Ctrl_4
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_32  ;; 0x40e00000
        STR      R1,[R0, #+92]
        B.N      ??Elder_Spd_Ctrl_5
//  197   else if(trend < 5)     Spd.T = 1.0; 
??Elder_Spd_Ctrl_4:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Elder_Spd_Ctrl_6
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+92]
        B.N      ??Elder_Spd_Ctrl_5
//  198   else                   Spd.T = 0;  
??Elder_Spd_Ctrl_6:
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+0
        STR      R1,[R0, #+92]
//  199 //  if(trend<5)   Spd.T = 0; 
//  200 //  else          Spd.T = 0;   
//  201   
//  202   //变量更新
//  203   Spd.error = Spd.target - Spd.feedback;
??Elder_Spd_Ctrl_5:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+8]
//  204   Spd.drror = Spd.pre_feedback[8] - Spd.feedback;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+72]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+20]
//  205   Spd.ddrror = Spd.error - 2*Spd.error_last + Spd.error_last_last;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+24]
//  206   Spd.tag_error = (int)(Spd.target-Spd.preTarget[2]);
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable7_2
        VLDR     S1,[R0, #+104]
        VSUB.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable7_2
        VSTR     S0,[R0, #+4]
//  207   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Elder_Spd_Ctrl_7
//  208      Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
??Elder_Spd_Ctrl_8:
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+44]
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+40]
        ADDS     R0,R0,#+1
??Elder_Spd_Ctrl_7:
        CMP      R0,#+9
        BLT.N    ??Elder_Spd_Ctrl_8
//  209   Spd.pre_feedback[9] = Spd.feedback;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+76]
//  210   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Elder_Spd_Ctrl_9
//  211      Spd.preTarget[i] = Spd.preTarget[i+1];
??Elder_Spd_Ctrl_10:
        LDR.W    R1,??DataTable7_2
        ADDS     R1,R1,R0, LSL #+2
        LDR.W    R2,??DataTable7_2
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+100]
        STR      R2,[R1, #+96]
        ADDS     R0,R0,#+1
??Elder_Spd_Ctrl_9:
        CMP      R0,#+9
        BLT.N    ??Elder_Spd_Ctrl_10
//  212   Spd.preTarget[9] = Spd.target;
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable7_2
        VSTR     S0,[R0, #+132]
//  213   Spd.error_last = Spd.error;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+12]
//  214   Spd.error_last_last = Spd.error_last; 
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+16]
//  215   
//  216   //增量式PID
//  217   Spd.MotorPWM += Spd.I*Spd.error + Spd.P*Spd.drror 
//  218                +  Spd.T*Spd.tag_error + Spd.D*Spd.ddrror;                
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #+136]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable7_2
        VLDR     S1,[R0, #+8]
        VCVT.F32.S32 S1,S1
        LDR.W    R0,??DataTable7_2
        VLDR     S2,[R0, #+84]
        VMUL.F32 S1,S1,S2
        LDR.W    R0,??DataTable7_2
        VLDR     S2,[R0, #+20]
        VCVT.F32.S32 S2,S2
        LDR.W    R0,??DataTable7_2
        VLDR     S3,[R0, #+80]
        VMLA.F32 S1,S2,S3
        LDR.W    R0,??DataTable7_2
        VLDR     S2,[R0, #+4]
        VCVT.F32.S32 S2,S2
        LDR.W    R0,??DataTable7_2
        VLDR     S3,[R0, #+92]
        VMLA.F32 S1,S2,S3
        LDR.W    R0,??DataTable7_2
        VLDR     S2,[R0, #+24]
        VCVT.F32.S32 S2,S2
        LDR.W    R0,??DataTable7_2
        VLDR     S3,[R0, #+88]
        VMLA.F32 S1,S2,S3
        VADD.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable7_2
        VSTR     S0,[R0, #+136]
//  219 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40a00001
//  220 
//  221 
//  222 //老二PIDT

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  223 void Younger_Spd_Ctrl()
//  224 {    
Younger_Spd_Ctrl:
        PUSH     {R7,LR}
//  225   Spd.P = 0.4588*exp(0.008722* fabs(Spd.error) );
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.W    R2,??DataTable7_20  ;; 0x60bb2bc
        LDR.W    R3,??DataTable7_21  ;; 0x3f81dcd7
        BL       __aeabi_dmul
        VMOV     D0,R0,R1
        BL       exp
        VMOV     R2,R3,D0
        LDR.W    R0,??DataTable7_22  ;; 0xacd9e83e
        LDR.W    R1,??DataTable7_23  ;; 0x3fdd5cfa
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+80]
//  226   if(Spd.P > 10)  Spd.P = 10;
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #+80]
        VLDR.W   S1,??DataTable5  ;; 0x41200001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Younger_Spd_Ctrl_0
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_24  ;; 0x41200000
        STR      R1,[R0, #+80]
//  227     Spd.I = 0.4853*exp(0.005833* fabs(Spd.error) );
??Younger_Spd_Ctrl_0:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        LDR.W    R2,??DataTable7_25  ;; 0x3cd141a
        LDR.W    R3,??DataTable7_26  ;; 0x3f77e458
        BL       __aeabi_dmul
        VMOV     D0,R0,R1
        BL       exp
        VMOV     R2,R3,D0
        LDR.W    R0,??DataTable7_27  ;; 0xbb2fec57
        LDR.W    R1,??DataTable7_28  ;; 0x3fdf0f27
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+84]
//  228   if(Spd.I > 5)  Spd.I = 5;
        LDR.W    R0,??DataTable7_2
        VLDR     S0,[R0, #+84]
        VLDR.W   S1,??DataTable5_1  ;; 0x40a00001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??Younger_Spd_Ctrl_1
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_29  ;; 0x40a00000
        STR      R1,[R0, #+84]
//  229   
//  230   Spd.I = 3;
??Younger_Spd_Ctrl_1:
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_33  ;; 0x40400000
        STR      R1,[R0, #+84]
//  231     Spd.D = 15;
        LDR.W    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_34  ;; 0x41700000
        STR      R1,[R0, #+88]
//  232 
//  233   Spd.T = 0;
        LDR.N    R0,??DataTable7_2
        MOVS     R1,#+0
        STR      R1,[R0, #+92]
//  234   if(Flag_Island_Confirm!=0)   Spd.T = 10; //3
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Younger_Spd_Ctrl_2
        LDR.N    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_24  ;; 0x41200000
        STR      R1,[R0, #+92]
        B.N      ??Younger_Spd_Ctrl_3
//  235   else if(trend != 2)     Spd.T = 20;//5 
??Younger_Spd_Ctrl_2:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??Younger_Spd_Ctrl_3
        LDR.N    R0,??DataTable7_2
        LDR.W    R1,??DataTable7_30  ;; 0x41a00000
        STR      R1,[R0, #+92]
//  236    
//  237   
//  238   //变量更新
//  239   Spd.error = Spd.target - Spd.feedback;
??Younger_Spd_Ctrl_3:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+8]
//  240   Spd.drror = Spd.pre_feedback[8] - Spd.feedback;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+72]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+28]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+20]
//  241   Spd.ddrror = Spd.error - 2*Spd.error_last + Spd.error_last_last;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1, LSL #+1
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+16]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+24]
//  242   Spd.tag_error = (int)(Spd.target-Spd.preTarget[2]);
        LDR.N    R0,??DataTable7_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable7_2
        VLDR     S1,[R0, #+104]
        VSUB.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable7_2
        VSTR     S0,[R0, #+4]
//  243   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Younger_Spd_Ctrl_4
//  244      Spd.pre_feedback[i] = Spd.pre_feedback[i+1];
??Younger_Spd_Ctrl_5:
        LDR.N    R1,??DataTable7_2
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+44]
        LDR.N    R2,??DataTable7_2
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #+40]
        ADDS     R0,R0,#+1
??Younger_Spd_Ctrl_4:
        CMP      R0,#+9
        BLT.N    ??Younger_Spd_Ctrl_5
//  245   Spd.pre_feedback[9] = Spd.feedback;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+76]
//  246   for(int i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Younger_Spd_Ctrl_6
//  247      Spd.preTarget[i] = Spd.preTarget[i+1];
??Younger_Spd_Ctrl_7:
        LDR.N    R1,??DataTable7_2
        ADDS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable7_2
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+100]
        STR      R2,[R1, #+96]
        ADDS     R0,R0,#+1
??Younger_Spd_Ctrl_6:
        CMP      R0,#+9
        BLT.N    ??Younger_Spd_Ctrl_7
//  248   Spd.preTarget[9] = Spd.target;
        LDR.N    R0,??DataTable7_2
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable7_2
        VSTR     S0,[R0, #+132]
//  249   Spd.error_last = Spd.error;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+12]
//  250   Spd.error_last_last = Spd.error_last; 
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+16]
//  251   
//  252   //增量式PID
//  253   Spd.MotorPWM += Spd.I*Spd.error + Spd.P*Spd.drror 
//  254                +  Spd.T*Spd.tag_error + Spd.D*Spd.ddrror;     
        LDR.N    R0,??DataTable7_2
        VLDR     S0,[R0, #+136]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable7_2
        VLDR     S1,[R0, #+8]
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable7_2
        VLDR     S2,[R0, #+84]
        VMUL.F32 S1,S1,S2
        LDR.N    R0,??DataTable7_2
        VLDR     S2,[R0, #+20]
        VCVT.F32.S32 S2,S2
        LDR.N    R0,??DataTable7_2
        VLDR     S3,[R0, #+80]
        VMLA.F32 S1,S2,S3
        LDR.N    R0,??DataTable7_2
        VLDR     S2,[R0, #+4]
        VCVT.F32.S32 S2,S2
        LDR.N    R0,??DataTable7_2
        VLDR     S3,[R0, #+92]
        VMLA.F32 S1,S2,S3
        LDR.N    R0,??DataTable7_2
        VLDR     S2,[R0, #+24]
        VCVT.F32.S32 S2,S2
        LDR.N    R0,??DataTable7_2
        VLDR     S3,[R0, #+88]
        VMLA.F32 S1,S2,S3
        VADD.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable7_2
        VSTR     S0,[R0, #+136]
//  255 
//  256 }
        POP      {R0,PC}          ;; return
//  257 
//  258 
//  259 
//  260 
//  261 /**************PWM输出***************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void Motor_Output()
//  263 {
Motor_Output:
        PUSH     {R7,LR}
//  264    if(Spd.MotorPWM > 4000)
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+136]
        CMP      R0,#+4000
        BLE.N    ??Motor_Output_0
//  265      Spd.MotorPWM = 4000;
        MOV      R0,#+4000
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+136]
        B.N      ??Motor_Output_1
//  266    else if(Spd.MotorPWM<-1000 )
??Motor_Output_0:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+136]
        CMN      R0,#+1000
        BGE.N    ??Motor_Output_1
//  267      Spd.MotorPWM = -1000;
        LDR.N    R0,??DataTable7_35  ;; 0xfffffc18
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+136]
//  268 //   if(Spd.MotorPWM < -7000)
//  269 //     Spd.MotorPWM = -7000;
//  270    
//  271    if(Distance_Island >= 35*100 && fabs(Spd.feedback)<50)  //1m为10000
??Motor_Output_1:
        LDR.N    R0,??DataTable7_18
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+3500
        CMP      R0,R1
        BLT.N    ??Motor_Output_2
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_36  ;; 0x40490000
        BL       __aeabi_cdcmple
        BCS.N    ??Motor_Output_2
//  272      Spd.MotorPWM = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+136]
//  273    
//  274    if(Spd.MotorPWM > 0)
??Motor_Output_2:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+136]
        CMP      R0,#+1
        BLT.N    ??Motor_Output_3
//  275     { 
//  276        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7_37  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  277        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, Spd.MotorPWM);    
        LDR.N    R0,??DataTable7_2
        LDR      R2,[R0, #+136]
        MOVS     R1,#+2
        LDR.N    R0,??DataTable7_37  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_Output_4
//  278     }
//  279    else
//  280     {
//  281        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (int)fabs(Spd.MotorPWM));
??Motor_Output_3:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+136]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7_37  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  282        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);    
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable7_37  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  283     }
//  284 }
??Motor_Output_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     Turn_Around
//  285 
//  286 /*************速度采集***************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void Spd_Get()
//  288 {  
Spd_Get:
        PUSH     {R4,LR}
//  289   Spd.feedback = LPLD_FTM_GetCounter(FTM1); 
        LDR.N    R0,??DataTable7_38  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+28]
//  290   
//  291   if(Spd.feedback < 10000)
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        MOVW     R1,#+10000
        CMP      R0,R1
        BGE.N    ??Spd_Get_0
//  292      Spd.feedback = -Spd.feedback;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        RSBS     R0,R0,#+0
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+28]
        B.N      ??Spd_Get_1
//  293   else if(Spd.feedback > 30000 )
??Spd_Get_0:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        MOVW     R1,#+30001
        CMP      R0,R1
        BLT.N    ??Spd_Get_1
//  294      Spd.feedback = 65535 - LPLD_FTM_GetCounter(FTM1); 
        MOVW     R4,#+65535
        LDR.N    R0,??DataTable7_38  ;; 0x40039000
        BL       LPLD_FTM_GetCounter
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+28]
//  295   
//  296   if( fabs(Spd.feedback-Spd.feedback_last) > 10000)
??Spd_Get_1:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+36]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.N    R3,??DataTable7_39  ;; 0x40c38800
        BL       __aeabi_cdrcmple
        BHI.N    ??Spd_Get_2
//  297     Spd.feedback = Spd.feedback_last;   
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+28]
//  298   Spd.feedback_last = Spd.feedback;  
??Spd_Get_2:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+36]
//  299   
//  300   Spd_Filter();
        BL       Spd_Filter
//  301   
//  302   LPLD_FTM_ClearCounter(FTM1);     
        LDR.N    R0,??DataTable7_38  ;; 0x40039000
        BL       LPLD_FTM_ClearCounter
//  303 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Pre_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     DisError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     trend
//  304 
//  305 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  306 float  k;            //k表示卡尔曼增益，K值越大表示此次预测值越接近于测量值，越小表示越接近于上一次的预测值
k:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  307 float  p = 0;        //P值大小可表示收敛速度，越大收敛越快
p:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  308 float  Q = 0.05;     //Q和R代表了对预测数据的信任度，Q越大则越相信测量值，R越大则越相信预测值 
Q:
        DATA
        DC32 3D4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  309 float  R = 2.5;      //感觉就是Q太大的话延时小但杂波会增多，R太大就会有滞后。                     
R:
        DATA
        DC32 40200000H
//  310 /*
//  311 函数功能：速度反馈值卡尔曼滤波
//  312 返回值：无
//  313 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 void Spd_Filter()
//  315  {
//  316    p = p+Q;        
Spd_Filter:
        LDR.N    R0,??DataTable7_40
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable7_41
        VLDR     S1,[R0, #0]
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable7_40
        VSTR     S0,[R0, #0]
//  317    k = p/(p+R);    
        LDR.N    R0,??DataTable7_40
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable7_42
        VLDR     S1,[R0, #0]
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable7_40
        VLDR     S1,[R0, #0]
        VDIV.F32 S0,S1,S0
        LDR.N    R0,??DataTable7_43
        VSTR     S0,[R0, #0]
//  318    Spd.filter = (int) ( Spd.filter + k*(Spd.feedback - Spd.filter) );  
        LDR.N    R0,??DataTable7_2
        VLDR     S0,[R0, #+32]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+32]
        SUBS     R0,R0,R1
        VMOV     S1,R0
        VCVT.F32.S32 S1,S1
        LDR.N    R0,??DataTable7_43
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable7_2
        VSTR     S0,[R0, #+32]
//  319    p = (1-k)*p;   
        VMOV.F32 S0,#1.0
        LDR.N    R0,??DataTable7_43
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        LDR.N    R0,??DataTable7_40
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable7_40
        VSTR     S0,[R0, #0]
//  320    Spd.feedback = Spd.filter;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+28]
//  321   }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     Sum_Distance_EnterCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4012cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x3ff33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x675ddd2b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0xbf79fe43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0xcc63f141

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x3fc84b5d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0x5b573eab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0xbfbcbfb1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     Admit_Dis_EnterIsland

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     Distance_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     Flag_Out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     0x60bb2bc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     0x3f81dcd7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     0xacd9e83e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     0x3fdd5cfa

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     0x3cd141a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     0x3f77e458

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     0xbb2fec57

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     0x3fdf0f27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_33:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_34:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_35:
        DC32     0xfffffc18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_36:
        DC32     0x40490000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_37:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_38:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_39:
        DC32     0x40c38800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_40:
        DC32     p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_41:
        DC32     Q

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_42:
        DC32     R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_43:
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
//   164 bytes in section .bss
//    12 bytes in section .data
// 3 244 bytes in section .text
// 
// 3 244 bytes of CODE memory
//   176 bytes of DATA memory
//
//Errors: none
//Warnings: none
