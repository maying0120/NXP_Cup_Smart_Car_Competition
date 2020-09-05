///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:30
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Commun_Shift.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Commun_Shift.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Commun_Shift.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Behind_LeaveIsland_ChaseFlag
        EXTERN Case2_Ahead_KeepSide
        EXTERN Commu_Onetime
        EXTERN Count
        EXTERN EncoderDis_Ahead
        EXTERN EncoderDis_Behind
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN OverTake_Straight
        EXTERN Turn_Around
        EXTERN Ultra_Count
        EXTERN Ultra_Distance_Unfilter
        EXTERN final

        PUBLIC Cnt_Encoder
        PUBLIC Commun_Shift
        PUBLIC Mixed_Distance
        PUBLIC shift_error

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Commun_Shift.c
//    1 #include "Includes.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    3 int Mixed_Distance = 110;
Mixed_Distance:
        DATA
        DC32 110

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int shift_error;
shift_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int Cnt_Encoder = 0;
Cnt_Encoder:
        DS8 4
//    6 extern int Count;
//    7 extern int EncoderDis_Ahead;
//    8 extern int EncoderDis_Behind;
//    9 extern uint16 Ultra_Distance_Unfilter;
//   10 extern uint8 Turn_Around;
//   11 extern uint8 OverTake;
//   12 extern uint8 Case1_Behind_IslandStop;
//   13 extern uint8 Case1_Behind_IslandFollow;
//   14 extern uint8 OverTake_Island;
//   15 extern uint8 OverTake_Straight;
//   16 extern uint8 Case2_Ahead_KeepSide;  
//   17 extern uint8 Case2_Behind_KeepSide;
//   18 extern uint8 Behind_LeaveIsland_ChaseFlag;
//   19 extern int Ultra_Count;
//   20 extern int Ultra_Count_Last3;
//   21 extern int Flag_Island_Confirm;
//   22 extern uint8 final;
//   23 extern uint8 Flag_Island;
//   24 
//   25 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   26 void Commun_Shift(void)
//   27 {    
Commun_Shift:
        PUSH     {R7,LR}
