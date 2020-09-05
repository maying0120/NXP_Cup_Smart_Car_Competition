///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Dis_Calc.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Dis_Calc.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\Dis_Calc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Distance
        EXTERN LPLD_ADC_Get
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2d
        EXTERN sqrt

        PUBLIC CalcMaxToMin
        PUBLIC Dis_Calc
        PUBLIC Distance_Last
        PUBLIC E_Max
        PUBLIC Sensor_Parame
        PUBLIC Set_SensorPara
        PUBLIC ad_convert
        PUBLIC dis_calcu
        PUBLIC dis_sensor
        PUBLIC peak
        PUBLIC peak_calc
        PUBLIC sensor
        PUBLIC sensor_delay

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Dis_Calc.c
//    1 #include "Includes.h"
//    2 
//    3 
//    4 //变量定义与声明

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 uint8  sensor[5][SampleNum] = {0}; //电感的多个采样值
sensor:
        DS8 500

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 uint8  peak[5] = {0}; //每个电感的峰峰值
peak:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8  E_Max;  //最大电压值
E_Max:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 uint16 dis_sensor[5] = {0};  //每个电感到跑道中心的距离
dis_sensor:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    9 uint16 Sensor_Parame = 0;
Sensor_Parame:
        DS8 2
//   10 extern int Distance;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int Distance_Last;
Distance_Last:
        DS8 4
//   12 
//   13 //中断中采值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void Dis_Calc()
//   15 {
Dis_Calc:
        PUSH     {R7,LR}
//   16   ad_convert();
        BL       ad_convert
//   17   peak_calc();
        BL       peak_calc
//   18   Distance = dis_calcu();
        BL       dis_calcu
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//   19   
//   20   if(fabs(Distance - Distance_Last) > 50)
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.N    R3,??DataTable4_2  ;; 0x40490000
        BL       __aeabi_cdrcmple
        BHI.N    ??Dis_Calc_0
//   21      Distance = Distance_Last;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//   22   Distance_Last = Distance;
??Dis_Calc_0:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   23 
//   24 }
        POP      {R0,PC}          ;; return
//   25 
//   26 //开机采值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void Set_SensorPara()
//   28 {
Set_SensorPara:
        PUSH     {R4,LR}
//   29   //采值
//   30   for(uint16 i=0; i<SampleNum; i++)
        MOVS     R4,#+0
        B.N      ??Set_SensorPara_0
//   31    {
//   32       sensor[2][i] = LPLD_ADC_Get(ADC1, AD6);
??Set_SensorPara_1:
        MOVS     R1,#+6
        LDR.N    R0,??DataTable4_3  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable4_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+200]
//   33       sensor_delay();
        BL       sensor_delay
//   34    } 
        ADDS     R4,R4,#+1
??Set_SensorPara_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+100
        BLT.N    ??Set_SensorPara_1
