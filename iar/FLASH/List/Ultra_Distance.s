///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:35
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ultra_Distance.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ultra_Distance.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Ultra_Distance.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AheadStop_BehindStop
        EXTERN Behind_LeaveIsland_ChaseFlag
        EXTERN Case2_Ahead_KeepSide
        EXTERN Case2_Behind_KeepSide
        EXTERN Count
        EXTERN Flag_Island
        EXTERN LPLD_GPIO_Input_b
        EXTERN OverTake_Straight
        EXTERN SendCommand
        EXTERN Spd
        EXTERN Stop_Distance
        EXTERN Turn_Around

        PUBLIC Flag_Turn
        PUBLIC Pre_Ultra_Distance
        PUBLIC Spd_Set_ZeroStart
        PUBLIC UltraDis_Filter
        PUBLIC UltraDis_Measure
        PUBLIC Ultra_Count
        PUBLIC Ultra_Count_Last
        PUBLIC Ultra_Count_Last2
        PUBLIC Ultra_Count_Last3
        PUBLIC Ultra_Distance_Unfilter

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ultra_Distance.c
//    1 #include "Includes.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//    3 uint16 Ultra_Distance_Unfilter = 50;
Ultra_Distance_Unfilter:
        DATA
        DC16 50

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint16 Pre_Ultra_Distance[10] = {0};
Pre_Ultra_Distance:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8 Spd_Set_ZeroStart = 0;
Spd_Set_ZeroStart:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8  Flag_Turn;
Flag_Turn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 int   Ultra_Count;
Ultra_Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 int   Ultra_Count_Last, Ultra_Count_Last2, Ultra_Count_Last3;
Ultra_Count_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ultra_Count_Last2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ultra_Count_Last3:
        DS8 4
//    9 extern int Count;
//   10 extern int Stop_Distance;
//   11 extern uint8 Turn_Around;
//   12 extern uint8 Flag_Island;
//   13 extern uint8 OverTake_Island;
//   14 extern uint8 Case1_Behind_IslandFollow;
//   15 extern uint8 Case1_Behind_IslandStart;
//   16 extern uint8 OverTake_Straight;
//   17 extern uint8 Case2_Ahead_KeepSide;  
//   18 extern uint8 Case2_Behind_KeepSide;
//   19 extern uint32 Case2_Behind_SwitchDis;
//   20 extern uint8 Behind_LeaveIsland_ChaseFlag;
//   21 extern uint8 SendCommand;
//   22 extern uint8 AheadStop_BehindStop;
//   23 extern struct Speed Spd;
//   24 
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void UltraDis_Measure()
//   27 {
UltraDis_Measure:
        PUSH     {R7,LR}
