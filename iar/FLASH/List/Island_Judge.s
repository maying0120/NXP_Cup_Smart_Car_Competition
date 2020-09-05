///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Island_Judge.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Island_Judge.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Island_Judge.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Behind_LeaveIsland_ChaseFlag
        EXTERN Case1_TurnSwitch_Dis
        EXTERN Count
        EXTERN EnterCurve_SumDis
        EXTERN EnterStrai_SumDis
        EXTERN Error
        EXTERN Family_Status
        EXTERN Flag_Island
        EXTERN Flag_Island_Last
        EXTERN Flag_Ramp
        EXTERN Island_Distance
        EXTERN LPLD_GPIO_Output_b
        EXTERN OverTake_Island
        EXTERN Pre_Error
        EXTERN RampIn_Distance
        EXTERN SendCommand
        EXTERN Spd
        EXTERN Spd_Switch
        EXTERN Stop_Distance
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN final_Last
        EXTERN peak
        EXTERN percent_ahead
        EXTERN percent_behind

        PUBLIC Ahead_TurnError
        PUBLIC Ave_absError
        PUBLIC Ave_absError_Calcu
        PUBLIC Behind_EnterRamp_AdmitDis
        PUBLIC Calcu_AllDis
        PUBLIC Case1_AheadLeave_Dis
        PUBLIC Case1_AheadLeave_Wait
        PUBLIC Case1_Behind_IslandFollow
        PUBLIC Case1_Behind_IslandStop
        PUBLIC Case1_OverTake_Num
        PUBLIC CrossRoadGap_Dis
        PUBLIC CrossRoad_Distance
        PUBLIC CrossRoad_Num
        PUBLIC Dir_IslandTurn
        PUBLIC Distance
        PUBLIC EncoderDis_Ahead
        PUBLIC EncoderDis_Behind
        PUBLIC Enter_Island
        PUBLIC Flag_Island_Confirm
        PUBLIC Flag_Island_Confirm_Dir
        PUBLIC Flag_Island_Confirm_Last
        PUBLIC Flag_Island_Position
        PUBLIC IslandAdmit_Distance
        PUBLIC IslandAdmit_Distance_Last
        PUBLIC IslandGap_Distance
        PUBLIC IslandIn_Distance
        PUBLIC Island_Error_Turn
        PUBLIC Island_Handle
        PUBLIC Leave_Island
        PUBLIC Led_Show
        PUBLIC Ms100_Distance
        PUBLIC Pre_Distance
        PUBLIC Pre_Peak1
        PUBLIC Pre_Peak2
        PUBLIC Pre_Peak3
        PUBLIC Pre_Peak7
        PUBLIC Sum_Distance
        PUBLIC TurnSwitch_InIsland
        PUBLIC final
        PUBLIC final_Distance
        PUBLIC step3_biaozhi
        PUBLIC trendSum_Peak1
        PUBLIC trendSum_Peak2
        PUBLIC trendSum_Peak3
        PUBLIC trendSum_Peak7

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Island_Judge.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    3 uint8 Flag_Island_Position = 0;
Flag_Island_Position:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    4 uint8 final = 0;
final:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8 step3_biaozhi;
step3_biaozhi:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8 Case1_Behind_IslandFollow = 0;
Case1_Behind_IslandFollow:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8 Case1_Behind_IslandStop = 0;
Case1_Behind_IslandStop:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 Dir_IslandTurn = 0;
Dir_IslandTurn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8 Case1_AheadLeave_Wait = 0;
Case1_AheadLeave_Wait:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   10 uint8 Case1_OverTake_Num = 1;
Case1_OverTake_Num:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8 Island_Error_Turn = 0;
Island_Error_Turn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   12 uint8 CrossRoad_Num = 0;
CrossRoad_Num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 Flag_Island_Confirm_Dir = 0;
Flag_Island_Confirm_Dir:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 float Ave_absError;
Ave_absError:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int Case1_AheadLeave_Dis = 0;
Case1_AheadLeave_Dis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int Ahead_TurnError;
Ahead_TurnError:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int Ms100_Distance;
Ms100_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int EncoderDis_Ahead;
EncoderDis_Ahead:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int EncoderDis_Behind;
EncoderDis_Behind:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int final_Distance = 0;
final_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int Distance;
Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int CrossRoad_Distance;
CrossRoad_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int CrossRoadGap_Dis;
CrossRoadGap_Dis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 int Pre_Distance[100];
Pre_Distance:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 long int Sum_Distance;
Sum_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 long int Behind_EnterRamp_AdmitDis;
Behind_EnterRamp_AdmitDis:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 long int IslandAdmit_Distance = 0;     //后车可以识别环岛的距离
IslandAdmit_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 long int IslandAdmit_Distance_Last = 0;
IslandAdmit_Distance_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 long int IslandGap_Distance = 0;       //识别两个环岛之间的最短距离
IslandGap_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 long int IslandIn_Distance;            //后车在环岛内等待的距离
IslandIn_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 int Flag_Island_Confirm = 0;
Flag_Island_Confirm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 int Flag_Island_Confirm_Last = 0;
Flag_Island_Confirm_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int trendSum_Peak1[2];
trendSum_Peak1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 int trendSum_Peak2[2];
trendSum_Peak2:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 int trendSum_Peak3[2];
trendSum_Peak3:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 int trendSum_Peak7[2];
trendSum_Peak7:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 int Pre_Peak1[6];
Pre_Peak1:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 int Pre_Peak2[6];
Pre_Peak2:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int Pre_Peak3[6];
Pre_Peak3:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 int Pre_Peak7[6];
Pre_Peak7:
        DS8 24
