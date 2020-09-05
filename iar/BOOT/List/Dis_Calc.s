///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:35
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Dis_Calc.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Dis_Calc.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Dis_Calc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Distance
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Island_Turn
        EXTERN Island_Judge
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_GPIO_Output_b
        EXTERN Spd
        EXTERN Turn_Around
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN final
        EXTERN sqrt

        PUBLIC CalcMaxToMin
        PUBLIC Dis_Calc
        PUBLIC Distance_Ramp
        PUBLIC E_Max
        PUBLIC Flag_Island
        PUBLIC Flag_Island_Last
        PUBLIC Flag_Ramp
        PUBLIC Flag_Stop
        PUBLIC Peak5_Filter
        PUBLIC Peak6_Filter
        PUBLIC Pre_Distance
        PUBLIC Pre_Peak5
        PUBLIC Pre_Peak6
        PUBLIC Pre_Peak_Ramp
        PUBLIC Prevent_LostLine
        PUBLIC Set_SensorPara
        PUBLIC Sum_Peak_Ramp
        PUBLIC ad_convert
        PUBLIC dis_calcu
        PUBLIC dis_sensor
        PUBLIC g1
        PUBLIC g2
        PUBLIC peak
        PUBLIC peak2
        PUBLIC peak_calc
        PUBLIC sensor
        PUBLIC sensor_delay

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Dis_Calc.c
//    1 #include "Includes.h"
//    2 //变量定义与声明

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 uint8  sensor[7][SampleNum] = {0}; //电感的多个采样值
sensor:
        DS8 352

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int    peak[7] = {0}; //每个电感的峰峰值
peak:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int    E_Max[7] = {0};     //电感1，2，3最大电压值
E_Max:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8  Flag_Island = 0; //0:正常, 1:环岛内
Flag_Island:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8  Flag_Ramp = 0;   //0:正常，1:坡道
Flag_Ramp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8  Flag_Island_Last = 0;
Flag_Island_Last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8  Flag_Stop = 0;
Flag_Stop:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 int    Pre_Peak_Ramp[10] = {100};
Pre_Peak_Ramp:
        DATA
        DC32 100, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int    Pre_Peak5[20];
Pre_Peak5:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 int    Peak5_Filter ;
Peak5_Filter:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 int    Pre_Peak6[20];
Pre_Peak6:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 int    Peak6_Filter ;
Peak6_Filter:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int    Sum_Peak_Ramp = 0;
Sum_Peak_Ramp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int    Distance_Ramp=0;
Distance_Ramp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int    Pre_Distance[10] = {0};
Pre_Distance:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int    peak2;
peak2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 float  dis_sensor[5] = {0};  //每个电感到跑道中心的距离
dis_sensor:
        DS8 20
//   20 extern int Distance;
//   21 extern int Flag_Island_Confirm;
//   22 extern uint8 Turn_Around;
//   23 extern uint8 Family_Status;
//   24 extern uint8 final;
//   25 extern struct Speed Spd;
//   26 extern int Flag_Island_Confirm_Last;
//   27 extern uint8 Flag_Island_Turn;
//   28 
//   29 //int Sensor_Parame =1300;
//   30 //中断采值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void Dis_Calc()
//   32 {
Dis_Calc:
        PUSH     {R7,LR}
//   33   ad_convert();
        BL       ad_convert
//   34   peak_calc();
        BL       peak_calc
//   35   Island_Judge();
        BL       Island_Judge