//   28    if(Count%10==0 && Cnt_Encoder==1)
        MOVS     R0,#+10
        LDR.N    R1,??Commun_Shift_0
        LDR      R1,[R1, #+0]
        LDR.N    R2,??Commun_Shift_0
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??Commun_Shift_1
        LDR.N    R0,??Commun_Shift_0+0x4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Commun_Shift_1
//   29      {  
//   30         Cnt_Encoder = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Commun_Shift_0+0x4
        STR      R0,[R1, #+0]
//   31 
//   32         /**前车发送100ms内运动距离给后车**/
//   33         if(Turn_Around == 0)   
        LDR.N    R0,??Commun_Shift_0+0x8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commun_Shift_2
//   34            Commu_Onetime(EncoderDis_Ahead + EncoderDis_Step);
        LDR.N    R0,??Commun_Shift_0+0xC
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+50
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Commu_Onetime
        B.N      ??Commun_Shift_1
//   35         
//   36         /***后车解算两车之间的实际距离****/
//   37         else     
//   38           {
//   39              shift_error = (EncoderDis_Ahead - EncoderDis_Behind);
??Commun_Shift_2:
        LDR.N    R0,??Commun_Shift_0+0xC
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Commun_Shift_0+0x10
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??Commun_Shift_0+0x14
        STR      R0,[R1, #+0]
//   40               
//   41              //----能接收到超声波信号时,对超声波进行滤波，以超声波距离为准----//
//   42              if(Count - Ultra_Count <= 10)
        LDR.N    R0,??Commun_Shift_0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Commun_Shift_0+0x18
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+11
        BGE.N    ??Commun_Shift_3
//   43                    Mixed_Distance = Ultra_Distance_Unfilter;   
        LDR.N    R0,??Commun_Shift_0+0x1C
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??Commun_Shift_0+0x20
        STR      R0,[R1, #+0]
        B.N      ??Commun_Shift_4
//   44 
//   45              //--------过渡过程中：双车距离 = 超声波基准距离+位移之差---------//
//   46              else 
//   47                 {
//   48                    Mixed_Distance += shift_error;
??Commun_Shift_3:
        LDR.N    R0,??Commun_Shift_0+0x20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Commun_Shift_0+0x14
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??Commun_Shift_0+0x20
        STR      R0,[R1, #+0]
//   49                    
//   50                    //进环岛时，距离设置为最远
//   51                    if(Flag_Island_Confirm!=0 || final!=0 || Flag_Island!=0)
        LDR.N    R0,??Commun_Shift_0+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commun_Shift_5
        LDR.N    R0,??Commun_Shift_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commun_Shift_5
        LDR.N    R0,??Commun_Shift_0+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Commun_Shift_6
//   52                       Mixed_Distance = 300;
??Commun_Shift_5:
        MOV      R0,#+300
        LDR.N    R1,??Commun_Shift_0+0x20
        STR      R0,[R1, #+0]
//   53 
//   54                    //出环岛时，追逐距离很远
//   55                    if(Behind_LeaveIsland_ChaseFlag == 1)
??Commun_Shift_6:
        LDR.N    R0,??Commun_Shift_0+0x30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Commun_Shift_7
//   56                      Mixed_Distance = 1000;
        MOV      R0,#+1000
        LDR.N    R1,??Commun_Shift_0+0x20
        STR      R0,[R1, #+0]
//   57                    
//   58                    //Case2(直道超车)情况下，两车处于超车过程中，距离设置为最远
//   59                    if(OverTake_Straight == Yes)
??Commun_Shift_7:
        LDR.N    R0,??Commun_Shift_0+0x34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Commun_Shift_4
//   60                      {
//   61                         if(Case2_Ahead_KeepSide == 1)
        LDR.N    R0,??Commun_Shift_0+0x38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Commun_Shift_4
//   62                            Mixed_Distance = 300;
        MOV      R0,#+300
        LDR.N    R1,??Commun_Shift_0+0x20
        STR      R0,[R1, #+0]
//   63                      }
//   64                 }
//   65              
//   66                           
//   67              //---------------------后车将距离通信给前车----------------------//
//   68              if(Mixed_Distance < 0)
??Commun_Shift_4:
        LDR.N    R0,??Commun_Shift_0+0x20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Commun_Shift_8
//   69                  Commu_Onetime(MixedDis_Step);
        MOVS     R0,#+10
        BL       Commu_Onetime
        B.N      ??Commun_Shift_1
//   70              else if(Mixed_Distance > 300)
??Commun_Shift_8:
        LDR.N    R0,??Commun_Shift_0+0x20
        LDR      R0,[R0, #+0]
        CMP      R0,#+300
        BLE.N    ??Commun_Shift_9
//   71                  Commu_Onetime(30 + MixedDis_Step);
        MOVS     R0,#+40
        BL       Commu_Onetime
        B.N      ??Commun_Shift_1
//   72              else
//   73                  Commu_Onetime(Mixed_Distance/10 + MixedDis_Step);
??Commun_Shift_9:
        LDR.N    R0,??Commun_Shift_0+0x20
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Commu_Onetime
//   74           }
//   75      }
//   76 }
??Commun_Shift_1:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??Commun_Shift_0:
        DC32     Count
        DC32     Cnt_Encoder
        DC32     Turn_Around
        DC32     EncoderDis_Ahead
        DC32     EncoderDis_Behind
        DC32     shift_error
        DC32     Ultra_Count
        DC32     Ultra_Distance_Unfilter
        DC32     Mixed_Distance
        DC32     Flag_Island_Confirm
        DC32     final
        DC32     Flag_Island
        DC32     Behind_LeaveIsland_ChaseFlag
        DC32     OverTake_Straight
        DC32     Case2_Ahead_KeepSide

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
//   8 bytes in section .bss
//   4 bytes in section .data
// 300 bytes in section .text
// 
// 300 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
