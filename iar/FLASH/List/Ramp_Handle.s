///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ramp_Handle.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ramp_Handle.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Ramp_Handle.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Behind_EnterRamp_AdmitDis
        EXTERN CrossRoad_Distance
        EXTERN Distance
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Ramp
        EXTERN IslandAdmit_Distance
        EXTERN LPLD_GPIO_Output_b
        EXTERN Mixed_Distance
        EXTERN RampAdmit_Distance
        EXTERN RampIn_Distance
        EXTERN SendCommand
        EXTERN Turn_Around
        EXTERN final
        EXTERN peak

        PUBLIC Pre_peak2
        PUBLIC Pre_peak7
        PUBLIC Ramp_Handle
        PUBLIC Sum_peak2
        PUBLIC Sum_peak7

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Ramp_Handle.c
//    1 #include "Includes.h"
//    2 
//    3 extern uint8 Family_Status;
//    4 extern uint8 final;
//    5 extern uint8 OverTake;
//    6 extern uint8 Flag_Island_Turn;
//    7 extern int peak[];
//    8 extern int Count;
//    9 extern int RampIn_Distance;
//   10 extern int RampAdmit_Distance;
//   11 extern long int IslandAdmit_Distance; 
//   12 extern int Mixed_Distance;
//   13 extern int Distance;
//   14 extern int CrossRoad_Distance;
//   15 extern int trendSum_Peak2[];
//   16 extern int Flag_Island_Confirm;
//   17 extern int Flag_Island_Confirm_Last;
//   18 extern uint8 SendCommand;
//   19 extern uint8 Flag_Island_Turn;
//   20 extern uint8 final;
//   21 extern uint8 Turn_Around;
//   22 extern uint8 Flag_Island;
//   23 extern uint8 Flag_Ramp;
//   24 extern uint8 Flag_Follow;
//   25 extern uint8 Island_SpdDown;
//   26 extern uint8 Stop_Behind_Flag;
//   27 extern uint8 Stop_Behind;
//   28 extern long int Behind_EnterRamp_AdmitDis;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int Sum_peak2;
Sum_peak2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 int Pre_peak2[5];
Pre_peak2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 int Sum_peak7;
Sum_peak7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 int Pre_peak7[5];
Pre_peak7:
        DS8 20
//   33 
//   34 /*
//   35 Function:Solve the problem of the ramp
//   36 Return:Null
//   37 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void Ramp_Handle()
//   39 {  
Ramp_Handle:
        PUSH     {R7,LR}