//   36   Distance = (int)dis_calcu(); 
        BL       dis_calcu
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable5_2
        VSTR     S0,[R0, #0]
//   37   Prevent_LostLine(); 
        BL       Prevent_LostLine
//   38 }
        POP      {R0,PC}          ;; return
//   39 
//   40 
//   41 //防丢线

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void Prevent_LostLine()
//   43 {
Prevent_LostLine:
        PUSH     {R7,LR}
//   44   //环岛外路径 防丢线
//   45   if(fabs(Distance - Pre_Distance[9])>8 && Flag_Ramp==0
//   46      && Flag_Island_Confirm==0 && Flag_Island==0 && final==0)//&& Flag_Ramp==0
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_3
        LDR      R1,[R1, #+36]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable5_4  ;; 0x40200000
        BL       __aeabi_cdrcmple
        BHI.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_6
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable5_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
//   47      Distance = Pre_Distance[9];
        LDR.W    R0,??DataTable5_3
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable5_2
        STR      R0,[R1, #+0]
//   48   
//   49   //环岛内路径 防丢线
//   50 //  if(fabs(Distance- Pre_Distance[9])>15 && Flag_Ramp==0 && Flag_Island==1
//   51 //      && Flag_Island_Confirm_Last==0)
//   52 //     Distance = Pre_Distance[9];
//   53 //  Flag_Island_Confirm_Last = Flag_Island_Confirm;
//   54   
//   55   Flag_Island_Last = Flag_Island;
??Prevent_LostLine_0:
        LDR.W    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_9
        STRB     R0,[R1, #+0]
//   56   for(uint8 i=0; i<9; i++)
        MOVS     R0,#+0
        B.N      ??Prevent_LostLine_1
//   57      Pre_Distance[i] = Pre_Distance[i+1];
??Prevent_LostLine_2:
        LDR.W    R1,??DataTable5_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable5_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??Prevent_LostLine_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??Prevent_LostLine_2
//   58   Pre_Distance[9] = Distance;
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_3
        STR      R0,[R1, #+36]
//   59 }
        POP      {R0,PC}          ;; return
//   60 
//   61 //开机采值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void Set_SensorPara()
//   63 {
Set_SensorPara:
        PUSH     {R4,LR}
//   64   //解算峰峰值
//   65   //采值
//   66   for(uint16 i=0; i<SampleNum; i++)
        MOVS     R4,#+0
        B.N      ??Set_SensorPara_0
//   67    {
//   68         sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
??Set_SensorPara_1:
        MOVS     R1,#+12
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
//   69         sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
        MOVS     R1,#+15
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+50]
//   70         sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
        MOVS     R1,#+14
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+100]
//   71         sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
        MOVS     R1,#+10
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+150]
//   72         sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
        MOVS     R1,#+11
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+200]
//   73         sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
        MOVS     R1,#+13
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+250]
//   74         sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+300]
//   75         sensor_delay();
        BL       sensor_delay
//   76    } 
        ADDS     R4,R4,#+1
??Set_SensorPara_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+50
        BLT.N    ??Set_SensorPara_1
//   77   peak[0] = CalcMaxToMin(sensor[0]);
        LDR.W    R0,??DataTable5_11
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+0]
//   78   peak[1] = CalcMaxToMin(sensor[1]);
        LDR.W    R0,??DataTable5_13
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+4]
//   79   peak[2] = CalcMaxToMin(sensor[2]);
        LDR.W    R0,??DataTable5_14
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+8]
//   80   peak[3] = CalcMaxToMin(sensor[3]);
        LDR.W    R0,??DataTable5_15
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+12]
//   81   peak[4] = CalcMaxToMin(sensor[4]);
        LDR.W    R0,??DataTable5_16
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+16]
//   82   peak[5] = CalcMaxToMin(sensor[5]);
        LDR.W    R0,??DataTable5_17
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+20]
//   83   peak[6] = CalcMaxToMin(sensor[6]);
        LDR.W    R0,??DataTable5_18
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+24]
//   84   E_Max[0] = peak[0];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+0]
//   85   E_Max[1] = (int)(peak[1]*1.67);
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable5_20  ;; 0xeb851eb8
        LDR.W    R3,??DataTable5_21  ;; 0x3ffab851
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+4]
//   86   E_Max[2] = peak[2];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+8]
//   87   E_Max[3] = (int)(peak[3]*1.67);
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable5_20  ;; 0xeb851eb8
        LDR.W    R3,??DataTable5_21  ;; 0x3ffab851
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+12]
//   88   E_Max[4] = peak[4];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+16]
//   89   E_Max[5] = peak[5];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+20]
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+20]
//   90   E_Max[6] = peak[6];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable5_19
        STR      R0,[R1, #+24]
//   91 }
        POP      {R4,PC}          ;; return
//   92 
//   93 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void ad_convert()
//   95 {
ad_convert:
        PUSH     {R4,LR}
//   96   uint16 i;
//   97   //0 pte0 1 pte1 2 empty 3 pte2 4 ptc8  
//   98   //ADC1的A通道：PTE0~PTE3(AD4~AD7) 
//   99     for(i=0; i<SampleNum; i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_0
//  100       {
//  101         sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
??ad_convert_1:
        MOVS     R1,#+12
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
//  102         sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
        MOVS     R1,#+15
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+50]
//  103         sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
        MOVS     R1,#+14
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+100]
//  104         sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
        MOVS     R1,#+10
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+150]
//  105         sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
        MOVS     R1,#+11
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+200]
//  106         sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
        MOVS     R1,#+13
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+250]
//  107         sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable5_10  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable5_11
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+300]
//  108       }   
        ADDS     R4,R4,#+1