//   41 extern uint8 SendCommand;
//   42 extern uint8 Flag_Ramp;
//   43 extern uint8 Turn_Around;
//   44 extern uint8 Flag_Island;
//   45 extern uint8 Flag_Island_Last;
//   46 extern uint8 Family_Status;
//   47 extern uint8 Spd_Set_ZeroStart;
//   48 extern uint8 Stop_Behind;
//   49 extern uint8 Flag_Turn;
//   50 extern uint8 final_Last;
//   51 extern uint8 Single_Run;
//   52 extern uint8 Spd_Switch;
//   53 extern uint8 OverTake_Island;
//   54 extern uint8 OverTake_Straight;
//   55 extern uint8 Case2_Ahead_KeepSide;  
//   56 extern uint8 Case2_Behind_KeepSide;
//   57 extern uint8 OverTake_CrossRoad;
//   58 extern uint8 Case3_Ahead_Stop;
//   59 extern uint8 Case3_Behind_Pass;
//   60 extern uint8 Case3_Turn;
//   61 extern uint8 Ahead_LeaveIsland_WaitFlag;
//   62 extern uint8 Behind_LeaveIsland_ChaseFlag;
//   63 extern int peak[];
//   64 extern int RampIn_Distance;
//   65 extern int EnterStrai_SumDis;
//   66 extern int Case3_Behind_PassDis;
//   67 extern int RampAdmit_Distance;
//   68 extern int   EnterCurve_SumDis;
//   69 extern int Case1_TurnSwitch_Dis;
//   70 extern int Mixed_Distance;
//   71 extern int Pre_Error[];
//   72 extern int Error;
//   73 extern int Count;
//   74 extern int Stop_Distance;
//   75 extern int Island_Distance;
//   76 extern int Grid_Error_Last;
//   77 extern int Grid_Error_Last2;
//   78 extern int Grid_Error_Last3;
//   79 extern float percent_ahead;
//   80 extern float percent_behind;
//   81 extern struct Speed Spd;
//   82 
//   83 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 void Island_Handle()
//   85 { 
Island_Handle:
        PUSH     {R7,LR}
