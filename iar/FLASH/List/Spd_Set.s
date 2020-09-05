///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Jul/2017  15:15:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_Set.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_Set.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Spd_Set.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AheadStop_BehindAccel
        EXTERN Ave_absError_Calcu
        EXTERN Case1_AheadLeave_Wait
        EXTERN Case1_Behind_IslandStop
        EXTERN Case2_Ahead_KeepSide
        EXTERN Case2_Behind_KeepSide
        EXTERN Count
        EXTERN Distance
        EXTERN Error
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Ramp
        EXTERN Mixed_Distance
        EXTERN OverTake_Island
        EXTERN OverTake_Straight
        EXTERN Pre_Error
        EXTERN RampIn_Distance
        EXTERN SendCommand
        EXTERN Single_Run
        EXTERN Spd_Switch
        EXTERN Stop_Distance
        EXTERN Sum_Distance
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN final
        EXTERN final_Distance
        EXTERN peak

        PUBLIC Ahead_Spd_Set
        PUBLIC Basic_Spd_Set
        PUBLIC Behind_LeaveIsland_ChaseFlag
        PUBLIC Behind_Spd_Set
        PUBLIC Case1_TurnSwitch_Dis
        PUBLIC Chase_Distance_Last
        PUBLIC Chase_Distance_Last2
        PUBLIC Chase_Distance_Last3
        PUBLIC Derivative_Error
        PUBLIC EnterCurve_SumDis
        PUBLIC EnterStrai_SumDis
        PUBLIC EnterStrai_SumDis_Last
        PUBLIC Feedback
        PUBLIC Flag_Follow
        PUBLIC Grid_Distance
        PUBLIC Grid_Error
        PUBLIC Grid_Error_Last
        PUBLIC Grid_Error_Last2
        PUBLIC Grid_Error_Last3
        PUBLIC Island_Distance
        PUBLIC Island_Spd_DownLimit
        PUBLIC Island_Spd_UpLimit
        PUBLIC Limit_Distance_EnterCurve
        PUBLIC Limit_Distance_EnterIsland
        PUBLIC Limit_Distance_EnterStrai
        PUBLIC Mixed_Drror
        PUBLIC Mixed_Error
        PUBLIC Mixed_Error_Last
        PUBLIC Spd
        PUBLIC Spd_DownLimit
        PUBLIC Spd_Set_ZeroStart_Dis
        PUBLIC Spd_Straight
        PUBLIC Spd_UpLimit
        PUBLIC Target
        PUBLIC Ud
        PUBLIC Ud_Last
        PUBLIC Ud_error
        PUBLIC percent_ahead
        PUBLIC percent_behind

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Spd_Set.c
//    1 #include "Includes.h"
//    2 
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    4 int  Limit_Distance_EnterCurve  = 100; 
Limit_Distance_EnterCurve:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 int  Spd_UpLimit                = 230; 
Spd_UpLimit:
        DATA
        DC32 230

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    6 int  Spd_DownLimit              = 200; 
Spd_DownLimit:
        DATA
        DC32 200

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    7 int  Limit_Distance_EnterStrai  = 100; 
Limit_Distance_EnterStrai:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    8 int  Spd_Straight               = 260;
Spd_Straight:
        DATA
        DC32 260
//    9 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 int Limit_Distance_EnterIsland  = 180; 
Limit_Distance_EnterIsland:
        DATA
        DC32 180

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   11 int Island_Spd_UpLimit          = 200; 
Island_Spd_UpLimit:
        DATA
        DC32 200

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   12 int Island_Spd_DownLimit        = 150;
Island_Spd_DownLimit:
        DATA
        DC32 150
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8  Flag_Follow = 0;
Flag_Follow:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 uint8  Behind_LeaveIsland_ChaseFlag;
Behind_LeaveIsland_ChaseFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int    Derivative_Error = 0;
Derivative_Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int    Island_Distance = 0;
Island_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int    EnterCurve_SumDis = 0;
EnterCurve_SumDis:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   19 int    EnterStrai_SumDis = 11000;
EnterStrai_SumDis:
        DATA
        DC32 11000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int    EnterStrai_SumDis_Last = 0;
EnterStrai_SumDis_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int    Spd_Set_ZeroStart_Dis = 0;
Spd_Set_ZeroStart_Dis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int    Case1_TurnSwitch_Dis;
Case1_TurnSwitch_Dis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int    Grid_Distance;
Grid_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 int    Chase_Distance_Last, Chase_Distance_Last2, Chase_Distance_Last3;
Chase_Distance_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Chase_Distance_Last2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Chase_Distance_Last3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 int    Grid_Error;
Grid_Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 int    Grid_Error_Last;
Grid_Error_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int    Grid_Error_Last2;
Grid_Error_Last2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 int    Grid_Error_Last3;
Grid_Error_Last3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int    Ud, Ud_error, Ud_Last;
Ud:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ud_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ud_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 int    Mixed_Error, Mixed_Error_Last, Mixed_Drror;
Mixed_Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Mixed_Error_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Mixed_Drror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 int    Target,Feedback;
Target:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Feedback:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 float  percent_ahead = 1.0;
percent_ahead:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 float  percent_behind = 1.0;
percent_behind:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 struct Speed Spd;
Spd:
        DS8 144