//   35   //解算峰峰值
//   36   peak[2] = CalcMaxToMin(sensor[2]);
        LDR.N    R0,??DataTable4_5
        BL       CalcMaxToMin
        LDR.N    R1,??DataTable4_6
        STRB     R0,[R1, #+2]
//   37   E_Max = peak[2];
        LDR.N    R0,??DataTable4_6
        LDRB     R0,[R0, #+2]
        LDR.N    R1,??DataTable4_7
        STRB     R0,[R1, #+0]
//   38   
//   39   Sensor_Parame = E_Max*Sensor_Height;
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+12
        SMULBB   R0,R0,R1
        LDR.N    R1,??DataTable4_8
        STRH     R0,[R1, #+0]
//   40 }
        POP      {R4,PC}          ;; return
//   41 
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void ad_convert()
//   44 {
ad_convert:
        PUSH     {R4,LR}
//   45   uint16 i;
//   46   //0 pte0 1 pte1 2 empty 3 pte2 4 ptc8  
//   47   //ADC1的A通道：PTE0~PTE3(AD4~AD7) 
//   48  for(i=0; i<SampleNum; i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_0
//   49   {
//   50     sensor[1][i] = LPLD_ADC_Get(ADC1, AD5);
??ad_convert_1:
        MOVS     R1,#+5
        LDR.N    R0,??DataTable4_3  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable4_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+100]
//   51     sensor_delay();
        BL       sensor_delay
//   52     sensor[2][i] = LPLD_ADC_Get(ADC1, AD6);
        MOVS     R1,#+6
        LDR.N    R0,??DataTable4_3  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable4_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+200]
//   53     sensor_delay();
        BL       sensor_delay
//   54     sensor[3][i] = LPLD_ADC_Get(ADC1, AD7); 
        MOVS     R1,#+7
        LDR.N    R0,??DataTable4_3  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable4_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+300]
//   55     sensor_delay();
        BL       sensor_delay
//   56   }
        ADDS     R4,R4,#+1
??ad_convert_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+100
        BLT.N    ??ad_convert_1
//   57 
//   58   //ADC1的B通道：PTC8(AD4)
//   59   /*ADC_InitTypeDef sensor2_adc_init;
//   60   sensor2_adc_init.ADC_Adcx = ADC1;
//   61   sensor2_adc_init.ADC_MuxSel = MUX_ADXXB;
//   62   sensor2_adc_init.ADC_BitMode = SE_8BIT;
//   63   sensor2_adc_init.ADC_CalEnable = TRUE;
//   64   LPLD_ADC_Init(sensor2_adc_init);
//   65   
//   66   LPLD_ADC_Chn_Enable(ADC1, AD4);
//   67   for(i=0; i<SampleNum; i++)
//   68     sensor[4][i] = LPLD_ADC_Get(ADC1, AD4);*/
//   69 }
        POP      {R4,PC}          ;; return
//   70 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void peak_calc()
//   72 {
peak_calc:
        PUSH     {R3-R5,LR}
//   73   uint8 i;
//   74   
//   75   for(i=1; i<4; i++)
        MOVS     R4,#+1
        B.N      ??peak_calc_0
//   76     peak[i] = CalcMaxToMin(sensor[i]);
??peak_calc_1:
        LDR.N    R0,??DataTable4_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+100
        MLA      R0,R1,R4,R0
        BL       CalcMaxToMin
        LDR.N    R1,??DataTable4_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
??peak_calc_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??peak_calc_1
//   77   
//   78   if(peak[1] > E_Max)
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_6
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??peak_calc_2
//   79     peak[1] = E_Max;
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_6
        STRB     R0,[R1, #+1]
//   80   
//   81   //归一化
//   82     peak[1] = (uint8)(peak[1]/(E_Max*1.0) * 50);
??peak_calc_2:
        LDR.N    R0,??DataTable4_6
        LDRB     R0,[R0, #+1]
        BL       __aeabi_ui2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_2  ;; 0x40490000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_6
        STRB     R0,[R1, #+1]
//   83 }
        POP      {R0,R4,R5,PC}    ;; return
//   84 
//   85 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 uint8 CalcMaxToMin(uint8 data[SampleNum]) 
//   87 {
CalcMaxToMin:
        PUSH     {R4}
//   88     uint8 Max = 0;
        MOVS     R1,#+0
//   89     uint8 Min = 0;
        MOVS     R2,#+0
//   90     uint16 i = 0;
        MOVS     R3,#+0
//   91     Max = data[0];
        LDRB     R4,[R0, #+0]
        MOVS     R1,R4
//   92     Min = data[0];
        LDRB     R4,[R0, #+0]
        MOVS     R2,R4
//   93     
//   94     for(i=0; i<SampleNum; i++) 
        MOVS     R4,#+0
        MOVS     R3,R4
        B.N      ??CalcMaxToMin_0
//   95     {
//   96       if(data[i] > Max)   Max = data[i];
??CalcMaxToMin_1:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R4,[R3, R0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R4
        BCS.N    ??CalcMaxToMin_2
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R1,[R3, R0]
//   97       if(data[i] < Min)   Min = data[i];
??CalcMaxToMin_2:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R4,[R3, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R4,R2
        BCS.N    ??CalcMaxToMin_3
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDRB     R2,[R3, R0]
//   98     }
??CalcMaxToMin_3:
        ADDS     R3,R3,#+1
??CalcMaxToMin_0:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R3,#+100
        BLT.N    ??CalcMaxToMin_1
//   99     return Max-Min;
        SUBS     R0,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  100 } 
//  101 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  102 int dis_calcu()
//  103 {
dis_calcu:
        PUSH     {R4-R6,LR}
//  104    uint8 i;
//  105    int  dis_all;
//  106 
//  107    for(i=1; i<4; i++)
        MOVS     R6,#+1
        B.N      ??dis_calcu_0
//  108      dis_sensor[i] = (uint16)( Sensor_Parame/(peak[i]*1.0) );
??dis_calcu_1:
        LDR.N    R0,??DataTable4_8
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R0]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_10
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRH     R0,[R1, R6, LSL #+1]
        ADDS     R6,R6,#+1
??dis_calcu_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BLT.N    ??dis_calcu_1
//  109    
//  110    dis_all = dis_sensor[2]*dis_sensor[2] - Sensor_Height*Sensor_Height;
        LDR.N    R0,??DataTable4_10
        LDRH     R0,[R0, #+4]
        LDR.N    R1,??DataTable4_10
        LDRH     R1,[R1, #+4]
        MULS     R0,R1,R0
        SUBS     R0,R0,#+144
//  111    
//  112    if(dis_all > 0)
        CMP      R0,#+1
        BLT.N    ??dis_calcu_2
//  113      dis_all = (int) sqrt( dis_all );
        BL       __aeabi_i2d
        VMOV     D0,R0,R1
        BL       sqrt
        VMOV     R0,R1,D0
        BL       __aeabi_d2iz
        B.N      ??dis_calcu_3
//  114    else 
//  115      dis_all = 0;
??dis_calcu_2:
        MOVS     R0,#+0
//  116      
//  117    if(peak[1] > peak[3])
??dis_calcu_3:
        LDR.N    R1,??DataTable4_6
        LDRB     R1,[R1, #+3]
        LDR.N    R2,??DataTable4_6
        LDRB     R2,[R2, #+1]
        CMP      R1,R2
        BCC.N    ??dis_calcu_4
//  118      dis_all = dis_all;
//  119    else 
//  120      dis_all = -dis_all;
??dis_calcu_5:
        RSBS     R0,R0,#+0
//  121   
//  122    if(dis_all > 35)
??dis_calcu_4:
        CMP      R0,#+36
        BLT.N    ??dis_calcu_6
//  123       dis_all = 35;
        MOVS     R0,#+35
        B.N      ??dis_calcu_7
//  124    else if(dis_all < -35)
??dis_calcu_6:
        CMN      R0,#+35
        BGE.N    ??dis_calcu_7
//  125       dis_all = -35;
        MVNS     R0,#+34
//  126    
//  127    return dis_all;
??dis_calcu_7:
        POP      {R4-R6,PC}       ;; return
//  128 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     Distance_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40490000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     sensor+0xC8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     E_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     Sensor_Parame

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     dis_sensor
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void sensor_delay()
//  131 {
//  132   int i;
//  133   for(i=0; i<200; i++);
sensor_delay:
        MOVS     R0,#+0
        B.N      ??sensor_delay_0
??sensor_delay_1:
        ADDS     R0,R0,#+1
??sensor_delay_0:
        CMP      R0,#+200
        BLT.N    ??sensor_delay_1
//  134 }
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
// 
// 527 bytes in section .bss
// 592 bytes in section .text
// 
// 592 bytes of CODE memory
// 527 bytes of DATA memory
//
//Errors: none
//Warnings: none