//   86   //------------数据更新-------------//
//   87   Flag_Island_Confirm_Last = Flag_Island_Confirm;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   88   final_Last = final;
        LDR.W    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//   89   Flag_Island_Last = Flag_Island;
        LDR.W    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_1
        STRB     R0,[R1, #+0]
//   90   
//   91 /******************各种距离*******************/  
//   92   Calcu_AllDis();
        BL       Calcu_AllDis
//   93    
//   94 /****************环岛处理部分******************/     
//   95   //--进环岛--//
//   96   Enter_Island();
        BL       Enter_Island
//   97   
//   98   //--允许超车的前提下，切换前后车--//
//   99   if(OverTake_Island != No)              
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Island_Handle_0
//  100     TurnSwitch_InIsland();
        BL       TurnSwitch_InIsland
//  101   
//  102   //--出环岛--//
//  103   Leave_Island();
??Island_Handle_0:
        BL       Leave_Island
//  104          
//  105 /****************LED标志信号*******************/    
//  106   Led_Show();
        BL       Led_Show
//  107 }
        POP      {R0,PC}          ;; return
//  108 
//  109 
//  110 
//  111 /*
//  112 Function: 计算各种Distance
//  113 Return: Null
//  114 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void Calcu_AllDis(void)
//  116 {
Calcu_AllDis:
        PUSH     {R7,LR}
//  117   //一个pit内小车行进的距离
//  118   Distance = Spd.feedback;
        LDR.W    R0,??DataTable4_4
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//  119   if(Distance > 4*100)    Distance = 4*100;    
        LDR.W    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+400
        BLE.N    ??Calcu_AllDis_0
        MOV      R0,#+400
        LDR.W    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//  120  
//  121   Sum_Distance += Distance;
??Calcu_AllDis_0:
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_6
        STR      R0,[R1, #+0]
//  122   
//  123   //停车距离
//  124     if(Stop_Distance != 0)
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_1
//  125       Stop_Distance += Distance;
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  126     
//  127   
//  128   //进入环岛前40cm需要直线行驶
//  129   for(uint8 i=0; i<ErrorNum-1; i++)
??Calcu_AllDis_1:
        MOVS     R0,#+0
        B.N      ??Calcu_AllDis_2
//  130      Pre_Distance[i] = Pre_Distance[i+1];
??Calcu_AllDis_3:
        LDR.W    R1,??DataTable4_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable4_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??Calcu_AllDis_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+99
        BLT.N    ??Calcu_AllDis_3
//  131   Pre_Distance[ErrorNum-1] = Distance;
        LDR.W    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+396]
//  132   Ave_absError = Ave_absError_Calcu(40);
        MOVS     R0,#+40
        BL       Ave_absError_Calcu
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  133    
//  134   //允许识别两个环岛的最小距离
//  135   if(IslandGap_Distance != 0)
        LDR.W    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_4
//  136      IslandGap_Distance += Distance;
        LDR.W    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  137   if(IslandGap_Distance > IslandGap_MinDis*100)
??Calcu_AllDis_4:
        LDR.W    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        MOVW     R1,#+20001
        CMP      R0,R1
        BLT.N    ??Calcu_AllDis_5
//  138      IslandGap_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  139   
//  140   //进出环岛之间的最小距离     
//  141   if(IslandIn_Distance != 0) 
??Calcu_AllDis_5:
        LDR.W    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_6
//  142       IslandIn_Distance += Distance;  
        LDR.W    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_11
        STR      R0,[R1, #+0]
//  143   
//  144   
//  145   //触发环岛、确认环岛之间的缓冲距离
//  146   if(Flag_Island_Confirm != 0)
??Calcu_AllDis_6:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_7
//  147      Flag_Island_Confirm += Distance;
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//  148   
//  149   //十字判断
//  150   if(peak[2]>80) 
??Calcu_AllDis_7:
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+81
        BLT.N    ??Calcu_AllDis_8
//  151     if(   (peak[0]>Peak04_Cross_Limit||peak[4]>Peak04_Cross_Limit) && (peak[0]+peak[4]>Peak04_Cross_SumLimit) 
//  152         && RampIn_Distance==0)
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+71
        BGE.N    ??Calcu_AllDis_9
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+16]
        CMP      R0,#+71
        BLT.N    ??Calcu_AllDis_8
??Calcu_AllDis_9:
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+16]
        ADDS     R0,R1,R0
        CMP      R0,#+101
        BLT.N    ??Calcu_AllDis_8
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Calcu_AllDis_8
//  153        CrossRoad_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable5_3
        STR      R0,[R1, #+0]
//  154   
//  155   if(CrossRoad_Distance != 0)
??Calcu_AllDis_8:
        LDR.W    R0,??DataTable5_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_10
//  156     CrossRoad_Distance += Distance;
        LDR.W    R0,??DataTable5_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_3
        STR      R0,[R1, #+0]
//  157   if(CrossRoad_Distance > CrossRoad_MinDis*100)
??Calcu_AllDis_10:
        LDR.W    R0,??DataTable5_3
        LDR      R0,[R0, #+0]
        MOVW     R1,#+6001
        CMP      R0,R1
        BLT.N    ??Calcu_AllDis_11
//  158     CrossRoad_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_3
        STR      R0,[R1, #+0]
//  159   
//  160   //100ms内运动距离
//  161   Ms100_Distance += Distance;
??Calcu_AllDis_11:
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//  162   if(Count%10 == 0)
        MOVS     R0,#+10
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??Calcu_AllDis_12
//  163     {
//  164       if(Ms100_Distance < 0)
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Calcu_AllDis_13
//  165         Ms100_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//  166       if(Ms100_Distance > 40*100)
??Calcu_AllDis_13:
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+4000
        BLE.N    ??Calcu_AllDis_14
//  167         Ms100_Distance = 40*100;
        MOV      R0,#+4000
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//  168           
//  169       if(Turn_Around == 0)
??Calcu_AllDis_14:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Calcu_AllDis_15
//  170          EncoderDis_Ahead = Ms100_Distance/100;
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
        B.N      ??Calcu_AllDis_16
//  171       else
//  172          EncoderDis_Behind = Ms100_Distance/100;
??Calcu_AllDis_15:
        LDR.W    R0,??DataTable5_4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  173       
//  174        Ms100_Distance = 0;
??Calcu_AllDis_16:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_4
        STR      R0,[R1, #+0]
//  175     }
//  176        
//  177   //后车允许进入环岛的距离
//  178   IslandAdmit_Distance_Last = IslandAdmit_Distance;
??Calcu_AllDis_12:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+0]
//  179   if(IslandAdmit_Distance != 0)
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_17
//  180     {
//  181        IslandAdmit_Distance -= Distance;
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  182       if(IslandAdmit_Distance < 0)
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Calcu_AllDis_17
//  183          IslandAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  184     } 
//  185   
//  186   //后车允许进入坡道的距离
//  187   if(Behind_EnterRamp_AdmitDis != 0)
??Calcu_AllDis_17:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_18
//  188      Behind_EnterRamp_AdmitDis -= Distance;
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  189   if(Behind_EnterRamp_AdmitDis < 0)
??Calcu_AllDis_18:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Calcu_AllDis_19
//  190      Behind_EnterRamp_AdmitDis = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  191   
//  192       
//  193   //前后车切换的确认距离
//  194   if(Case1_TurnSwitch_Dis != 0)
??Calcu_AllDis_19:
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_20
//  195      Case1_TurnSwitch_Dis += Distance;
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  196   
//  197   //Case1(超车)情况下，前车出环岛的距离
//  198   if(Case1_AheadLeave_Dis != 0)
??Calcu_AllDis_20:
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_21
//  199      Case1_AheadLeave_Dis += Distance;
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//  200   
//  201   //环岛第二步距离
//  202     if(final_Distance != 0)
??Calcu_AllDis_21:
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Calcu_AllDis_22
//  203      final_Distance += Distance;
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  204 }
??Calcu_AllDis_22:
        POP      {R0,PC}          ;; return
//  205 
//  206 
//  207 /*
//  208 function：进环岛的条件判断
//  209 return：null
//  210 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void Enter_Island()
//  212 {
Enter_Island:
        PUSH     {R7,LR}
//  213   //Flag_Island_Confirm = 0;
//  214   /****************
//  215   环岛第一步*****************/
//  216   if((
//  217   //--------------正入环岛识别----------------//        
//  218       (  peak[2]>45
//  219       && peak[2]<85  
//  220       && peak[7]>82   
//  221       && fabs(peak[1]-peak[3])<35
//  222       && fabs(peak[0]-peak[4])<=35
//  223       && peak[0]>=20
//  224       && peak[0]<=60
//  225       && peak[4]>=20 
//  226       && peak[4]<=60 
//  227       && peak[1]<70
//  228       && peak[3]<70      
//  229       && peak[1]>35
//  230       && peak[3]>35  )  
//  231    //--------------斜入环岛识别---------------//      
//  232       || (peak[4]>40
//  233       && peak[0]<35    
//  234       && peak[3]<60
//  235       && peak[1]<90        
//  236       && peak[3]>25
//  237       && peak[1]>30        
//  238       && peak[6]<peak[5]
//  239       && peak[3]<peak[1]
//  240       && peak[5]>30
//  241       && peak[2]<70
//  242       && peak[7]<95
//  243       && peak[7]>60)  
//  244      
//  245       || (peak[0]>40
//  246       && peak[4]<35    
//  247       && peak[1]<60
//  248       && peak[3]<90        
//  249       && peak[1]>25
//  250       && peak[3]>30        
//  251       && peak[5]<peak[6]
//  252       && peak[1]<peak[3]
//  253       && peak[6]>30
//  254       && peak[2]<70
//  255       && peak[7]<95
//  256       && peak[7]>60)  )
//  257      
//  258       && Flag_Ramp==0
//  259       && Flag_Island_Confirm==0 
//  260       && final==0
//  261       && Flag_Island==0
//  262       && IslandGap_Distance==0 
//  263      )
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        SUBS     R0,R0,#+46
        CMP      R0,#+39
        BCS.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+28]
        CMP      R0,#+83
        BLT.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_10  ;; 0x40418000
        BL       __aeabi_cdcmple
        BCS.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable6_10  ;; 0x40418000
        BL       __aeabi_cdcmple
        BCS.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+20
        CMP      R0,#+41
        BCS.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+16]
        SUBS     R0,R0,#+20
        CMP      R0,#+41
        BCS.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+70
        BGE.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+70
        BGE.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+36
        BLT.N    ??Enter_Island_0
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+36
        BGE.W    ??Enter_Island_1
??Enter_Island_0:
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+16]
        CMP      R0,#+41
        BLT.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+35
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+60
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+90
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+26
        BLT.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+31
        BLT.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+20]
        CMP      R0,#+31
        BLT.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+70
        BGE.N    ??Enter_Island_2
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+28]
        SUBS     R0,R0,#+61
        CMP      R0,#+34
        BCC.N    ??Enter_Island_1