//   35 extern uint8 Case1_AheadLeave_Wait;
//   36 extern uint8 OverTake;
//   37 extern uint8 Case1_Behind_IslandStop;
//   38 extern uint8 Case1_Behind_IslandFollow;
//   39 extern uint8 Flag_Island_Position;
//   40 extern uint8 Turn_Around;
//   41 extern uint8 Family_Status;
//   42 extern uint8 Spd_Set_ZeroStart;
//   43 extern uint8 Flag_Island;
//   44 extern uint8 Flag_Ramp;
//   45 extern uint8 Flag_Stop;
//   46 extern uint8 Turn_Around;
//   47 extern uint8 final;
//   48 extern uint8 final_Last;
//   49 extern uint8 Flag_Island;
//   50 extern uint8 Flag_Island_Last;
//   51 extern uint8 Single_Run;
//   52 extern uint8 OverTake_Island;
//   53 extern uint8 OverTake_Straight;
//   54 extern uint8 Case2_Ahead_KeepSide;
//   55 extern uint8 Case2_Behind_KeepSide;
//   56 extern uint8 SendCommand;
//   57 extern long int IslandIn_Distance;
//   58 extern long int IslandAdmit_Distance;
//   59 extern long int Sum_Distance;
//   60 extern int IslandAdmit_Distance_Last; 
//   61 extern int Mixed_Distance;
//   62 extern int Stop_Distance;
//   63 extern int Behind_SpdDwn_EnterIslDis;
//   64 extern int Rudder_Mid;
//   65 extern int Pre_Error[];
//   66 extern int peak[];
//   67 extern int Error;
//   68 extern int Distance;
//   69 extern int RampIn_Distance;
//   70 extern int Flag_Island_Confirm;
//   71 extern int Flag_Island_Confirm_Last;
//   72 extern int Count;
//   73 extern int Island_Distance;
//   74 extern uint8 Spd_Switch;
//   75 extern uint8 AheadStop_BehindAccel;
//   76 extern struct Rudder Angle;
//   77 extern int final_Distance;
//   78 
//   79 
//   80 /*
//   81 Function：基础速度设置
//   82 Return：Null
//   83 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 void Basic_Spd_Set(void)
//   85 {
Basic_Spd_Set:
        PUSH     {R3-R9,LR}
//   86      EnterStrai_SumDis_Last = EnterStrai_SumDis;
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   87    
//   88    //--------------路径判断基准---------------//
//   89      if(Grid_Distance >= 5*100)
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+500
        BLT.N    ??Basic_Spd_Set_0