//   28    if(HC_Echo == 1)
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_0
//   29      {
//   30         PIT->CHANNEL[1].TCTRL &= ~PIT_TCTRL_TEN_MASK;//停止定时器
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
//   31         PIT->CHANNEL[1].LDVAL  = 0XFFFFFFFF;     //加载定时器值
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x40037110
        STR      R0,[R1, #+0]
//   32         PIT->CHANNEL[1].TCTRL |= PIT_TCTRL_TEN_MASK;  //使能定时器
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
        B.N      ??UltraDis_Measure_1
//   33      }
//   34    else 
//   35      {
//   36         Ultra_Count_Last3 = Ultra_Count_Last2;
??UltraDis_Measure_0:
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4
        STR      R0,[R1, #+0]
//   37         Ultra_Count_Last2 = Ultra_Count_Last;
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   38         Ultra_Count_Last = Ultra_Count;
        LDR.N    R0,??DataTable1_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//   39         Ultra_Count = Count;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+0]
//   40                 
//   41         Ultra_Distance_Unfilter = (0xFFFFFFFF - PIT->CHANNEL[1].CVAL)/1200;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_8  ;; 0x40037114
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   42 
//   43                 
//   44         //----Case2（直道超车）的情况下，改变两车之间的前后状态----//  
//   45         if(OverTake_Straight == Yes)
        LDR.N    R0,??DataTable1_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_2
//   46             //切换前后车条件之一：前车接收到超声波信号
//   47             if(Turn_Around==0 && Ultra_Count-Ultra_Count_Last3<15)
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??UltraDis_Measure_2
        LDR.N    R0,??DataTable1_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+15
        BGE.N    ??UltraDis_Measure_2
//   48               if(Count>50 && Spd.target==0) 
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+51
        BLT.N    ??UltraDis_Measure_2
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??UltraDis_Measure_2
//   49                 {
//   50                   if(Case2_Ahead_KeepSide == 1)
        LDR.N    R0,??DataTable1_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_2
//   51                     if(Ultra_Distance_Unfilter>60 && Ultra_Distance_Unfilter<290)
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+61
        CMP      R0,#+229
        BCS.N    ??UltraDis_Measure_2
//   52                       {
//   53                          Turn_Around = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_11
        STRB     R0,[R1, #+0]
//   54                          SendCommand = Case2_SwitchTurn; 
        MOVS     R0,#+104
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
//   55                          Case2_Ahead_KeepSide = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_13
        STRB     R0,[R1, #+0]
//   56                          Case2_Behind_KeepSide = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_15
        STRB     R0,[R1, #+0]
//   57                       }               
//   58                 }   
//   59         
//   60         //----Case1（换岛超车）的情况下，后车清除环岛等待标志----//
//   61         if(Turn_Around==1 && Flag_Island==0)
??UltraDis_Measure_2:
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_3
        LDR.N    R0,??DataTable1_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??UltraDis_Measure_3
//   62           if(Behind_LeaveIsland_ChaseFlag == 1)
        LDR.N    R0,??DataTable1_17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_3
//   63             if(Ultra_Distance_Unfilter < 120)
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        CMP      R0,#+120
        BGE.N    ??UltraDis_Measure_3
//   64                 Behind_LeaveIsland_ChaseFlag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_17
        STRB     R0,[R1, #+0]
//   65          
//   66         //---------------停车情况下，后车紧急刹车----------------//
//   67         if(AheadStop_BehindStop == 1)
??UltraDis_Measure_3:
        LDR.N    R0,??DataTable1_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_4
//   68           if(Turn_Around == 1)
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_4
//   69              if(Ultra_Distance_Unfilter < 200)
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        CMP      R0,#+200
        BGE.N    ??UltraDis_Measure_4
//   70                 Stop_Distance = 10*100;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable1_19
        STR      R0,[R1, #+0]
//   71             
//   72         PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//停止定时器
??UltraDis_Measure_4:
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
//   73      }
//   74    
//   75    UltraDis_Filter();
??UltraDis_Measure_1:
        BL       UltraDis_Filter
//   76        
//   77    LPLD_GPIO_ClearIntFlag(PORTA);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_20  ;; 0x400490a0
        STR      R0,[R1, #+0]
//   78 }
        POP      {R0,PC}          ;; return
//   79 
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void UltraDis_Filter()
//   82 {
//   83    //--超声波距离限幅--//
//   84    if(Ultra_Distance_Unfilter < 10)
UltraDis_Filter:
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??UltraDis_Filter_0
//   85         Ultra_Distance_Unfilter = 10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   86    if(Ultra_Distance_Unfilter > 300)
??UltraDis_Filter_0:
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BLE.N    ??UltraDis_Filter_1
//   87         Ultra_Distance_Unfilter = 300;
        MOV      R0,#+300
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   88 
//   89    //--数组数据更新--//
//   90    for(uint8 i=0; i<9; i++)
??UltraDis_Filter_1:
        MOVS     R0,#+0
        B.N      ??UltraDis_Filter_2
//   91       Pre_Ultra_Distance[i] = Pre_Ultra_Distance[i+1];
??UltraDis_Filter_3:
        LDR.N    R1,??DataTable1_21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+1
        LDRH     R1,[R1, #+2]
        LDR.N    R2,??DataTable1_21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
        ADDS     R0,R0,#+1
??UltraDis_Filter_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??UltraDis_Filter_3
//   92    Pre_Ultra_Distance[9] = Ultra_Distance_Unfilter;   
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_21
        STRH     R0,[R1, #+18]
//   93 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40037110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     Ultra_Count_Last2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     Ultra_Count_Last3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Ultra_Count_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Ultra_Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x40037114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     Ultra_Distance_Unfilter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     OverTake_Straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     SendCommand

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     Case2_Behind_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     Behind_LeaveIsland_ChaseFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     AheadStop_BehindStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     Stop_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     Pre_Ultra_Distance

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   94 
//   95 
// 
//  38 bytes in section .bss
//   2 bytes in section .data
// 446 bytes in section .text
// 
// 446 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: none