??Enter_Island_2:
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+16]
        CMP      R0,#+35
        BGE.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+60
        BGE.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+90
        BGE.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+26
        BLT.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+31
        BLT.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+20]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BGE.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable4_12
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BGE.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+24]
        CMP      R0,#+31
        BLT.W    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+70
        BGE.N    ??Enter_Island_3
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+28]
        SUBS     R0,R0,#+61
        CMP      R0,#+34
        BCS.N    ??Enter_Island_3
??Enter_Island_1:
        LDR.W    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Enter_Island_3
        LDR.W    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_3
        LDR.W    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_3
        LDR.W    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_3
//  264       {
//  265        /************环岛进入姿态判断*********/
//  266         
//  267          /* 后车进入环岛的条件：--|__Case1(环岛超车方案):前车进入环岛后，后车在一段距离内允许识别*/
//  268          if(   ( Turn_Around==1 && (IslandAdmit_Distance!=0) ) 
//  269              ||  Turn_Around==0  )
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Enter_Island_4
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_5
??Enter_Island_4:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_6
//  270               Flag_Island_Confirm = Confirm_First*100;
??Enter_Island_5:
        MOVW     R0,#+1500
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//  271           
//  272           IslandGap_Distance = (IslandGap_MinDis - 80)*100;
??Enter_Island_6:
        MOVW     R0,#+12000
        LDR.W    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  273           IslandAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  274           Island_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+0]
//  275           
//  276           //前车识别环岛后的一段距离以内，后车可以识别环岛
//  277           if(Turn_Around == 0)
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_7
//  278             {
//  279               SendCommand = Admit_EnterIsland;
        MOVS     R0,#+105
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
//  280               Dir_IslandTurn = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  281               if(Error < 0)
        LDR.W    R0,??DataTable6_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Enter_Island_8