??ad_convert_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+50
        BLT.N    ??ad_convert_1
//  109 }
        POP      {R4,PC}          ;; return
//  110 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  111 float  g1 = 0.1;
g1:
        DATA
        DC32 3DCCCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  112 float  g2 = 0.3;
g2:
        DATA
        DC32 3E99999AH

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void peak_calc()
//  114 {
peak_calc:
        PUSH     {R3-R5,LR}
//  115   uint8 i;
//  116   
//  117   for(i=0; i<7; i++)
        MOVS     R4,#+0
        B.N      ??peak_calc_0
//  118     peak[i] = CalcMaxToMin(sensor[i]);
??peak_calc_1:
        LDR.W    R0,??DataTable5_11
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+50
        MLA      R0,R1,R4,R0
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable5_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        ADDS     R4,R4,#+1
??peak_calc_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BLT.N    ??peak_calc_1
//  119   
//  120   //peak5, peak6归一化 
//  121    peak[5] = (uint8)(peak[5]/(E_Max[5]*1.0) * 100);   
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable5_19
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_23  ;; 0x40590000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+20]
//  122    peak[6] = (uint8)(peak[6]/(E_Max[6]*1.0) * 100); 
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+24]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable5_19
        LDR      R0,[R0, #+24]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_23  ;; 0x40590000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+24]
//  123   
//  124    Pre_Peak5[1] = (int)(g1*peak[5] + (1-g1)*Pre_Peak5[0]);
        LDR.W    R0,??DataTable5_12
        VLDR     S0,[R0, #+20]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable5_24
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#1.0
        LDR.W    R0,??DataTable5_24
        VLDR     S2,[R0, #0]
        VSUB.F32 S1,S1,S2
        LDR.W    R0,??DataTable5_25
        VLDR     S2,[R0, #0]
        VCVT.F32.S32 S2,S2
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable5_25
        VSTR     S0,[R0, #+4]
//  125    Pre_Peak5[0] = Pre_Peak5[1];
        LDR.W    R0,??DataTable5_25
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_25
        STR      R0,[R1, #+0]
//  126    peak[5] = Pre_Peak5[1];
        LDR.W    R0,??DataTable5_25
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+20]
//  127    
//  128    Pre_Peak6[1] = (int)(g1*peak[6] + (1-g1)*Pre_Peak6[0]);
        LDR.W    R0,??DataTable5_12
        VLDR     S0,[R0, #+24]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable5_24
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#1.0
        LDR.W    R0,??DataTable5_24
        VLDR     S2,[R0, #0]
        VSUB.F32 S1,S1,S2
        LDR.W    R0,??DataTable5_26
        VLDR     S2,[R0, #0]
        VCVT.F32.S32 S2,S2
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable5_26
        VSTR     S0,[R0, #+4]
//  129    Pre_Peak6[0] = Pre_Peak6[1];
        LDR.W    R0,??DataTable5_26
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_26
        STR      R0,[R1, #+0]
//  130    peak[6] = Pre_Peak6[1];
        LDR.W    R0,??DataTable5_26
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+24]
//  131    
//  132   //PEAK2归一化   
//  133   peak[2] = (uint8)(peak[2]/(E_Max[2]*1.0) * 100); 
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable5_19
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_23  ;; 0x40590000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable5_12
        STR      R0,[R1, #+8]
//  134   
//  135   //进坡道
//  136   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??peak_calc_2
//  137      Pre_Peak_Ramp[i] = Pre_Peak_Ramp[i+1];
??peak_calc_3:
        LDR.W    R0,??DataTable5_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable5_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        ADDS     R4,R4,#+1
??peak_calc_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??peak_calc_3
//  138   Pre_Peak_Ramp[4] = peak[2];
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable5_27
        STR      R0,[R1, #+16]
//  139   Sum_Peak_Ramp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_28
        STR      R0,[R1, #+0]
//  140   
//  141   for(i=0;i<5;i++)
        MOVS     R4,#+0
        B.N      ??peak_calc_4
//  142      Sum_Peak_Ramp += Pre_Peak_Ramp[i]; 
??peak_calc_5:
        LDR.W    R0,??DataTable5_28
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable5_28
        STR      R0,[R1, #+0]
        ADDS     R4,R4,#+1
??peak_calc_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BLT.N    ??peak_calc_5
//  143   
//  144   if(Flag_Ramp==0 && peak[2]>130)
        LDR.W    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??peak_calc_6
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+131
        BLT.N    ??peak_calc_6
//  145     Flag_Ramp = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  146   
//  147   if(peak[3]>150 || peak[1]>150)
??peak_calc_6:
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+12]
        CMP      R0,#+151
        BGE.N    ??peak_calc_7
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+4]
        CMP      R0,#+151
        BLT.N    ??peak_calc_8
//  148     Flag_Ramp = 2; 
??peak_calc_7:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  149   
//  150   if(peak2>80 && Flag_Ramp==2)
??peak_calc_8:
        LDR.W    R0,??DataTable5_29
        LDR      R0,[R0, #+0]
        CMP      R0,#+81
        BLT.N    ??peak_calc_9
        LDR.W    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??peak_calc_9
//  151     Flag_Ramp = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  152   
//  153   peak2 = peak[2];
??peak_calc_9:
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable5_29
        STR      R0,[R1, #+0]
//  154   //peak2限幅
//  155   if(peak[2] > 100)
        LDR.W    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+101
        BLT.N    ??peak_calc_10
//  156     peak[2] = 100; 
        MOVS     R0,#+100
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+8]
//  157   
//  158   //peak1, peak3归一化 
//  159   peak[1] = (uint8)(peak[1]/(E_Max[1]*1.0) * 100);   
??peak_calc_10:
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable5_19
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_23  ;; 0x40590000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+4]
//  160   peak[3] = (uint8)(peak[3]/(E_Max[3]*1.0) * 100);  
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_19
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_23  ;; 0x40590000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+12]
//  161 
//  162   //下坡道 
//  163   if(Flag_Ramp != 0){
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??peak_calc_11
//  164     Distance_Ramp += Spd.feedback/Measuring_Scale; 
        LDR.N    R0,??DataTable5_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_31
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable5_32  ;; 0xcccccccd
        LDR.N    R3,??DataTable5_33  ;; 0x4012cccc
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable5_30
        STR      R0,[R1, #+0]
//  165    if(peak[2] <= 50)  peak[2] = 50;
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        CMP      R0,#+51
        BGE.N    ??peak_calc_11
        MOVS     R0,#+50
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+8]
//  166   }
//  167   if(Flag_Ramp!=0 && Distance_Ramp>250*100)
??peak_calc_11:
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??peak_calc_12
        LDR.N    R0,??DataTable5_30
        LDR      R0,[R0, #+0]
        MOVW     R1,#+25001
        CMP      R0,R1
        BLT.N    ??peak_calc_12
//  168    {
//  169      Flag_Ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  170      Distance_Ramp = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_30
        STR      R0,[R1, #+0]
//  171    }
//  172   
//  173   //坡道LED标志
//  174   if(Flag_Ramp == 1)
??peak_calc_12:
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??peak_calc_13
//  175     {
//  176        LPLD_GPIO_Output_b(PTD, 5, 1); 
        MOVS     R2,#+1
        MOVS     R1,#+5
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  177        LPLD_GPIO_Output_b(PTD, 2, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  178        LPLD_GPIO_Output_b(PTD, 4, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
        B.N      ??peak_calc_14
//  179     }
//  180   else if(Flag_Ramp == 2)
??peak_calc_13:
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??peak_calc_15
//  181     {
//  182        LPLD_GPIO_Output_b(PTD, 2, 1); 
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  183        LPLD_GPIO_Output_b(PTD, 4, 1); 
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  184        LPLD_GPIO_Output_b(PTD, 5, 1);   
        MOVS     R2,#+1
        MOVS     R1,#+5
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
        B.N      ??peak_calc_14
//  185     }
//  186   else
//  187     {
//  188        LPLD_GPIO_Output_b(PTD, 2, 0); 
??peak_calc_15:
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  189        LPLD_GPIO_Output_b(PTD, 4, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  190        LPLD_GPIO_Output_b(PTD, 5, 0);   
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable5_34  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  191     }
//  192 
//  193   //   if(Flag_Ramp == 1)
//  194 //      {
//  195 //        LPLD_GPIO_Output_b(PTE, 26, 0);   
//  196 //        LPLD_GPIO_Output_b(PTA, 17, 0);   
//  197 //        LPLD_GPIO_Output_b(PTD, 15, 0);   
//  198 //        LPLD_GPIO_Output_b(PTC, 0, 0);   
//  199 //      }
//  200 //     else 
//  201 //      {
//  202 //        LPLD_GPIO_Output_b(PTE, 26, 1);   
//  203 //        LPLD_GPIO_Output_b(PTA, 17, 1);   
//  204 //        LPLD_GPIO_Output_b(PTD, 15, 1);   
//  205 //        LPLD_GPIO_Output_b(PTC, 0, 1);   
//  206 //      }
//  207 }
??peak_calc_14:
        POP      {R0,R4,R5,PC}    ;; return
//  208 
//  209 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 uint8 CalcMaxToMin(uint8 data[SampleNum]) 
//  211 {
CalcMaxToMin:
        PUSH     {R4}
//  212     uint8 Max = 0;
        MOVS     R1,#+0
//  213     uint8 Min = 0;
        MOVS     R2,#+0
//  214     uint16 i = 0;
        MOVS     R3,#+0
//  215     Max = data[0];
        LDRB     R4,[R0, #+0]
        MOVS     R1,R4
//  216     Min = data[0];
        LDRB     R4,[R0, #+0]
        MOVS     R2,R4
//  217     
//  218     for(i=0; i<SampleNum; i++) 
        MOVS     R4,#+0
        MOVS     R3,R4
        B.N      ??CalcMaxToMin_0
//  219     {
//  220       if(data[i] > Max)   Max = data[i];
??CalcMaxToMin_1:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R4,[R3, R0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R4
        BCS.N    ??CalcMaxToMin_2
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R1,[R3, R0]
//  221       if(data[i] < Min)   Min = data[i];
??CalcMaxToMin_2:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R4,[R3, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R4,R2
        BCS.N    ??CalcMaxToMin_3
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R2,[R3, R0]
//  222     }
??CalcMaxToMin_3:
        ADDS     R3,R3,#+1
??CalcMaxToMin_0:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R3,#+50
        BLT.N    ??CalcMaxToMin_1
//  223     return Max-Min;
        SUBS     R0,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  224 } 
//  225   
//  226   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  227 float dis_calcu()
//  228 {
dis_calcu:
        PUSH     {R4-R6,LR}
//  229    float  dis_all;
//  230    int peak2;
//  231    
//  232     peak2 = peak[2];
        LDR.N    R0,??DataTable5_12
        LDR      R6,[R0, #+8]
//  233     peak2 = (int)(-0.004105*peak2*peak2 + 1.025*peak2 + 39.2);
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable5_35  ;; 0x8c0053e3
        LDR.N    R3,??DataTable5_36  ;; 0xbf70d067
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
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable5_37  ;; 0x3ff06666
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable5_38  ;; 0x9999999a
        LDR.N    R3,??DataTable5_39  ;; 0x40439999
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        MOVS     R6,R0
//  234     
//  235     //环岛处理   
//  236    if(Flag_Island == 1)
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??dis_calcu_0
//  237     {
//  238       peak2 = 2*peak[2];
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+8]
        LSLS     R6,R0,#+1
//  239       peak2 = (int)(-0.004105*peak2*peak2 + 1.025*peak2 + 39.2);
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable5_35  ;; 0x8c0053e3
        LDR.N    R3,??DataTable5_36  ;; 0xbf70d067
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
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable5_37  ;; 0x3ff06666
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable5_38  ;; 0x9999999a
        LDR.N    R3,??DataTable5_39  ;; 0x40439999
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        MOVS     R6,R0
//  240     }
//  241    if(peak2 > 100)
??dis_calcu_0:
        CMP      R6,#+101
        BLT.N    ??dis_calcu_1
//  242      peak2 = 100;
        MOVS     R6,#+100
//  243    
//  244    dis_sensor[2] = (float)( (10000)/(peak2*peak2*1.0) -1);
??dis_calcu_1:
        MUL      R0,R6,R6
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_22  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_40  ;; 0x40c38800
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_41  ;; 0xbff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable5_42
        STR      R0,[R1, #+8]
//  245    dis_all = Sensor_Height*sqrt(dis_sensor[2]);
        LDR.N    R0,??DataTable5_42
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        VMOV     D0,R0,R1
        BL       sqrt
        VMOV     R2,R3,D0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_43  ;; 0x40270000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
//  246        
//  247    if(peak[1] > peak[3])
        LDR.N    R0,??DataTable5_12
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??dis_calcu_2
//  248         dis_all = dis_all;
//  249       else 
//  250         dis_all = -dis_all;  
??dis_calcu_3:
        VNEG.F32 S0,S0
//  251           
//  252    if(dis_all > Distance_Limit)
??dis_calcu_2:
        VLDR.W   S1,??DataTable5  ;; 0x41a00001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??dis_calcu_4
//  253       dis_all = Distance_Limit;
        VMOV.F32 S0,#20.0
        B.N      ??dis_calcu_5
//  254    else if(dis_all < -Distance_Limit)
??dis_calcu_4:
        VMOV.F32 S1,#-20.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??dis_calcu_5
//  255       dis_all = -Distance_Limit;
        VMOV.F32 S0,#-20.0
//  256    
//  257    //后车刚进入环岛，直走一段距离，确保传感器进入环岛内
//  258    if(Flag_Island_Confirm<Confirm_First*100 && Flag_Island_Confirm>0)
??dis_calcu_5:
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVW     R1,#+1499
        CMP      R0,R1
        BCS.N    ??dis_calcu_6
//  259       dis_all = 0;
        VLDR.W   S0,??DataTable5_1  ;; 0x0
//  260       
//  261    //后车进入环岛后打死
//  262    if(( Flag_Island_Confirm>=Confirm_First*100||final==1) && Turn_Around==1)
??dis_calcu_6:
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??dis_calcu_7
        LDR.N    R0,??DataTable5_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??dis_calcu_8
??dis_calcu_7:
        LDR.N    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??dis_calcu_8
//  263    {
//  264       if(Flag_Island_Turn == 10)
        LDR.N    R0,??DataTable5_45
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.N    ??dis_calcu_9
//  265         dis_all = -Distance_Limit;
        VMOV.F32 S0,#-20.0
        B.N      ??dis_calcu_8
//  266       else if(Flag_Island_Turn == 11)
??dis_calcu_9:
        LDR.N    R0,??DataTable5_45
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??dis_calcu_8
//  267         dis_all =  Distance_Limit;
        VMOV.F32 S0,#20.0
//  268    }
//  269    
//  270    return dis_all;
??dis_calcu_8:
        POP      {R4-R6,PC}       ;; return
//  271 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     Pre_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     Flag_Island_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     sensor+0x32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     sensor+0x64

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     sensor+0x96

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     sensor+0xC8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     sensor+0xFA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     sensor+0x12C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     E_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     0x3ffab851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_24:
        DC32     g1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_25:
        DC32     Pre_Peak5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_26:
        DC32     Pre_Peak6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_27:
        DC32     Pre_Peak_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_28:
        DC32     Sum_Peak_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_29:
        DC32     peak2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_30:
        DC32     Distance_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_31:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_32:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_33:
        DC32     0x4012cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_34:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_35:
        DC32     0x8c0053e3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_36:
        DC32     0xbf70d067

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_37:
        DC32     0x3ff06666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_38:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_39:
        DC32     0x40439999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_40:
        DC32     0x40c38800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_41:
        DC32     0xbff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_42:
        DC32     dis_sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_43:
        DC32     0x40270000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_44:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_45:
        DC32     Flag_Island_Turn
//  272 
//  273 
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void sensor_delay()
//  276 {
//  277   int i;
//  278   for(i=0; i<100; i++);
sensor_delay:
        MOVS     R0,#+0
        B.N      ??sensor_delay_0
??sensor_delay_1:
        ADDS     R0,R0,#+1
??sensor_delay_0:
        CMP      R0,#+100
        BLT.N    ??sensor_delay_1
//  279 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  280 
//  281 
// 
//   652 bytes in section .bss
//    48 bytes in section .data
// 2 344 bytes in section .text
// 
// 2 344 bytes of CODE memory
//   700 bytes of DATA memory
//
//Errors: none
//Warnings: none
