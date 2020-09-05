///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Island_Judge.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Island_Judge.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Island_Judge.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Count
        EXTERN Distance
        EXTERN Flag_Island
        EXTERN Flag_Island_Last
        EXTERN Flag_Ramp
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_UART_PutChar
        EXTERN Pre_Distance
        EXTERN Spd
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN peak

        PUBLIC Admit_Dis_EnterIsland
        PUBLIC Distance_Island
        PUBLIC Flag_Island_Confirm
        PUBLIC Flag_Island_Confirm_Last
        PUBLIC Flag_Island_Turn
        PUBLIC IslandGap_Distance
        PUBLIC IslandTurn_Distance
        PUBLIC Island_Judge
        PUBLIC Pre_Peak1
        PUBLIC Pre_Peak3
        PUBLIC Sum_Distance_Island_Stright
        PUBLIC final
        PUBLIC m
        PUBLIC trendSum_Peak1
        PUBLIC trendSum_Peak3

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Island_Judge.c
//    1 #include "Includes.h"
//    2 
//    3 extern uint8 Flag_Ramp;
//    4 extern int peak[];
//    5 extern int Pre_Peak5[];
//    6 extern uint8 Flag_Island;
//    7 extern uint8 Turn_Around;
//    8 extern struct Speed Spd;
//    9 extern uint8  Flag_Island_Last;
//   10 extern int Distance;
//   11 extern int Count;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 int Distance_Island;
Distance_Island:
        DS8 4
//   13 extern int Pre_Distance[];

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 int Sum_Distance_Island_Stright;
Sum_Distance_Island_Stright:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int Flag_Island_Confirm = 0;
Flag_Island_Confirm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int Flag_Island_Confirm_Last = 0;
Flag_Island_Confirm_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int trendSum_Peak1[2];
trendSum_Peak1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int trendSum_Peak3[2];
trendSum_Peak3:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int Pre_Peak1[6];
Pre_Peak1:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int Pre_Peak3[6];
Pre_Peak3:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int Admit_Dis_EnterIsland = 0;   //后车可以识别环岛的距离
Admit_Dis_EnterIsland:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int IslandTurn_Distance = 0;   //前车进入环岛后，用于判断转向的距离
IslandTurn_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int IslandGap_Distance = 0;
IslandGap_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   24 uint8 final = 0;
final:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   25 uint8 Flag_Island_Turn = 0;
Flag_Island_Turn:
        DS8 1
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int m;
m:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   28 void Island_Judge()
//   29 {       
Island_Judge:
        PUSH     {R4-R6,LR}
//   30   Sum_Distance_Island_Stright = 0;
        MOVS     R0,#+0
        LDR.W    R1,??Island_Judge_0
        STR      R0,[R1, #+0]
//   31   for(uint8 i=0; i<10; i++)
        MOVS     R6,#+0
        B.N      ??Island_Judge_1
//   32     Sum_Distance_Island_Stright += fabs(Pre_Distance[i]);
??Island_Judge_2:
        LDR.W    R0,??Island_Judge_0
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??Island_Judge_0+0x4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??Island_Judge_0
        STR      R0,[R1, #+0]
        ADDS     R6,R6,#+1
??Island_Judge_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BLT.N    ??Island_Judge_2
//   33   
//   34   /************************进环岛***************************************/
//   35     //环岛第一步
//   36     if(    fabs(peak[2])>30
//   37         && fabs(peak[2])<80
//   38         && peak[0]>15 
//   39         && peak[0]<50
//   40         && peak[4]>15  
//   41         && peak[4]<50 
//   42         && fabs(peak[1]-peak[3])<30
//   43         && peak[1]<70
//   44         && peak[3]<70
//   45         && (peak[5]>80 || peak[6]>80)      
//   46         && (peak[5]+peak[6]>140)  
//   47         && Flag_Ramp==0
//   48         && Flag_Island_Confirm==0
//   49         && Sum_Distance_Island_Stright < 25
//   50         && IslandGap_Distance == 0
//   51       )
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??Island_Judge_0+0xC  ;; 0x403e0000
        BL       __aeabi_cdrcmple
        BHI.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??Island_Judge_0+0x10  ;; 0x40540000
        BL       __aeabi_cdcmple
        BCS.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+16
        CMP      R0,#+34
        BCS.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+16]
        SUBS     R0,R0,#+16
        CMP      R0,#+34
        BCS.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+4]
        LDR.W    R1,??Island_Judge_0+0x8
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??Island_Judge_0+0xC  ;; 0x403e0000
        BL       __aeabi_cdcmple
        BCS.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+4]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+12]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+20]
        CMP      R0,#+81
        BGE.N    ??Island_Judge_4
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+24]
        CMP      R0,#+81
        BLT.N    ??Island_Judge_3