//  282                 Ahead_TurnError = -1;
        MOVS     R0,#-1
        LDR.W    R1,??DataTable6_16
        STR      R0,[R1, #+0]
        B.N      ??Enter_Island_7
//  283               else 
//  284                 Ahead_TurnError = 1;
??Enter_Island_8:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_16
        STR      R0,[R1, #+0]
//  285             }
//  286 
//  287           
//  288          if(Turn_Around == 0)
??Enter_Island_7:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_9
//  289            {
//  290                if(Error > 0)
        LDR.W    R0,??DataTable6_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Enter_Island_10
//  291                  Flag_Island_Confirm_Dir = Turn_Left;
        MOVS     R0,#+107
        LDR.W    R1,??DataTable6_17
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_9
//  292                else
//  293                  Flag_Island_Confirm_Dir = Turn_Right;                 
??Enter_Island_10:
        MOVS     R0,#+106
        LDR.W    R1,??DataTable6_17
        STRB     R0,[R1, #+0]
//  294            }
//  295 
//  296           
//  297           if(Flag_Island_Confirm != 0)
??Enter_Island_9:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Enter_Island_3
//  298             {
//  299                 //后车出环岛加速
//  300                 if(Turn_Around == 1)
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Enter_Island_3
//  301                   Behind_LeaveIsland_ChaseFlag = 1;            
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_18
        STRB     R0,[R1, #+0]
//  302             }
//  303 
//  304       }  
//  305 
//  306   
//  307       //--------第二步前车的处理---------    
//  308     if((Flag_Island_Confirm!=0||final_Distance!=0) && SendCommand==0)
??Enter_Island_3:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BEQ.N    ??Enter_Island_11
        LDR.W    R0,??DataTable6_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_11
//  309       {
//  310           if(Turn_Around == 0)
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_11
//  311              {      
//  312                  //--Case1（环岛超车）情况下，强制后车朝相反方向转--//
//  313                  if(OverTake_Island != No)
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Enter_Island_12
//  314                   {
//  315                      if(Ahead_TurnError > 0) //前车距离累加值大于零，左转
        LDR.W    R0,??DataTable6_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Enter_Island_13
//  316                         Dir_IslandTurn = Turn_Left;
        MOVS     R0,#+107
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_14
//  317                      else                      //前车距离累加值小于零，右转 
//  318                         Dir_IslandTurn = Turn_Right;    
??Enter_Island_13:
        MOVS     R0,#+106
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  319 
//  320                      if(Dir_IslandTurn == Turn_Right)   //前车右转
??Enter_Island_14:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+106
        BNE.N    ??Enter_Island_15
//  321                            SendCommand = Turn_Left;    //令后车左转
        MOVS     R0,#+107
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_11
//  322 
//  323                      else if(Dir_IslandTurn == Turn_Left) //前车左转
??Enter_Island_15:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+107
        BNE.N    ??Enter_Island_11
//  324                            SendCommand = Turn_Right;   //令后车右转  
        MOVS     R0,#+106
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_11
//  325                   }
//  326              
//  327                  //--（环岛不超车）情况下，强制后车朝相同方向转--//
//  328                  else
//  329                   {
//  330                      if(Ahead_TurnError > 0) //前车距离累加值大于零，左转
??Enter_Island_12:
        LDR.W    R0,??DataTable6_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Enter_Island_16
//  331                         Dir_IslandTurn = Turn_Left;
        MOVS     R0,#+107
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_17
//  332                      else                      //前车距离累加值小于零，右转 
//  333                         Dir_IslandTurn = Turn_Right;    
??Enter_Island_16:
        MOVS     R0,#+106
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  334 
//  335                      if(Dir_IslandTurn == Turn_Right)   //前车右转
??Enter_Island_17:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+106
        BNE.N    ??Enter_Island_18
//  336                         SendCommand = Turn_Right;  //令后车右转
        MOVS     R0,#+106
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
        B.N      ??Enter_Island_11
//  337 
//  338                      else if(Dir_IslandTurn == Turn_Left) //前车左转
??Enter_Island_18:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+107
        BNE.N    ??Enter_Island_11
//  339                         SendCommand = Turn_Left;  //令后车左转                            
        MOVS     R0,#+107
        LDR.W    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
//  340                   }
//  341              }
//  342 
//  343       }
//  344 
//  345   
//  346   /****************环岛第二步*****************/
//  347   if(Flag_Island_Confirm > Confirm_Second*100)
??Enter_Island_11:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3001
        CMP      R0,R1
        BLT.N    ??Enter_Island_19
//  348     {
//  349        //-----------第二步确认后的处理----------
//  350        if(peak[2]<Peak2_Island_Limit && peak[1]<Peak13_Island_Limit && peak[3]<Peak13_Island_Limit)
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_20
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_20
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_20
//  351           {  
//  352              final = 1;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5
        STRB     R0,[R1, #+0]
//  353              final_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  354              Flag_Island_Confirm = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//  355              IslandGap_Distance = (IslandGap_MinDis - 80)*100;
        MOVW     R0,#+12000
        LDR.W    R1,??DataTable4_10
        STR      R0,[R1, #+0]
        B.N      ??Enter_Island_19
//  356                   
//  357           }
//  358        
//  359        //清除第二步后的处理
//  360        else
//  361           {
//  362              Ahead_TurnError = 0;
??Enter_Island_20:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_16
        STR      R0,[R1, #+0]
//  363              Flag_Island_Confirm = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+0]
//  364              Island_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+0]
//  365           }
//  366     }
//  367 
//  368   
//  369      
//  370   /****************环岛第三步*****************/
//  371   for(uint8 i=0; i<5; i++)
??Enter_Island_19:
        MOVS     R0,#+0
        B.N      ??Enter_Island_21
//  372     {
//  373       Pre_Peak1[i] = Pre_Peak1[i+1];
??Enter_Island_22:
        LDR.W    R1,??DataTable6_19
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_19
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  374       Pre_Peak2[i] = Pre_Peak2[i+1];
        LDR.W    R1,??DataTable6_20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  375       Pre_Peak3[i] = Pre_Peak3[i+1];
        LDR.W    R1,??DataTable6_21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  376       Pre_Peak7[i] = Pre_Peak7[i+1];      
        LDR.W    R1,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  377     }
        ADDS     R0,R0,#+1
??Enter_Island_21:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??Enter_Island_22
//  378   
//  379   Pre_Peak1[5] = peak[1]; 
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_19
        STR      R0,[R1, #+20]
//  380   Pre_Peak2[5] = peak[2];
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_20
        STR      R0,[R1, #+20]
//  381   Pre_Peak3[5] = peak[3]; 
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable6_21
        STR      R0,[R1, #+20]
//  382   Pre_Peak7[5] = peak[7]; 
        LDR.W    R0,??DataTable4_12
        LDR      R0,[R0, #+28]
        LDR.W    R1,??DataTable6_22
        STR      R0,[R1, #+20]
//  383    
//  384   trendSum_Peak2[1] = Pre_Peak2[4] + Pre_Peak2[5]; 
        LDR.W    R0,??DataTable6_20
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable6_20
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+4]
//  385   trendSum_Peak2[0] = Pre_Peak2[2] + Pre_Peak2[3];
        LDR.W    R0,??DataTable6_20
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_20
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+0]
//  386   trendSum_Peak1[1] = Pre_Peak1[4] + Pre_Peak1[5]; 
        LDR.W    R0,??DataTable6_19
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable6_19
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_24
        STR      R0,[R1, #+4]
//  387   trendSum_Peak1[0] = Pre_Peak1[2] + Pre_Peak1[3];
        LDR.W    R0,??DataTable6_19
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_19
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_24
        STR      R0,[R1, #+0]
//  388   trendSum_Peak3[1] = Pre_Peak3[4] + Pre_Peak3[5]; 
        LDR.W    R0,??DataTable6_21
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable6_21
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_25
        STR      R0,[R1, #+4]
//  389   trendSum_Peak3[0] = Pre_Peak3[2] + Pre_Peak3[3];
        LDR.W    R0,??DataTable6_21
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_21
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_25
        STR      R0,[R1, #+0]
//  390   trendSum_Peak7[1] = Pre_Peak7[4] + Pre_Peak7[5]; 
        LDR.W    R0,??DataTable6_22
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable6_22
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_26
        STR      R0,[R1, #+4]
//  391   trendSum_Peak7[0] = Pre_Peak7[2] + Pre_Peak7[3];
        LDR.W    R0,??DataTable6_22
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_22
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable6_26
        STR      R0,[R1, #+0]
//  392   
//  393   if(final_Distance>Island_Third_Dis*100  && Flag_Island_Last==0)
        LDR.W    R0,??DataTable6_27
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_1
        LDRB     R1,[R1, #+0]
        MULS     R0,R1,R0
        LSLS     R0,R0,#+2
        RSBS     R0,R0,#+35
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Enter_Island_23
        LDR.W    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_23
//  394   {
//  395     //确认进入环岛后的处理
//  396     if(    peak[0]<Peak04_Island_Limit && peak[4]<Peak04_Island_Limit
//  397           && peak[1]<Peak13_Island_Limit && peak[3]<Peak13_Island_Limit  
//  398           && peak[2]<Peak2_Island_Limit
//  399         )
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Enter_Island_24
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+16]
        CMP      R0,#+60
        BGE.N    ??Enter_Island_24
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_24
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_24
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+65
        BGE.N    ??Enter_Island_24
//  400          {                    
//  401                  Flag_Island_Confirm = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//  402                  final = 0;                  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5
        STRB     R0,[R1, #+0]
//  403                  final_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  404                  Flag_Island = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+0]
//  405                  
//  406                  IslandIn_Distance = Pulse_Distance*100;  
        MOV      R0,#+1000
        LDR.N    R1,??DataTable4_11
        STR      R0,[R1, #+0]
//  407                  IslandGap_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  408                  IslandAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  409                  Flag_Island_Confirm_Dir = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_17
        STRB     R0,[R1, #+0]
//  410                  
//  411                  Dir_IslandTurn = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  412                  Ahead_TurnError = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_16
        STR      R0,[R1, #+0]
        B.N      ??Enter_Island_23
//  413                  
//  414          }
//  415     //没有进入环岛的处理
//  416     else
//  417       {
//  418                  Flag_Island_Confirm = 0;
??Enter_Island_24:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//  419                  final = 0;                  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5
        STRB     R0,[R1, #+0]
//  420                  final_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  421                  IslandAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  422                  
//  423                  Dir_IslandTurn = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  424                  Ahead_TurnError = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_16
        STR      R0,[R1, #+0]
//  425                  Island_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_12
        STR      R0,[R1, #+0]
//  426                  Flag_Island_Confirm_Dir = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_17
        STRB     R0,[R1, #+0]
//  427       }
//  428   }
//  429   
//  430   /************环岛换提线************/ 
//  431    if(Flag_Island_Confirm != 0)
??Enter_Island_23:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Enter_Island_25
//  432        Island_Error_Turn = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_28
        STRB     R0,[R1, #+0]
//  433  
//  434    if(Island_Error_Turn == 1 )
??Enter_Island_25:
        LDR.W    R0,??DataTable6_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Enter_Island_26
//  435        if((( (peak[1]<=peak[3] && peak[5]<=peak[6]) || 
//  436              (peak[1]>=peak[3] && peak[5]>=peak[6]))&&
//  437              (peak[2]>40 && peak[2]<65))||
//  438              (Flag_Island_Confirm == 0 && final == 0))
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable4_12
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??Enter_Island_27
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable4_12
        LDR      R1,[R1, #+20]
        CMP      R0,R1
        BGE.N    ??Enter_Island_28
??Enter_Island_27:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable4_12
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BLT.N    ??Enter_Island_29
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable4_12
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BLT.N    ??Enter_Island_29
??Enter_Island_28:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        SUBS     R0,R0,#+41
        CMP      R0,#+24
        BCC.N    ??Enter_Island_30
??Enter_Island_29:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_26
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Enter_Island_26
//  439        Island_Error_Turn = 0;
??Enter_Island_30:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_28
        STRB     R0,[R1, #+0]
//  440 }
??Enter_Island_26:
        POP      {R0,PC}          ;; return
//  441 
//  442 
//  443 
//  444 
//  445 
//  446 /*
//  447 function：进入环岛后，前后车切换                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
//  448 return：null
//  449 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  450 void TurnSwitch_InIsland()
//  451 {
//  452    //--前后车切换准备--//
//  453    if(Flag_Island==1 && Flag_Island_Last==0)
TurnSwitch_InIsland:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??TurnSwitch_InIsland_0
        LDR.N    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TurnSwitch_InIsland_0
//  454      { 
//  455         IslandAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  456         Case1_TurnSwitch_Dis = Pulse_Distance*100;           
        MOV      R0,#+1000
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  457      }
//  458         
//  459    //--前后车切换确认--//
//  460    if(Case1_TurnSwitch_Dis > IslandWait_Distance*100)
??TurnSwitch_InIsland_0:
        LDR.W    R0,??DataTable6_29
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+20
        MULS     R0,R1,R0
        RSBS     R0,R0,#+30
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable6_7
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??TurnSwitch_InIsland_1
//  461      {
//  462          //清掉停车距离
//  463          Case1_TurnSwitch_Dis = 0;  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  464        
//  465          //前车变后车
//  466          if(Turn_Around == 0) 
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TurnSwitch_InIsland_2
//  467            {
//  468               Turn_Around = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1
        STRB     R0,[R1, #+0]
//  469               Case1_Behind_IslandStop = 1;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_30
        STRB     R0,[R1, #+0]
//  470               Behind_LeaveIsland_ChaseFlag = 0;             
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_18
        STRB     R0,[R1, #+0]
        B.N      ??TurnSwitch_InIsland_1
//  471            }
//  472          
//  473         //后车变前车
//  474          else if(Turn_Around == 1)
??TurnSwitch_InIsland_2:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??TurnSwitch_InIsland_1
//  475           {  
//  476               Turn_Around = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_1
        STRB     R0,[R1, #+0]
//  477               Behind_LeaveIsland_ChaseFlag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_18
        STRB     R0,[R1, #+0]
//  478           }
//  479      }
//  480 }
??TurnSwitch_InIsland_1:
        BX       LR               ;; return
//  481 
//  482 
//  483 
//  484 /*
//  485 function：出环岛的处理
//  486 return：null
//  487 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  488 void Leave_Island()
//  489 {
//  490   //出环岛条件
//  491   if(Flag_Island==1 && IslandIn_Distance>IslandIn_MinDis*100)
Leave_Island:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Leave_Island_0
        LDR.N    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        MOVW     R1,#+15001
        CMP      R0,R1
        BLT.N    ??Leave_Island_0
//  492      if(    peak[2] > (Peak2_Island_Limit) 
//  493          || peak[1] > (Peak13_Island_Limit)
//  494          || peak[3] > (Peak13_Island_Limit)
//  495          || peak[5] > Peak56_Island_Limit  
//  496          || peak[6] > Peak56_Island_Limit  
//  497          || peak[7] > Peak7_Island_Limit  
//  498        )      
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+66
        BGE.N    ??Leave_Island_1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+66
        BGE.N    ??Leave_Island_1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+66
        BGE.N    ??Leave_Island_1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+20]
        CMP      R0,#+66
        BGE.N    ??Leave_Island_1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+24]
        CMP      R0,#+66
        BGE.N    ??Leave_Island_1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+28]
        CMP      R0,#+66
        BLT.N    ??Leave_Island_0
//  499         {     
//  500             EnterStrai_SumDis = Pulse_Distance*100;   
??Leave_Island_1:
        MOV      R0,#+1000
        LDR.N    R1,??DataTable6_31
        STR      R0,[R1, #+0]
//  501             Flag_Island_Confirm = 0;        
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//  502             final = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5
        STRB     R0,[R1, #+0]
//  503             Flag_Island = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+0]
//  504             IslandIn_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_11
        STR      R0,[R1, #+0]
//  505             Dir_IslandTurn = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  506             EnterCurve_SumDis = 10*100;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable6_32
        STR      R0,[R1, #+0]
//  507             IslandGap_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  508             Island_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_12
        STR      R0,[R1, #+0]
//  509             
//  510             //--Case1（环岛超车）方案下的处理--//
//  511             if(OverTake_Island != No)
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Leave_Island_0
//  512               {
//  513                  if(Turn_Around == 0) //前车出环岛，后车出发
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Leave_Island_2
//  514                     Case1_AheadLeave_Dis = Pulse_Distance*100; 
        MOV      R0,#+1000
        LDR.N    R1,??DataTable6_8
        STR      R0,[R1, #+0]
        B.N      ??Leave_Island_0
//  515                  
//  516                  else   //后车出环岛，前车启动
//  517                    {  
//  518                       SendCommand = Case1_Behind_LeaveIsland;
??Leave_Island_2:
        MOVS     R0,#+102
        LDR.N    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
//  519                    }
//  520               }
//  521          }    
//  522   
//  523   //--Case1(超车）情况下，出环岛的处理--//
//  524   if(OverTake_Island != No)
??Leave_Island_0:
        LDR.N    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Leave_Island_3
//  525     {
//  526       if(Case1_AheadLeave_Dis > 70*100)
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        MOVW     R1,#+7001
        CMP      R0,R1
        BLT.N    ??Leave_Island_4
//  527            SendCommand = Case1_Ahead_LeaveIsland;    
        MOVS     R0,#+108
        LDR.N    R1,??DataTable6_13
        STRB     R0,[R1, #+0]
//  528       if(Case1_AheadLeave_Dis > 140*100)
??Leave_Island_4:
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        MOVW     R1,#+14001
        CMP      R0,R1
        BLT.N    ??Leave_Island_3
//  529            Case1_AheadLeave_Wait = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
//  530     }
//  531   
//  532   
//  533   if(Flag_Island_Confirm==0 && final==0 && Flag_Island==0)
??Leave_Island_3:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Leave_Island_5
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Leave_Island_5
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Leave_Island_5
//  534   {  
//  535       Flag_Island_Position = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_34
        STRB     R0,[R1, #+0]
//  536       Island_Error_Turn = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_28
        STRB     R0,[R1, #+0]
//  537   }
//  538 }
??Leave_Island_5:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     Flag_Island_Confirm_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     final_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     Sum_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     Stop_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     Pre_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     Ave_absError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     IslandGap_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     IslandIn_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     peak
//  539 
//  540 /*
//  541 function：LED标志不同的状态
//  542 return：null
//  543 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  544 void Led_Show()
//  545 {
Led_Show:
        PUSH     {R7,LR}
//  546   if(Count < 100)
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Led_Show_0
//  547     {
//  548       LPLD_GPIO_Output_b(PTA, 17, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??DataTable6_35  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  549       LPLD_GPIO_Output_b(PTC, 0, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable6_36  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??Led_Show_1
//  550     }    
//  551   else if(Flag_Island_Confirm!=0 || final==1 || Flag_Island == 1)
??Led_Show_0:
        LDR.N    R0,??DataTable6_37
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Led_Show_2
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Led_Show_2
        LDR.N    R0,??DataTable6_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Led_Show_3
//  552     {
//  553       LPLD_GPIO_Output_b(PTA, 17, 0);   
??Led_Show_2:
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??DataTable6_35  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  554       LPLD_GPIO_Output_b(PTC, 0, 1);                           
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable6_36  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??Led_Show_1
//  555     }
//  556   else if(Turn_Around == 0)
??Led_Show_3:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Led_Show_4
//  557     {
//  558       LPLD_GPIO_Output_b(PTA, 17, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable6_35  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  559       LPLD_GPIO_Output_b(PTC, 0, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable6_36  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??Led_Show_1
//  560     }
//  561   else if(Turn_Around == 1)
??Led_Show_4:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Led_Show_1
//  562     {
//  563       LPLD_GPIO_Output_b(PTA, 17, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable6_35  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  564       LPLD_GPIO_Output_b(PTC, 0, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable6_36  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  565     }    
//  566   
//  567   if(Flag_Island_Position == 1)    
??Led_Show_1:
        LDR.N    R0,??DataTable6_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Led_Show_5
//  568     {
//  569       if(Count%10 <= 5)
        MOVS     R0,#+10
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable5_5
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+6
        BGE.N    ??Led_Show_5
//  570          LPLD_GPIO_Output_b(PTD, 5, 1);
        MOVS     R2,#+1
        MOVS     R1,#+5
        LDR.N    R0,??DataTable6_39  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  571     }
//  572 
//  573   
//  574 
//  575    if(Turn_Around == 0)
??Led_Show_5:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Led_Show_6
//  576      {
//  577         if(percent_ahead > 1)     
        LDR.N    R0,??DataTable6_40
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_41  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Led_Show_7
//  578            LPLD_GPIO_Output_b(PTD, 4, 1);
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_39  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
        B.N      ??Led_Show_6
//  579         else
//  580            LPLD_GPIO_Output_b(PTD, 4, 0);
??Led_Show_7:
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_39  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  581      }
//  582 
//  583    if(Turn_Around == 1)
??Led_Show_6:
        LDR.N    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Led_Show_8
//  584      {
//  585         if(percent_behind > 1)     
        LDR.N    R0,??DataTable6_42
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_41  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??Led_Show_9
//  586            LPLD_GPIO_Output_b(PTD, 4, 1);
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_39  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
        B.N      ??Led_Show_8
//  587         else
//  588            LPLD_GPIO_Output_b(PTD, 4, 0);
??Led_Show_9:
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_39  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  589      }
//  590  
//  591 }
??Led_Show_8:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     Flag_Island_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     RampIn_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     CrossRoad_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     Ms100_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     Count
//  592 
//  593 
//  594 
//  595 /*
//  596 function：计算出一段距离内error的绝对平均值
//  597 return：error的绝对平均值
//  598 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  599 float Ave_absError_Calcu(int sum_distance)
//  600 {  
Ave_absError_Calcu:
        PUSH     {R3-R7,LR}
//  601   int node;
//  602   int sum_error;
//  603   float ave_abserror; 
//  604   sum_distance *= 100;
        MOVS     R1,#+100
        MULS     R0,R1,R0
//  605   sum_error = 0;
        MOVS     R5,#+0
//  606   
//  607   for(int i=ErrorNum-1; i>=0; i--)
        MOVS     R6,#+99
        B.N      ??Ave_absError_Calcu_0
??Ave_absError_Calcu_1:
        SUBS     R6,R6,#+1
??Ave_absError_Calcu_0:
        CMP      R6,#+0
        BMI.N    ??Ave_absError_Calcu_2
//  608     {   
//  609       sum_distance -= Pre_Distance[i];  
        LDR.N    R1,??DataTable6_43
        LDR      R1,[R1, R6, LSL #+2]
        SUBS     R0,R0,R1
//  610         
//  611       if(sum_distance < 0)
        CMP      R0,#+0
        BPL.N    ??Ave_absError_Calcu_3
//  612         {
//  613           node = ErrorNum - i;
        RSBS     R4,R6,#+100
//  614           for(int j=ErrorNum-1; j>=i; j--)
        MOVS     R7,#+99
        B.N      ??Ave_absError_Calcu_4
//  615              sum_error += (int) fabs(Pre_Error[j]);
??Ave_absError_Calcu_5:
        LDR.N    R0,??DataTable6_44
        LDR      R0,[R0, R7, LSL #+2]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        ADDS     R5,R0,R5
        SUBS     R7,R7,#+1
??Ave_absError_Calcu_4:
        CMP      R7,R6
        BGE.N    ??Ave_absError_Calcu_5
//  616           break;
        B.N      ??Ave_absError_Calcu_2
//  617         }  
//  618          
//  619       if(i == 0)
??Ave_absError_Calcu_3:
        CMP      R6,#+0
        BNE.N    ??Ave_absError_Calcu_1
//  620         {  
//  621           node = ErrorNum;
        MOVS     R4,#+100
//  622           for(uint8 j=0; j<ErrorNum; j++) 
        MOVS     R6,#+0
        B.N      ??Ave_absError_Calcu_6
//  623              sum_error += (int) fabs(Pre_Error[j]);
??Ave_absError_Calcu_7:
        LDR.N    R0,??DataTable6_44
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        ADDS     R5,R0,R5
        ADDS     R6,R6,#+1
??Ave_absError_Calcu_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+100
        BLT.N    ??Ave_absError_Calcu_7
//  624           break;
//  625         }
//  626     }
//  627   ave_abserror = sum_error/(node+1);
??Ave_absError_Calcu_2:
        ADDS     R0,R4,#+1
        SDIV     R0,R5,R0
        BL       __aeabi_i2f
//  628   return ave_abserror;
        POP      {R1,R4-R7,PC}    ;; return
//  629 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     OverTake_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     EncoderDis_Ahead

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     EncoderDis_Behind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     IslandAdmit_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     IslandAdmit_Distance_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     Behind_EnterRamp_AdmitDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     Case1_TurnSwitch_Dis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     Case1_AheadLeave_Dis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     final_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x40418000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     Island_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     SendCommand

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     Dir_IslandTurn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     Ahead_TurnError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     Flag_Island_Confirm_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     Behind_LeaveIsland_ChaseFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     Pre_Peak1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     Pre_Peak2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     Pre_Peak3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     Pre_Peak7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     trendSum_Peak2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     trendSum_Peak1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     trendSum_Peak3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     trendSum_Peak7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     Spd_Switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     Island_Error_Turn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     Case1_Behind_IslandStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     EnterStrai_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     EnterCurve_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     Case1_AheadLeave_Wait

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     Flag_Island_Position

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_36:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_37:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_38:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_39:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_40:
        DC32     percent_ahead

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_41:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_42:
        DC32     percent_behind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_43:
        DC32     Pre_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_44:
        DC32     Pre_Error

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  630 
//  631 
//  632 
//  633 
// 
//   610 bytes in section .bss
//     1 byte  in section .data
// 3 384 bytes in section .text
// 
// 3 384 bytes of CODE memory
//   611 bytes of DATA memory
//
//Errors: none
//Warnings: none