//   90         {
//   91            Grid_Error_Last3 = Grid_Error_Last2;
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_4
        STR      R0,[R1, #+0]
//   92            Grid_Error_Last2 = Grid_Error_Last;
        LDR.W    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   93            Grid_Error_Last = Grid_Error;       
        LDR.W    R0,??DataTable1_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//   94            Grid_Error = Error;
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_6
        STR      R0,[R1, #+0]
//   95            Grid_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_2
        STR      R0,[R1, #+0]
        B.N      ??Basic_Spd_Set_1
//   96         }
//   97       else 
//   98          Grid_Distance += Distance;
??Basic_Spd_Set_0:
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   99 
//  100       Derivative_Error = (int) fabs( fabs(Grid_Error+Grid_Error_Last) - fabs(Grid_Error_Last2+Grid_Error_Last3) );
??Basic_Spd_Set_1:
        LDR.W    R0,??DataTable1_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_4
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//  101       if(Derivative_Error > 10)
        LDR.W    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??Basic_Spd_Set_2
//  102          Derivative_Error = 10;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//  103 
//  104     
//  105     //---------------------------弯内速度--------------------------// 
//  106       //---直道入弯
//  107       if(EnterStrai_SumDis != 0)
??Basic_Spd_Set_2:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_3
//  108         {
//  109           if(fabs(Error) > 9)
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_10  ;; 0x40220000
        BL       __aeabi_cdrcmple
        BHI.N    ??Basic_Spd_Set_4
//  110             { 
//  111                EnterStrai_SumDis = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//  112             }
//  113           if(fabs(Error) > 15)
??Basic_Spd_Set_4:
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_11  ;; 0x402e0000
        BL       __aeabi_cdrcmple
        BHI.N    ??Basic_Spd_Set_3
//  114             { 
//  115                EnterStrai_SumDis = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//  116                EnterCurve_SumDis = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  117             }        
//  118         }
//  119       
//  120       
//  121       //---弯道入弯
//  122       if(EnterCurve_SumDis == (190+Pulse_Distance)*100)
??Basic_Spd_Set_3:
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVW     R1,#+20000
        CMP      R0,R1
        BNE.N    ??Basic_Spd_Set_5
//  123         if(Derivative_Error>=5 && fabs(Error)-fabs(Pre_Error[ErrorNum-2])>0 && fabs(Error)>8)
        LDR.W    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??Basic_Spd_Set_5
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.W    R0,??DataTable1_13
        LDR      R0,[R0, #+392]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??Basic_Spd_Set_5
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_14  ;; 0x40200000
        BL       __aeabi_cdrcmple
        BHI.N    ??Basic_Spd_Set_5
//  124            EnterCurve_SumDis = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  125       
//  126       //---入弯加速距离
//  127       if(EnterCurve_SumDis != 0)
??Basic_Spd_Set_5:
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_6
//  128           EnterCurve_SumDis += Distance;
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  129       
//  130       if(EnterCurve_SumDis > (Limit_Distance_EnterCurve+Pulse_Distance)*100 )
??Basic_Spd_Set_6:
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable1_12
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Basic_Spd_Set_7
//  131           EnterCurve_SumDis = (Limit_Distance_EnterCurve+Pulse_Distance)*100; 
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  132       
//  133       
//  134       //---弯内速度设定
//  135       Spd.target = (int) (     Spd_DownLimit 
//  136                             + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
//  137                             * (Spd_UpLimit - Spd_DownLimit)  );  
??Basic_Spd_Set_7:
        LDR.W    R0,??DataTable1_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  138       
//  139       if(EnterCurve_SumDis != 0)
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Basic_Spd_Set_8
//  140           {
//  141               switch (Spd_Switch)
        LDR.W    R0,??DataTable1_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Basic_Spd_Set_9
        BCC.W    ??Basic_Spd_Set_10
        CMP      R0,#+3
        BEQ.W    ??Basic_Spd_Set_11
        BCC.N    ??Basic_Spd_Set_12
        CMP      R0,#+4
        BEQ.W    ??Basic_Spd_Set_13
        B.N      ??Basic_Spd_Set_10
//  142                  {
//  143                     case 1:
//  144                           Spd.target = (int) (     Spd_DownLimit 
//  145                                                 + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
//  146                                                 * (Spd_UpLimit - Spd_DownLimit)  );  
??Basic_Spd_Set_9:
        LDR.W    R0,??DataTable1_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  147                      break;
        B.N      ??Basic_Spd_Set_8
//  148                      
//  149                     case 2:
//  150                           Spd.target = (int) (     Spd_DownLimit+10 
//  151                                                 + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
//  152                                                 * (Spd_UpLimit - Spd_DownLimit)*1.3  );  
??Basic_Spd_Set_12:
        LDR.W    R0,??DataTable1_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2_1  ;; 0xcccccccd
        LDR.W    R3,??DataTable2_2  ;; 0x3ff4cccc
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  153                       break;
        B.N      ??Basic_Spd_Set_8
//  154                       
//  155                     case 3:
//  156                           Spd.target = (int) (     Spd_DownLimit+15
//  157                                                 + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
//  158                                                 * (Spd_UpLimit - Spd_DownLimit)*1.8  );  
??Basic_Spd_Set_11:
        LDR.W    R0,??DataTable1_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+15
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2_1  ;; 0xcccccccd
        LDR.W    R3,??DataTable2_3  ;; 0x3ffccccc
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  159                       break;
        B.N      ??Basic_Spd_Set_8
//  160                       
//  161                     case 4:
//  162                           Spd.target = (int) (     Spd_DownLimit+20 
//  163                                                 + ((EnterCurve_SumDis/100 - Pulse_Distance)/(1.0*Limit_Distance_EnterCurve))
//  164                                                 * (Spd_UpLimit - Spd_DownLimit)*2.2  );  
??Basic_Spd_Set_13:
        LDR.W    R0,??DataTable1_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+20
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2_4  ;; 0x9999999a
        LDR.W    R3,??DataTable2_5  ;; 0x40019999
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  165                       break;
        B.N      ??Basic_Spd_Set_8
//  166                       
//  167                     default:
//  168                       break;
//  169                  }       
//  170           }
//  171          
//  172     
//  173     //--------------------------直道速度-------------------------------//
//  174       //---直道判断
//  175       if(    AveError_Straight<=5 && fabs(Error)<=5
//  176           && Flag_Island_Confirm==0 && Flag_Island==0 && final==0)
??Basic_Spd_Set_10:
??Basic_Spd_Set_8:
        MOVS     R0,#+50
        BL       Ave_absError_Calcu
        LDR.W    R1,??DataTable2_6  ;; 0x40a00001
        BL       __aeabi_cfcmple
        BCS.N    ??Basic_Spd_Set_14
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable2_7  ;; 0x40140000
        BL       __aeabi_cdcmple
        BCS.N    ??Basic_Spd_Set_14
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Basic_Spd_Set_14
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Basic_Spd_Set_14
        LDR.W    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Basic_Spd_Set_14
//  177         {   
//  178             if(EnterStrai_SumDis == 0)
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Basic_Spd_Set_14
//  179                EnterStrai_SumDis = Pulse_Distance*100;          
        MOV      R0,#+1000
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//  180         }      
//  181    
//  182       //---直道加速距离
//  183       if(EnterStrai_SumDis != 0)
??Basic_Spd_Set_14:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_15
//  184         EnterStrai_SumDis += Distance;
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//  185       
//  186       if(EnterStrai_SumDis > (Limit_Distance_EnterStrai+Pulse_Distance)*100)
??Basic_Spd_Set_15:
        LDR.W    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Basic_Spd_Set_16
//  187         EnterStrai_SumDis = (Limit_Distance_EnterStrai+Pulse_Distance)*100;
        LDR.W    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable1
        STR      R0,[R1, #+0]
//  188         
//  189       //---直道速度   
//  190       switch (Spd_Switch)
??Basic_Spd_Set_16:
        LDR.W    R0,??DataTable1_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Basic_Spd_Set_17
        BCC.N    ??Basic_Spd_Set_18
        CMP      R0,#+3
        BEQ.N    ??Basic_Spd_Set_19
        BCC.N    ??Basic_Spd_Set_20
        CMP      R0,#+4
        BEQ.N    ??Basic_Spd_Set_21
        B.N      ??Basic_Spd_Set_18
//  191        {
//  192           case 1:
//  193             Spd_Straight = 240;
??Basic_Spd_Set_17:
        MOVS     R0,#+240
        LDR.W    R1,??DataTable2_12
        STR      R0,[R1, #+0]
//  194            break;
        B.N      ??Basic_Spd_Set_22
//  195            
//  196           case 2:
//  197              Spd_Straight = 260;
??Basic_Spd_Set_20:
        MOV      R0,#+260
        LDR.W    R1,??DataTable2_12
        STR      R0,[R1, #+0]
//  198             break;
        B.N      ??Basic_Spd_Set_22
//  199             
//  200           case 3:
//  201              Spd_Straight = 270;
??Basic_Spd_Set_19:
        MOV      R0,#+270
        LDR.W    R1,??DataTable2_12
        STR      R0,[R1, #+0]
//  202             break;
        B.N      ??Basic_Spd_Set_22
//  203             
//  204           case 4:
//  205              Spd_Straight = 280;
??Basic_Spd_Set_21:
        MOV      R0,#+280
        LDR.W    R1,??DataTable2_12
        STR      R0,[R1, #+0]
//  206             break;
        B.N      ??Basic_Spd_Set_22
//  207             
//  208           default:
//  209             break;
//  210        }  
//  211       
//  212       if(EnterStrai_SumDis != 0)    
??Basic_Spd_Set_18:
??Basic_Spd_Set_22:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_23
//  213          Spd.target = (int)(Spd_UpLimit + ( Spd_Straight-Spd_UpLimit)
//  214                                        *( (EnterStrai_SumDis-Pulse_Distance*100)
//  215                                          /(Limit_Distance_EnterStrai*100.0) )  );
        LDR.W    R0,??DataTable1_18
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1000
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_13  ;; 0x40590000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  216 
//  217     
//  218       
//  219     //-------------------------环岛速度--------------------------//
//  220        //---清除环岛
//  221        if(Flag_Island_Confirm==0 && final_Distance==0)
??Basic_Spd_Set_23:
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_14
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Basic_Spd_Set_24
//  222          if(peak[2]>Peak2_Island_Limit || peak[1]>Peak13_Island_Limit|| peak[3]>Peak13_Island_Limit)
        LDR.W    R0,??DataTable2_15
        LDR      R0,[R0, #+8]
        CMP      R0,#+66
        BGE.N    ??Basic_Spd_Set_25
        LDR.W    R0,??DataTable2_15
        LDR      R0,[R0, #+4]
        CMP      R0,#+66
        BGE.N    ??Basic_Spd_Set_25
        LDR.W    R0,??DataTable2_15
        LDR      R0,[R0, #+12]
        CMP      R0,#+66
        BLT.N    ??Basic_Spd_Set_24
//  223             Island_Distance = 0;
??Basic_Spd_Set_25:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  224           
//  225       //---环岛距离
//  226       if(Island_Distance!=0 && Flag_Island==1)
??Basic_Spd_Set_24:
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_26
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Basic_Spd_Set_26
//  227          Island_Distance += Distance;
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  228       if(Island_Distance > Limit_Distance_EnterIsland*100)
??Basic_Spd_Set_26:
        LDR.W    R0,??DataTable2_17
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable2_16
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Basic_Spd_Set_27
//  229          Island_Distance = Limit_Distance_EnterIsland*100;
        LDR.W    R0,??DataTable2_17
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  230       
//  231       //---环岛速度
//  232       if(Island_Distance != 0)
??Basic_Spd_Set_27:
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Basic_Spd_Set_28
//  233          Spd.target = Island_Spd_DownLimit + (Island_Spd_UpLimit-Island_Spd_DownLimit)*Island_Distance/(Limit_Distance_EnterIsland*100.0);     
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_16
        LDR      R1,[R1, #+0]
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_17
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_13  ;; 0x40590000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  234 }
??Basic_Spd_Set_28:
        POP      {R0,R4-R9,PC}    ;; return
//  235 
//  236 
//  237 /*
//  238 Function：前车速度设置
//  239 Return：Null
//  240 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void Ahead_Spd_Set()
//  242 {
Ahead_Spd_Set:
        PUSH     {R3-R7,LR}
//  243   /********************正常路径速度***********************/  
//  244   Basic_Spd_Set();
        BL       Basic_Spd_Set
//  245   
//  246   /********************前车追逐速度***********************/
//  247     if(Count%10 == 0)
        MOVS     R0,#+10
        LDR.W    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable2_20
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.W    ??Ahead_Spd_Set_0
//  248       {  
//  249          float percent_ahead_P, percent_ahead_D;
//  250          int Chase_Distance;
//  251          
//  252           Chase_Distance = Mixed_Distance + 30 - 10*Spd_Switch;           
        LDR.W    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+30
        LDR.N    R1,??DataTable1_19
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+10
        MLS      R4,R2,R1,R0
//  253          
//  254          //双车距离比例控制
//  255          if(Chase_Distance >= 200) 
        CMP      R4,#+200
        BLT.N    ??Ahead_Spd_Set_1
//  256             percent_ahead_P = 0.90;       
        LDR.W    R5,??DataTable2_22  ;; 0x3f666666
        B.N      ??Ahead_Spd_Set_2
//  257          else if(Chase_Distance > 150)  
??Ahead_Spd_Set_1:
        CMP      R4,#+151
        BLT.N    ??Ahead_Spd_Set_3
//  258             percent_ahead_P = 1.0 - 0.10*((Chase_Distance-150)/50.0);
        SUBS     R0,R4,#+150
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_23  ;; 0x40490000
        BL       __aeabi_ddiv
        LDR.W    R2,??DataTable2_4  ;; 0x9999999a
        LDR.W    R3,??DataTable2_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        MOVS     R5,R0
        B.N      ??Ahead_Spd_Set_2
//  259          else if(Chase_Distance > 100)  
??Ahead_Spd_Set_3:
        CMP      R4,#+101
        BLT.N    ??Ahead_Spd_Set_4
//  260             percent_ahead_P = 1.05 - 0.05*(Chase_Distance-100)/50.0;
        SUBS     R0,R4,#+100
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable2_4  ;; 0x9999999a
        LDR.W    R3,??DataTable2_25  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_23  ;; 0x40490000
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable2_1  ;; 0xcccccccd
        LDR.W    R1,??DataTable2_26  ;; 0x3ff0cccc
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        MOVS     R5,R0
        B.N      ??Ahead_Spd_Set_2
//  261          else  
//  262             percent_ahead_P = 1.05;
??Ahead_Spd_Set_4:
        LDR.W    R5,??DataTable2_27  ;; 0x3f866666
//  263 
//  264          if(percent_ahead_P > 1.05)    percent_ahead_P = 1.05;
??Ahead_Spd_Set_2:
        MOVS     R0,R5
        LDR.W    R1,??DataTable2_28  ;; 0x3f866667
        BL       __aeabi_cfrcmple
        BHI.N    ??Ahead_Spd_Set_5
        LDR.W    R5,??DataTable2_27  ;; 0x3f866666
//  265          if(percent_ahead_P < 0.9)     percent_ahead_P = 0.9;         
??Ahead_Spd_Set_5:
        MOVS     R0,R5
        LDR.W    R1,??DataTable2_29  ;; 0x3f666667
        BL       __aeabi_cfcmple
        BCS.N    ??Ahead_Spd_Set_6
        LDR.W    R5,??DataTable2_22  ;; 0x3f666666
//  266 
//  267          
//  268          //双车距离微分D控制
//  269          percent_ahead_D = (Chase_Distance_Last2 - Chase_Distance)/20.0; //10个周期内双车位移差最大限幅在20cm内
??Ahead_Spd_Set_6:
        LDR.W    R0,??DataTable2_30
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R4
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_31  ;; 0x40340000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R6,R0
//  270          if(percent_ahead_D > 1)       percent_ahead_D = 1;
        MOVS     R0,R6
        LDR.W    R1,??DataTable2_32  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Ahead_Spd_Set_7
        MOVS     R6,#+1065353216
//  271          if(percent_ahead_D < -1)       percent_ahead_D = -1;       
??Ahead_Spd_Set_7:
        MOVS     R0,R6
        LDR.W    R1,??DataTable2_33  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??Ahead_Spd_Set_8
        LDR.W    R6,??DataTable2_33  ;; 0xbf800000
//  272         
//  273          Chase_Distance_Last3 = Chase_Distance_Last2;
??Ahead_Spd_Set_8:
        LDR.W    R0,??DataTable2_30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_34
        STR      R0,[R1, #+0]
//  274          Chase_Distance_Last2 = Chase_Distance_Last;
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_30
        STR      R0,[R1, #+0]
//  275          Chase_Distance_Last = Chase_Distance;
        LDR.W    R0,??DataTable2_35
        STR      R4,[R0, #+0]
//  276 
//  277          //双车距离比例 + 微分控制
//  278          percent_ahead = percent_ahead_P + 0.15*percent_ahead_D;           
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable2_36  ;; 0x3fc33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_37
        STR      R0,[R1, #+0]
//  279          if(percent_ahead > 1.05)    percent_ahead = 1.05;
        LDR.W    R0,??DataTable2_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_28  ;; 0x3f866667
        BL       __aeabi_cfrcmple
        BHI.N    ??Ahead_Spd_Set_9
        LDR.W    R0,??DataTable2_27  ;; 0x3f866666
        LDR.W    R1,??DataTable2_37
        STR      R0,[R1, #+0]
//  280          if(percent_ahead < 0.9)    percent_ahead = 0.9;
??Ahead_Spd_Set_9:
        LDR.W    R0,??DataTable2_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_29  ;; 0x3f666667
        BL       __aeabi_cfcmple
        BCS.N    ??Ahead_Spd_Set_0
        LDR.W    R0,??DataTable2_22  ;; 0x3f666666
        LDR.W    R1,??DataTable2_37
        STR      R0,[R1, #+0]
//  281        }
//  282     
//  283   if(OverTake_Island != No)
??Ahead_Spd_Set_0:
        LDR.W    R0,??DataTable2_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_10
//  284     if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_11
        LDR.W    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_11
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_10
//  285       percent_ahead = 1;
??Ahead_Spd_Set_11:
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable2_37
        STR      R0,[R1, #+0]
//  286     
//  287     //双车跟随情况下，控制距离
//  288     if(Single_Run == No)
??Ahead_Spd_Set_10:
        LDR.W    R0,??DataTable2_39
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_12
//  289       if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0 && Case2_Ahead_KeepSide==0)
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_12
        LDR.W    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_12
        LDR.W    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_12
        LDR.W    R0,??DataTable2_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_12
//  290          Spd.target *= percent_ahead; 
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  291   
//  292     
//  293   /********************超车时速度设置********************/   
//  294     //-----Case1（环岛超车）:前车速度------//
//  295     if(OverTake_Island != No)
??Ahead_Spd_Set_12:
        LDR.W    R0,??DataTable2_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_13
//  296       { 
//  297          if(Turn_Around == 0)
        LDR.W    R0,??DataTable2_41
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ahead_Spd_Set_13
//  298            if(Case1_AheadLeave_Wait==1 && Mixed_Distance>200)
        LDR.W    R0,??DataTable2_42
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ahead_Spd_Set_13
        LDR.W    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+201
        BLT.N    ??Ahead_Spd_Set_13
//  299               Spd.target = 80 - Family_Status*20;
        LDR.W    R0,??DataTable2_43
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+20
        MULS     R0,R1,R0
        RSBS     R0,R0,#+80
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  300       }
//  301     
//  302     
//  303     //-----Case2（直道超车）:前车速度------//
//  304     if(OverTake_Straight == Yes)
??Ahead_Spd_Set_13:
        LDR.W    R0,??DataTable2_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ahead_Spd_Set_14
//  305       {
//  306         //前车速度设置
//  307         if(Case2_Ahead_KeepSide == 1)
        LDR.W    R0,??DataTable2_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ahead_Spd_Set_14
//  308           {
//  309             float SumDis_Correct;
//  310             SumDis_Correct = Sum_Distance/10000.0;
        LDR.W    R0,??DataTable2_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_46  ;; 0x40c38800
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R4,R0
//  311             
//  312             if(Sum_Distance/100<80 && Spd.target!=0)
        LDR.W    R0,??DataTable2_45
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        CMP      R0,#+80
        BGE.N    ??Ahead_Spd_Set_15
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_15
//  313                 Spd.target = (int)170*(0.4444*SumDis_Correct*SumDis_Correct + 1);
        MOVS     R0,R4
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_47  ;; 0xb295e9e2
        LDR.W    R3,??DataTable2_48  ;; 0x3fdc710c
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_17  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_49  ;; 0x40654000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
        B.N      ??Ahead_Spd_Set_14
//  314             else 
//  315                 Spd.target = 0;
??Ahead_Spd_Set_15:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  316           }        
//  317       }
//  318   
//  319   
//  320   /*********************特殊路径速度*********************/ 
//  321     //----坡道速度----//
//  322     if(Flag_Ramp != 0)
??Ahead_Spd_Set_14:
        LDR.W    R0,??DataTable2_50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ahead_Spd_Set_16
//  323        Spd.target = (int) ( Spd_Ramp*( 1.2 - 0.2*RampIn_Distance/(RampIn_Dis*100.0) ) );
        LDR.W    R0,??DataTable2_51
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable2_4  ;; 0x9999999a
        LDR.W    R3,??DataTable2_52  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_53  ;; 0x40dd4c00
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+858993459
        LDR.W    R1,??DataTable2_54  ;; 0x3ff33333
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_55  ;; 0x4072c000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  324       
//  325 
//  326  /***********************开机等待************************/
//  327     if(Count < 100)
??Ahead_Spd_Set_16:
        LDR.W    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Ahead_Spd_Set_17
//  328        Spd.target = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  329     
//  330  /***********************停车*************************/   
//  331     if(Stop_Distance > 140*100) 
??Ahead_Spd_Set_17:
        LDR.W    R0,??DataTable2_56
        LDR      R0,[R0, #+0]
        MOVW     R1,#+14001
        CMP      R0,R1
        BLT.N    ??Ahead_Spd_Set_18
//  332       {
//  333         Spd.target = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  334         SendCommand = Ahead_Stop_Unexpected;
        MOVS     R0,#+112
        LDR.W    R1,??DataTable2_57
        STRB     R0,[R1, #+0]
//  335       }
//  336 }
??Ahead_Spd_Set_18:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     EnterStrai_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     EnterStrai_SumDis_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Grid_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     Grid_Error_Last2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     Grid_Error_Last3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Grid_Error_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Grid_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     Derivative_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x40220000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x402e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     EnterCurve_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     Pre_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x40200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     Limit_Distance_EnterCurve

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     Spd_DownLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     Spd_UpLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     Spd_Switch
//  337 
//  338 
//  339 /*
//  340 Function：后车速度设置
//  341 Return：Null
//  342 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  343 void Behind_Spd_Set()
//  344 { 
Behind_Spd_Set:
        PUSH     {R4-R6,LR}
//  345   /*********************基础速度***********************/  
//  346     Basic_Spd_Set();  
        BL       Basic_Spd_Set
//  347    
//  348   /*********************追逐速度***********************/
//  349     if(Count%10==0)
        MOVS     R0,#+10
        LDR.N    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable2_20
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.W    ??Behind_Spd_Set_0
//  350       {  
//  351          float percent_behind_P,percent_behind_D;
//  352          int Chase_Distance;
//  353            
//  354          Chase_Distance = Mixed_Distance+20;   
        LDR.N    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        ADDS     R4,R0,#+20
//  355 
//  356          //双车距离比例P控制
//  357          if(Chase_Distance > 200) 
        CMP      R4,#+201
        BLT.N    ??Behind_Spd_Set_1
//  358             percent_behind_P = 1.05;
        LDR.N    R5,??DataTable2_27  ;; 0x3f866666
        B.N      ??Behind_Spd_Set_2
//  359          else if(Chase_Distance > 150)  
??Behind_Spd_Set_1:
        CMP      R4,#+151
        BLT.N    ??Behind_Spd_Set_3
//  360             percent_behind_P = 1.0 + 0.05*(Chase_Distance-150)/50.0;
        SUBS     R0,R4,#+150
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable2_4  ;; 0x9999999a
        LDR.N    R3,??DataTable2_25  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_23  ;; 0x40490000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_58  ;; 0x3ff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R5,R0
        B.N      ??Behind_Spd_Set_2
//  361          else if(Chase_Distance > 100)  
??Behind_Spd_Set_3:
        CMP      R4,#+101
        BLT.N    ??Behind_Spd_Set_4
//  362             percent_behind_P = 0.90 + 0.10*(Chase_Distance-100)/50.0;
        SUBS     R0,R4,#+100
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable2_4  ;; 0x9999999a
        LDR.N    R3,??DataTable2_24  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_23  ;; 0x40490000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable2_1  ;; 0xcccccccd
        LDR.N    R3,??DataTable2_59  ;; 0x3feccccc
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R5,R0
        B.N      ??Behind_Spd_Set_2
//  363          else  
//  364             percent_behind_P = 0.90;
??Behind_Spd_Set_4:
        LDR.N    R5,??DataTable2_22  ;; 0x3f666666
//  365          
//  366          if(percent_behind_P > 1.05)    percent_behind_P = 1.05;
??Behind_Spd_Set_2:
        MOVS     R0,R5
        LDR.N    R1,??DataTable2_28  ;; 0x3f866667
        BL       __aeabi_cfrcmple
        BHI.N    ??Behind_Spd_Set_5
        LDR.N    R5,??DataTable2_27  ;; 0x3f866666
//  367          if(percent_behind_P < 0.9)    percent_behind_P = 0.9;         
??Behind_Spd_Set_5:
        MOVS     R0,R5
        LDR.N    R1,??DataTable2_29  ;; 0x3f666667
        BL       __aeabi_cfcmple
        BCS.N    ??Behind_Spd_Set_6
        LDR.N    R5,??DataTable2_22  ;; 0x3f666666
//  368    
//  369          //双车距离微分D控制
//  370          percent_behind_D = (Chase_Distance - Chase_Distance_Last2)/20.0; //10个周期内双车位移差最大限幅在20cm内
??Behind_Spd_Set_6:
        LDR.N    R0,??DataTable2_30
        LDR      R0,[R0, #+0]
        SUBS     R0,R4,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_31  ;; 0x40340000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R6,R0
//  371          if(percent_behind_D > 1)       percent_behind_D = 1;
        MOVS     R0,R6
        LDR.N    R1,??DataTable2_32  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Behind_Spd_Set_7
        MOVS     R6,#+1065353216
//  372          if(percent_behind_D < -1)       percent_behind_D = -1;       
??Behind_Spd_Set_7:
        MOVS     R0,R6
        LDR.N    R1,??DataTable2_33  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??Behind_Spd_Set_8
        LDR.N    R6,??DataTable2_33  ;; 0xbf800000
//  373         
//  374          Chase_Distance_Last3 = Chase_Distance_Last2;
??Behind_Spd_Set_8:
        LDR.N    R0,??DataTable2_30
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_34
        STR      R0,[R1, #+0]
//  375          Chase_Distance_Last2 = Chase_Distance_Last;
        LDR.N    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_30
        STR      R0,[R1, #+0]
//  376          Chase_Distance_Last = Chase_Distance;
        LDR.N    R0,??DataTable2_35
        STR      R4,[R0, #+0]
//  377 
//  378          //双车距离比例微分PD控制
//  379          percent_behind = percent_behind_P + 0.15*percent_behind_D; 
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_36  ;; 0x3fc33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_60
        STR      R0,[R1, #+0]
//  380          if(percent_behind > 1.05)     percent_behind = 1.05;
        LDR.N    R0,??DataTable2_60
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_28  ;; 0x3f866667
        BL       __aeabi_cfrcmple
        BHI.N    ??Behind_Spd_Set_9
        LDR.N    R0,??DataTable2_27  ;; 0x3f866666
        LDR.N    R1,??DataTable2_60
        STR      R0,[R1, #+0]
//  381          if(percent_behind < 0.9)     percent_behind = 0.9;       
??Behind_Spd_Set_9:
        LDR.N    R0,??DataTable2_60
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_29  ;; 0x3f666667
        BL       __aeabi_cfcmple
        BCS.N    ??Behind_Spd_Set_0
        LDR.N    R0,??DataTable2_22  ;; 0x3f666666
        LDR.N    R1,??DataTable2_60
        STR      R0,[R1, #+0]
//  382       }
//  383 
//  384   if(OverTake_Island != No)
??Behind_Spd_Set_0:
        LDR.N    R0,??DataTable2_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_10
//  385     if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
        LDR.N    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Behind_Spd_Set_11
        LDR.N    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Behind_Spd_Set_11
        LDR.N    R0,??DataTable2_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_10
//  386       percent_behind = 1;
??Behind_Spd_Set_11:
        MOVS     R0,#+1065353216
        LDR.N    R1,??DataTable2_60
        STR      R0,[R1, #+0]
//  387   
//  388   //双车跟随情况下，控制距离
//  389   if(Single_Run == No)
??Behind_Spd_Set_10:
        LDR.N    R0,??DataTable2_39
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Behind_Spd_Set_12
//  390       Spd.target *= percent_behind; 
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_60
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  391   
//  392   /****************--超车时速度设置********************/
//  393      //---Case1（环岛超车）：后车的速度设置--//
//  394      if(Single_Run == No)
??Behind_Spd_Set_12:
        LDR.N    R0,??DataTable2_39
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Behind_Spd_Set_13
//  395        {
//  396          if(OverTake_Island != No)
        LDR.N    R0,??DataTable2_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_13
//  397            {
//  398               //--环岛超车情况下：后车等待--// 
//  399               if(Flag_Follow == 1)             
        LDR.N    R0,??DataTable2_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_14
//  400                 {
//  401                    Flag_Follow = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_61
        STRB     R0,[R1, #+0]
//  402                    Case1_Behind_IslandStop = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_62
        STRB     R0,[R1, #+0]
//  403                 }
//  404              
//  405               //--环岛超车情况下：后车停车--//
//  406               if(Case1_Behind_IslandStop == 1) 
??Behind_Spd_Set_14:
        LDR.N    R0,??DataTable2_62
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_13
//  407                  Spd.target = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  408            }
//  409        }
//  410    
//  411     //----Case2（直道超车）：后车速度设置----//
//  412     if(OverTake_Straight == Yes)
??Behind_Spd_Set_13:
        LDR.N    R0,??DataTable2_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_15
//  413      {
//  414        //后车速度设置
//  415        if(Case2_Behind_KeepSide == 1)
        LDR.N    R0,??DataTable2_63
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_15
//  416             Spd.target = 200;
        MOVS     R0,#+200
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  417      }
//  418 
//  419     
//  420   /********************特殊路径速度********************/        
//  421   //----后车坡道速度----//
//  422   if(Flag_Ramp != 0)
??Behind_Spd_Set_15:
        LDR.N    R0,??DataTable2_50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_16
//  423      Spd.target = (int)(Spd_Ramp*( 1.3 - 0.3*RampIn_Distance/(RampIn_Dis*100.0) )*percent_behind);
        LDR.N    R0,??DataTable2_51
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_64  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_53  ;; 0x40dd4c00
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable2_1  ;; 0xcccccccd
        LDR.N    R1,??DataTable2_2  ;; 0x3ff4cccc
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_55  ;; 0x4072c000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_60
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  424   
//  425    
//  426   /*********************开机等待***********************/
//  427     if(Count < 100)
??Behind_Spd_Set_16:
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Behind_Spd_Set_17
//  428       Spd.target = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  429     
//  430   /***********************停车*************************/
//  431     if(Stop_Distance != 0) 
??Behind_Spd_Set_17:
        LDR.N    R0,??DataTable2_56
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_18
//  432       Spd.target = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  433     
//  434     if(AheadStop_BehindAccel==1 && EnterStrai_SumDis!=0)
??Behind_Spd_Set_18:
        LDR.N    R0,??DataTable2_65
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Behind_Spd_Set_19
        LDR.N    R0,??DataTable2_66
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Behind_Spd_Set_19
//  435       Spd.target *= 1.6;
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable2_4  ;; 0x9999999a
        LDR.N    R3,??DataTable2_67  ;; 0x3ff99999
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  436 } 
??Behind_Spd_Set_19:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x3ff4cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x3ffccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40019999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40140000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     Limit_Distance_EnterStrai

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     Spd_Straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     final_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     Island_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     Limit_Distance_EnterIsland

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     Island_Spd_DownLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     Island_Spd_UpLimit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     Mixed_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     0x3f666666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x40490000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     0x3fa99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     0x3ff0cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     0x3f866666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     0x3f866667

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     0x3f666667

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     Chase_Distance_Last2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     Chase_Distance_Last3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     Chase_Distance_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     0x3fc33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     percent_ahead

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     OverTake_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     Single_Run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     Case1_AheadLeave_Wait

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     OverTake_Straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     Sum_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     0x40c38800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     0xb295e9e2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     0x3fdc710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_49:
        DC32     0x40654000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_50:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_51:
        DC32     RampIn_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_52:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_53:
        DC32     0x40dd4c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_54:
        DC32     0x3ff33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_55:
        DC32     0x4072c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_56:
        DC32     Stop_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_57:
        DC32     SendCommand

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_58:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_59:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_60:
        DC32     percent_behind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_61:
        DC32     Flag_Follow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_62:
        DC32     Case1_Behind_IslandStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_63:
        DC32     Case2_Behind_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_64:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_65:
        DC32     AheadStop_BehindAccel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_66:
        DC32     EnterStrai_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_67:
        DC32     0x3ff99999

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  437 
//  438 
//  439           
// 
//   234 bytes in section .bss
//    44 bytes in section .data
// 3 552 bytes in section .text
// 
// 3 552 bytes of CODE memory
//   278 bytes of DATA memory
//
//Errors: none
//Warnings: 2