??Island_Judge_4:
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+20]
        LDR.W    R1,??Island_Judge_0+0x8
        LDR      R1,[R1, #+24]
        ADDS     R0,R1,R0
        CMP      R0,#+141
        BLT.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x14
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??Island_Judge_0+0x18
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??Island_Judge_3
        LDR.W    R0,??Island_Judge_0+0x1C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_3
//   52         {
//   53             //只有当前车进入环岛后，后车才能在一定距离内识别环岛
//   54             if(Turn_Around == 1)
        LDR.W    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_5
//   55               {
//   56                 if(Admit_Dis_EnterIsland != 0)
        LDR.W    R0,??Island_Judge_0+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Island_Judge_3
//   57                   Flag_Island_Confirm = (Confirm_First-10)*100;
        MOV      R0,#+500
        LDR.W    R1,??Island_Judge_0+0x18
        STR      R0,[R1, #+0]
        B.N      ??Island_Judge_3
//   58               }
//   59             //前车进入环岛后，发送信号给后车，用于：1.后车减速, 2.允许后车识别环岛
//   60             else
//   61               {
//   62                 LPLD_UART_PutChar(UART4, 5);   //"5"表示：1.后车减速, 2.允许后车识别环岛
??Island_Judge_5:
        MOVS     R1,#+5
        LDR.W    R0,??Island_Judge_0+0x28  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   63                 Flag_Island_Confirm = Confirm_First*100;   
        MOVW     R0,#+1500
        LDR.W    R1,??Island_Judge_0+0x18
        STR      R0,[R1, #+0]
//   64               }
//   65         }
//   66     
//   67 
//   68     //环岛第二步  
//   69     if(    Flag_Island_Confirm>Confirm_Second*100 
//   70         && peak[2]<60 && peak[1]<60 && peak[3]<60 && peak[0]<70 && peak[4]<70)
??Island_Judge_3:
        LDR.W    R0,??Island_Judge_0+0x18
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3501
        CMP      R0,R1
        BLT.N    ??Island_Judge_6
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+8]
        CMP      R0,#+60
        BGE.N    ??Island_Judge_6
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+4]
        CMP      R0,#+60
        BGE.N    ??Island_Judge_6
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+12]
        CMP      R0,#+60
        BGE.N    ??Island_Judge_6
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_6
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+16]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_6
//   71         final = 1;
        MOVS     R0,#+1
        LDR.W    R1,??Island_Judge_0+0x2C
        STRB     R0,[R1, #+0]
//   72     
//   73     if( Flag_Island_Confirm > Confirm_Second*100 )
??Island_Judge_6:
        LDR.W    R0,??Island_Judge_0+0x18
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3501
        CMP      R0,R1
        BLT.N    ??Island_Judge_7
//   74       Flag_Island_Confirm = 0;
        MOVS     R0,#+0
        LDR.W    R1,??Island_Judge_0+0x18
        STR      R0,[R1, #+0]
//   75        
//   76     if(Flag_Island_Confirm != 0)
??Island_Judge_7:
        LDR.W    R0,??Island_Judge_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Island_Judge_8
//   77       Flag_Island_Confirm += Spd.feedback/Measuring_Scale;
        LDR.W    R0,??Island_Judge_0+0x18
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??Island_Judge_0+0x30
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.W    R2,??Island_Judge_0+0x34  ;; 0xcccccccd
        LDR.W    R3,??Island_Judge_0+0x38  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??Island_Judge_0+0x18
        STR      R0,[R1, #+0]
//   78     
//   79     
//   80     //环岛第三步  
//   81     for(uint8 i=0; i<5; i++)
??Island_Judge_8:
        MOVS     R0,#+0
        B.N      ??Island_Judge_9
//   82       {
//   83         Pre_Peak1[i] = Pre_Peak1[i+1];
??Island_Judge_10:
        LDR.W    R1,??Island_Judge_0+0x3C
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??Island_Judge_0+0x3C
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//   84         Pre_Peak3[i] = Pre_Peak3[i+1];
        LDR.W    R1,??Island_Judge_0+0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??Island_Judge_0+0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//   85       }
        ADDS     R0,R0,#+1
??Island_Judge_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??Island_Judge_10
//   86     Pre_Peak1[5] = peak[1];
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+4]
        LDR.W    R1,??Island_Judge_0+0x3C
        STR      R0,[R1, #+20]
//   87     Pre_Peak3[5] = peak[3];
        LDR.W    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+12]
        LDR.W    R1,??Island_Judge_0+0x40
        STR      R0,[R1, #+20]
//   88     
//   89     trendSum_Peak1[1] = Pre_Peak1[3] + Pre_Peak1[4] + Pre_Peak1[5];
        LDR.W    R0,??Island_Judge_0+0x3C
        LDR      R0,[R0, #+12]
        LDR.W    R1,??Island_Judge_0+0x3C
        LDR      R1,[R1, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x3C
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x44
        STR      R0,[R1, #+4]
//   90     trendSum_Peak1[0] = Pre_Peak1[0] + Pre_Peak1[1] + Pre_Peak1[2];
        LDR.W    R0,??Island_Judge_0+0x3C
        LDR      R0,[R0, #+0]
        LDR.W    R1,??Island_Judge_0+0x3C
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x3C
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x44
        STR      R0,[R1, #+0]
//   91     trendSum_Peak3[1] = Pre_Peak3[3] + Pre_Peak3[4] + Pre_Peak3[5];
        LDR.W    R0,??Island_Judge_0+0x40
        LDR      R0,[R0, #+12]
        LDR.W    R1,??Island_Judge_0+0x40
        LDR      R1,[R1, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x40
        LDR      R1,[R1, #+20]
        ADDS     R0,R1,R0
        LDR.W    R1,??Island_Judge_0+0x48
        STR      R0,[R1, #+4]
//   92     trendSum_Peak3[0] = Pre_Peak3[0] + Pre_Peak3[1] + Pre_Peak3[2];
        LDR.N    R0,??Island_Judge_0+0x40
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Island_Judge_0+0x40
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??Island_Judge_0+0x40
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        LDR.N    R1,??Island_Judge_0+0x48
        STR      R0,[R1, #+0]
//   93     
//   94     if(final==1 && Flag_Island_Last==0)
        LDR.N    R0,??Island_Judge_0+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_11
        LDR.N    R0,??Island_Judge_0+0x4C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_11
//   95       {
//   96         if( peak[2]>25 && (trendSum_Peak1[1]-trendSum_Peak1[0]<=0 || trendSum_Peak3[1]-trendSum_Peak3[0]<=0) 
//   97           &&peak[5]<120 && peak[6]<120 && peak[0]<70 && peak[4]<70)
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+8]
        CMP      R0,#+26
        BLT.N    ??Island_Judge_11
        LDR.N    R0,??Island_Judge_0+0x44
        LDR      R0,[R0, #+4]
        LDR.N    R1,??Island_Judge_0+0x44
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??Island_Judge_12
        LDR.N    R0,??Island_Judge_0+0x48
        LDR      R0,[R0, #+4]
        LDR.N    R1,??Island_Judge_0+0x48
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BGE.N    ??Island_Judge_11
??Island_Judge_12:
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+20]
        CMP      R0,#+120
        BGE.N    ??Island_Judge_11
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+24]
        CMP      R0,#+120
        BGE.N    ??Island_Judge_11
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_11
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+16]
        CMP      R0,#+70
        BGE.N    ??Island_Judge_11
//   98         {
//   99           Flag_Island = 1;
        MOVS     R0,#+1
        LDR.N    R1,??Island_Judge_0+0x50
        STRB     R0,[R1, #+0]
//  100           final = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x2C
        STRB     R0,[R1, #+0]
//  101           Flag_Island_Confirm = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x18
        STR      R0,[R1, #+0]
//  102           IslandGap_Distance = 10*100;
        MOV      R0,#+1000
        LDR.N    R1,??Island_Judge_0+0x1C
        STR      R0,[R1, #+0]
//  103           m++;
        LDR.N    R0,??Island_Judge_0+0x54
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??Island_Judge_0+0x54
        STR      R0,[R1, #+0]
//  104         }
//  105       }
//  106    
//  107     if(IslandGap_Distance != 0)
??Island_Judge_11:
        LDR.N    R0,??Island_Judge_0+0x1C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Island_Judge_13
//  108        IslandGap_Distance += Spd.feedback/Measuring_Scale;
        LDR.N    R0,??Island_Judge_0+0x1C
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??Island_Judge_0+0x30
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.N    R2,??Island_Judge_0+0x34  ;; 0xcccccccd
        LDR.N    R3,??Island_Judge_0+0x38  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??Island_Judge_0+0x1C
        STR      R0,[R1, #+0]
//  109     if(IslandGap_Distance > 300*100)
??Island_Judge_13:
        LDR.N    R0,??Island_Judge_0+0x1C
        LDR      R0,[R0, #+0]
        MOVW     R1,#+30001
        CMP      R0,R1
        BLT.N    ??Island_Judge_14
//  110        IslandGap_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x1C
        STR      R0,[R1, #+0]
//  111   /*********************************环岛内******************************/
//  112        if( Flag_Island_Confirm!=0 || final==1)
??Island_Judge_14:
        LDR.N    R0,??Island_Judge_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_15
        LDR.N    R0,??Island_Judge_0+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_16
//  113           IslandTurn_Distance += Distance;
??Island_Judge_15:
        LDR.N    R0,??Island_Judge_0+0x58
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Island_Judge_0+0x5C
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??Island_Judge_0+0x58
        STR      R0,[R1, #+0]
//  114     
//  115        //前车变后车
//  116         if(Turn_Around==0 && Flag_Island==1 && Flag_Island_Last==0)
??Island_Judge_16:
        LDR.N    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_17
        LDR.N    R0,??Island_Judge_0+0x50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_17
        LDR.N    R0,??Island_Judge_0+0x4C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_17
//  117           {
//  118             //前车距离累加值大于零，左转
//  119             if(IslandTurn_Distance>0)
        LDR.N    R0,??Island_Judge_0+0x58
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Island_Judge_18
//  120                Flag_Island_Turn = 11;
        MOVS     R0,#+11
        LDR.N    R1,??Island_Judge_0+0x60
        STRB     R0,[R1, #+0]
        B.N      ??Island_Judge_19
//  121             //前车距离累加值小于零，右转
//  122             else 
//  123                Flag_Island_Turn = 10;
??Island_Judge_18:
        MOVS     R0,#+10
        LDR.N    R1,??Island_Judge_0+0x60
        STRB     R0,[R1, #+0]
//  124             
//  125             if(Flag_Island_Turn == 10)       //前车右转
??Island_Judge_19:
        LDR.N    R0,??Island_Judge_0+0x60
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.N    ??Island_Judge_20
//  126                LPLD_UART_PutChar(UART4, 11);    //令后车左转
        MOVS     R1,#+11
        LDR.N    R0,??Island_Judge_0+0x28  ;; 0x400ea000
        BL       LPLD_UART_PutChar
        B.N      ??Island_Judge_21
//  127             else if(Flag_Island_Turn == 11) //前车左转
??Island_Judge_20:
        LDR.N    R0,??Island_Judge_0+0x60
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??Island_Judge_21
//  128                LPLD_UART_PutChar(UART4, 10);    //令后车右转
        MOVS     R1,#+10
        LDR.N    R0,??Island_Judge_0+0x28  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  129               
//  130             Turn_Around = 1;
??Island_Judge_21:
        MOVS     R0,#+1
        LDR.N    R1,??Island_Judge_0+0x20
        STRB     R0,[R1, #+0]
//  131             Distance_Island = 10*100;  
        MOV      R0,#+1000
        LDR.N    R1,??Island_Judge_0+0x64
        STR      R0,[R1, #+0]
        B.N      ??Island_Judge_22
//  132           }
//  133     
//  134       //后车变前车
//  135         else if (Turn_Around==1 && Flag_Island==1 && Flag_Island_Last==0)
??Island_Judge_17:
        LDR.N    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_22
        LDR.N    R0,??Island_Judge_0+0x50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_22
        LDR.N    R0,??Island_Judge_0+0x4C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_22
//  136           {
//  137             Turn_Around = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x20
        STRB     R0,[R1, #+0]
//  138             Admit_Dis_EnterIsland = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x24
        STR      R0,[R1, #+0]
//  139             Flag_Island_Turn = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x60
        STRB     R0,[R1, #+0]
//  140             Distance_Island = 10*100;  
        MOV      R0,#+1000
        LDR.N    R1,??Island_Judge_0+0x64
        STR      R0,[R1, #+0]
//  141           }
//  142     
//  143       //环岛内等待距离
//  144         if(Distance_Island != 0) 
??Island_Judge_22:
        LDR.N    R0,??Island_Judge_0+0x64
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Island_Judge_23
//  145            Distance_Island += Spd.feedback/Measuring_Scale;
        LDR.N    R0,??Island_Judge_0+0x64
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??Island_Judge_0+0x30
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.N    R2,??Island_Judge_0+0x34  ;; 0xcccccccd
        LDR.N    R3,??Island_Judge_0+0x38  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??Island_Judge_0+0x64
        STR      R0,[R1, #+0]
//  146      
//  147     
//  148    /*******************************出环岛*******************************/
//  149     //出环岛条件
//  150     if(peak[1]>70 || peak[2]>70 || peak[3]>70 && Distance_Island>40*100)
??Island_Judge_23:
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+4]
        CMP      R0,#+71
        BGE.N    ??Island_Judge_24
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+8]
        CMP      R0,#+71
        BGE.N    ??Island_Judge_24
        LDR.N    R0,??Island_Judge_0+0x8
        LDR      R0,[R0, #+12]
        CMP      R0,#+71
        BLT.N    ??Island_Judge_25
        LDR.N    R0,??Island_Judge_0+0x64
        LDR      R0,[R0, #+0]
        CMP      R0,#+4000
        BLE.N    ??Island_Judge_25
//  151      {
//  152        if(Turn_Around == 1)
??Island_Judge_24:
        LDR.N    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_26
//  153        final = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x2C
        STRB     R0,[R1, #+0]
//  154        Flag_Island = 0;
??Island_Judge_26:
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x50
        STRB     R0,[R1, #+0]
//  155        Distance_Island = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Island_Judge_0+0x64
        STR      R0,[R1, #+0]
//  156      }
//  157     
//  158      if(Flag_Island == 0 && Flag_Island_Last == 1 && Turn_Around == 0)
??Island_Judge_25:
        LDR.N    R0,??Island_Judge_0+0x50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_27
        LDR.N    R0,??Island_Judge_0+0x4C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Island_Judge_27
        LDR.N    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_27
//  159         LPLD_UART_PutChar(UART4, Flag_Island);
        LDR.N    R0,??Island_Judge_0+0x50
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??Island_Judge_0+0x28  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  160         
//  161      if(Turn_Around == 0)
??Island_Judge_27:
        LDR.N    R0,??Island_Judge_0+0x20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Island_Judge_28
//  162       {
//  163         LPLD_GPIO_Output_b(PTE, 26, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.N    R0,??Island_Judge_0+0x68  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  164         LPLD_GPIO_Output_b(PTA, 17, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??Island_Judge_0+0x6C  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  165         LPLD_GPIO_Output_b(PTD, 15, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+15
        LDR.N    R0,??Island_Judge_0+0x70  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  166         LPLD_GPIO_Output_b(PTC, 0, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??Island_Judge_0+0x74  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??Island_Judge_29
//  167       }
//  168      else if(Count < 500)
??Island_Judge_28:
        LDR.N    R0,??Island_Judge_0+0x78
        LDR      R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??Island_Judge_30
//  169       {
//  170         LPLD_GPIO_Output_b(PTE, 26, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.N    R0,??Island_Judge_0+0x68  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  171         LPLD_GPIO_Output_b(PTA, 17, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+17
        LDR.N    R0,??Island_Judge_0+0x6C  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  172         LPLD_GPIO_Output_b(PTD, 15, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??Island_Judge_0+0x70  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  173         LPLD_GPIO_Output_b(PTC, 0, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??Island_Judge_0+0x74  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??Island_Judge_29
//  174       }    
//  175      else 
//  176       {
//  177         LPLD_GPIO_Output_b(PTE, 26, 1);   
??Island_Judge_30:
        MOVS     R2,#+1
        MOVS     R1,#+26
        LDR.N    R0,??Island_Judge_0+0x68  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  178         LPLD_GPIO_Output_b(PTA, 17, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+17
        LDR.N    R0,??Island_Judge_0+0x6C  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  179         LPLD_GPIO_Output_b(PTD, 15, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+15
        LDR.N    R0,??Island_Judge_0+0x70  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  180         LPLD_GPIO_Output_b(PTC, 0, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??Island_Judge_0+0x74  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  181       }    
//  182 
//  183 }
??Island_Judge_29:
        POP      {R4-R6,PC}       ;; return
        DATA
??Island_Judge_0:
        DC32     Sum_Distance_Island_Stright
        DC32     Pre_Distance
        DC32     peak
        DC32     0x403e0000
        DC32     0x40540000
        DC32     Flag_Ramp
        DC32     Flag_Island_Confirm
        DC32     IslandGap_Distance
        DC32     Turn_Around
        DC32     Admit_Dis_EnterIsland
        DC32     0x400ea000
        DC32     final
        DC32     Spd
        DC32     0xcccccccd
        DC32     0x4012cccc
        DC32     Pre_Peak1
        DC32     Pre_Peak3
        DC32     trendSum_Peak1
        DC32     trendSum_Peak3
        DC32     Flag_Island_Last
        DC32     Flag_Island
        DC32     m
        DC32     IslandTurn_Distance
        DC32     Distance
        DC32     Flag_Island_Turn
        DC32     Distance_Island
        DC32     0x400ff100
        DC32     0x400ff000
        DC32     0x400ff0c0
        DC32     0x400ff080
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
//  184 
//  185 
// 
//    98 bytes in section .bss
// 1 452 bytes in section .text
// 
// 1 452 bytes of CODE memory
//    98 bytes of DATA memory
//
//Errors: none
//Warnings: none