//   40    Sum_peak2 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Ramp_Handle_0
        STR      R0,[R1, #+0]
//   41    Sum_peak7 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Ramp_Handle_0+0x4
        STR      R0,[R1, #+0]
//   42    
//   43    for(uint8 i=0; i<5; i++)
        MOVS     R0,#+0
        B.N      ??Ramp_Handle_1
//   44       Sum_peak2 += Pre_peak2[i];
??Ramp_Handle_2:
        LDR.N    R1,??Ramp_Handle_0
        LDR      R1,[R1, #+0]
        LDR.N    R2,??Ramp_Handle_0+0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        ADDS     R1,R2,R1
        LDR.N    R2,??Ramp_Handle_0
        STR      R1,[R2, #+0]
        ADDS     R0,R0,#+1
??Ramp_Handle_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??Ramp_Handle_2
//   45    
//   46    for(uint8 i=0; i<4; i++)
        MOVS     R0,#+0
        B.N      ??Ramp_Handle_3
//   47       Pre_peak2[i] = Pre_peak2[i+1];
??Ramp_Handle_4:
        LDR.N    R1,??Ramp_Handle_0+0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.N    R2,??Ramp_Handle_0+0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??Ramp_Handle_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??Ramp_Handle_4
//   48    Pre_peak2[4] = peak[2];
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+8]
        LDR.N    R1,??Ramp_Handle_0+0x8
        STR      R0,[R1, #+16]
//   49 
//   50    for(uint8 i=0; i<5; i++)
        MOVS     R0,#+0
        B.N      ??Ramp_Handle_5
//   51       Sum_peak7 += Pre_peak7[i];
??Ramp_Handle_6:
        LDR.N    R1,??Ramp_Handle_0+0x4
        LDR      R1,[R1, #+0]
        LDR.N    R2,??Ramp_Handle_0+0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        ADDS     R1,R2,R1
        LDR.N    R2,??Ramp_Handle_0+0x4
        STR      R1,[R2, #+0]
        ADDS     R0,R0,#+1
??Ramp_Handle_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??Ramp_Handle_6
//   52    
//   53    for(uint8 i=0; i<4; i++)
        MOVS     R0,#+0
        B.N      ??Ramp_Handle_7
//   54       Pre_peak7[i] = Pre_peak7[i+1];
??Ramp_Handle_8:
        LDR.N    R1,??Ramp_Handle_0+0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.N    R2,??Ramp_Handle_0+0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??Ramp_Handle_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??Ramp_Handle_8
//   55    Pre_peak7[4] = peak[7];
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+28]
        LDR.N    R1,??Ramp_Handle_0+0x10
        STR      R0,[R1, #+16]
//   56    
//   57    
//   58    //----------进坡道------------//   
//   59    if(     Flag_Ramp==0 && RampAdmit_Distance==0 && CrossRoad_Distance==0
//   60       && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
//   61       && IslandAdmit_Distance==0 )
        LDR.N    R0,??Ramp_Handle_0+0x14
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??Ramp_Handle_0+0x18
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??Ramp_Handle_0+0x1C
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??Ramp_Handle_0+0x20
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_9
        LDR.N    R0,??Ramp_Handle_0+0x24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_9
        LDR.N    R0,??Ramp_Handle_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_9
        LDR.N    R0,??Ramp_Handle_0+0x2C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_9
//   62         {
//   63            //前车正常识别坡道
//   64            if(Turn_Around == 0)  
        LDR.N    R0,??Ramp_Handle_0+0x30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_10
//   65               {
//   66                  if(Sum_peak2/5>130 || Sum_peak7/5>130 || peak[1]>200  || peak[3]>200)
        LDR.N    R0,??Ramp_Handle_0
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        CMP      R0,#+131
        BGE.N    ??Ramp_Handle_11
        LDR.N    R0,??Ramp_Handle_0+0x4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        CMP      R0,#+131
        BGE.N    ??Ramp_Handle_11
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+4]
        CMP      R0,#+201
        BGE.N    ??Ramp_Handle_11
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+12]
        CMP      R0,#+201
        BLT.N    ??Ramp_Handle_9
//   67                    { 
//   68                       Flag_Ramp = 1;
??Ramp_Handle_11:
        MOVS     R0,#+1
        LDR.N    R1,??Ramp_Handle_0+0x14
        STRB     R0,[R1, #+0]
//   69                       SendCommand = Ahead_EnterRamp;
        MOVS     R0,#+111
        LDR.N    R1,??Ramp_Handle_0+0x34
        STRB     R0,[R1, #+0]
        B.N      ??Ramp_Handle_9
//   70                    }
//   71               } 
//   72            //后车识别坡道时，两车距离不能太近
//   73            else 
//   74               {
//   75                  if(Mixed_Distance>50 && Behind_EnterRamp_AdmitDis!=0)
??Ramp_Handle_10:
        LDR.N    R0,??Ramp_Handle_0+0x38
        LDR      R0,[R0, #+0]
        CMP      R0,#+51
        BLT.N    ??Ramp_Handle_9
        LDR.N    R0,??Ramp_Handle_0+0x3C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ramp_Handle_9
//   76                     if(Sum_peak2/5 > 130 || Sum_peak7/5>130 || peak[1]>200 || peak[3]>200)
        LDR.N    R0,??Ramp_Handle_0
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        CMP      R0,#+131
        BGE.N    ??Ramp_Handle_12
        LDR.N    R0,??Ramp_Handle_0+0x4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        CMP      R0,#+131
        BGE.N    ??Ramp_Handle_12
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+4]
        CMP      R0,#+201
        BGE.N    ??Ramp_Handle_12
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+12]
        CMP      R0,#+201
        BLT.N    ??Ramp_Handle_9
//   77                        Flag_Ramp = 1;
??Ramp_Handle_12:
        MOVS     R0,#+1
        LDR.N    R1,??Ramp_Handle_0+0x14
        STRB     R0,[R1, #+0]
//   78               }           
//   79         }
//   80       
//   81 
//   82  // peak2限幅
//   83   if(peak[2] > 100)
??Ramp_Handle_9:
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+8]
        CMP      R0,#+101
        BLT.N    ??Ramp_Handle_13
//   84     peak[2] = 100;
        MOVS     R0,#+100
        LDR.N    R1,??Ramp_Handle_0+0xC
        STR      R0,[R1, #+8]
//   85   if(peak[7] > 100)
??Ramp_Handle_13:
        LDR.N    R0,??Ramp_Handle_0+0xC
        LDR      R0,[R0, #+28]
        CMP      R0,#+101
        BLT.N    ??Ramp_Handle_14
//   86     peak[7] = 100; 
        MOVS     R0,#+100
        LDR.N    R1,??Ramp_Handle_0+0xC
        STR      R0,[R1, #+28]
//   87    
//   88   //------------下坡道--------------// 
//   89   if(Flag_Ramp != 0)
??Ramp_Handle_14:
        LDR.N    R0,??Ramp_Handle_0+0x14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ramp_Handle_15
//   90     { 
//   91       if(RampAdmit_Distance == 0)
        LDR.N    R0,??Ramp_Handle_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_16
//   92          RampAdmit_Distance = Pulse_Distance*100;
        MOV      R0,#+1000
        LDR.N    R1,??Ramp_Handle_0+0x18
        STR      R0,[R1, #+0]
//   93       if(RampIn_Distance == 0)
??Ramp_Handle_16:
        LDR.N    R0,??Ramp_Handle_0+0x40
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ramp_Handle_15
//   94          RampIn_Distance = Pulse_Distance*100;         
        MOV      R0,#+1000
        LDR.N    R1,??Ramp_Handle_0+0x40
        STR      R0,[R1, #+0]
//   95     }
//   96     
//   97   if(RampIn_Distance != 0)
??Ramp_Handle_15:
        LDR.N    R0,??Ramp_Handle_0+0x40
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ramp_Handle_17
//   98       RampIn_Distance += Distance;
        LDR.N    R0,??Ramp_Handle_0+0x40
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Ramp_Handle_0+0x44
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??Ramp_Handle_0+0x40
        STR      R0,[R1, #+0]
//   99   if(Flag_Ramp!=0 && RampIn_Distance>RampIn_Dis*100)
??Ramp_Handle_17:
        LDR.N    R0,??Ramp_Handle_0+0x14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ramp_Handle_18
        LDR.N    R0,??Ramp_Handle_0+0x40
        LDR      R0,[R0, #+0]
        MOVW     R1,#+30001
        CMP      R0,R1
        BLT.N    ??Ramp_Handle_18
//  100    {
//  101       Flag_Ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Ramp_Handle_0+0x14
        STRB     R0,[R1, #+0]
//  102       RampIn_Distance = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??Ramp_Handle_0+0x40
        STR      R0,[R1, #+0]
//  103    }
//  104 
//  105   if(RampAdmit_Distance != 0)
??Ramp_Handle_18:
        LDR.N    R0,??Ramp_Handle_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Ramp_Handle_19
//  106      RampAdmit_Distance += Distance;
        LDR.N    R0,??Ramp_Handle_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Ramp_Handle_0+0x44
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??Ramp_Handle_0+0x18
        STR      R0,[R1, #+0]
//  107   if(RampAdmit_Distance > RampAdmit_Dis*100)
??Ramp_Handle_19:
        LDR.N    R0,??Ramp_Handle_0+0x18
        LDR      R0,[R0, #+0]
        MOVW     R1,#+40001
        CMP      R0,R1
        BLT.N    ??Ramp_Handle_20
//  108      RampAdmit_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Ramp_Handle_0+0x18
        STR      R0,[R1, #+0]
//  109   
//  110   
//  111   //---------坡道LED标志----------//
//  112   if(Flag_Ramp == 1)
??Ramp_Handle_20:
        LDR.N    R0,??Ramp_Handle_0+0x14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Ramp_Handle_21
//  113     {
//  114        LPLD_GPIO_Output_b(PTD, 5, 1); 
        MOVS     R2,#+1
        MOVS     R1,#+5
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  115        LPLD_GPIO_Output_b(PTD, 2, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  116        LPLD_GPIO_Output_b(PTD, 4, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
        B.N      ??Ramp_Handle_22
//  117     }
//  118   else
//  119     {
//  120        LPLD_GPIO_Output_b(PTD, 2, 0); 
??Ramp_Handle_21:
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  121        LPLD_GPIO_Output_b(PTD, 4, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  122        LPLD_GPIO_Output_b(PTD, 5, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??Ramp_Handle_0+0x48  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  123     }
//  124 }
??Ramp_Handle_22:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??Ramp_Handle_0:
        DC32     Sum_peak2
        DC32     Sum_peak7
        DC32     Pre_peak2
        DC32     peak
        DC32     Pre_peak7
        DC32     Flag_Ramp
        DC32     RampAdmit_Distance
        DC32     CrossRoad_Distance
        DC32     Flag_Island_Confirm
        DC32     Flag_Island
        DC32     final
        DC32     IslandAdmit_Distance
        DC32     Turn_Around
        DC32     SendCommand
        DC32     Mixed_Distance
        DC32     Behind_EnterRamp_AdmitDis
        DC32     RampIn_Distance
        DC32     Distance
        DC32     0x400ff0c0

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
//  48 bytes in section .bss
// 644 bytes in section .text
// 
// 644 bytes of CODE memory
//  48 bytes of DATA memory
//
//Errors: none
//Warnings: none
