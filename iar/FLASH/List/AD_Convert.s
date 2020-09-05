///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       07/Dec/2016  02:02:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\AD_Convert.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\AD_Convert.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\Obj\
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\AD_Convert.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Get

        PUBLIC ad_convert
        PUBLIC sensor
        PUBLIC x

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\AD_Convert.c
//    1 #include "AD_Convert.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int sensor[5][100] = {0};
sensor:
        DS8 2000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int x;
x:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    6 void ad_convert()
//    7 {
ad_convert:
        PUSH     {R4,LR}
//    8   uint8 i,j;
//    9   
//   10   LPLD_ADC_Chn_Enable(ADC1, AD4);
        MOVS     R1,#+4
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   11   for(i=0; i<100;i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_1
//   12     sensor[0][i] = LPLD_ADC_Get(ADC1, AD4);
??ad_convert_2:
        MOVS     R1,#+4
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??ad_convert_0+0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        ADDS     R4,R4,#+1
??ad_convert_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??ad_convert_2
//   13   
//   14   LPLD_ADC_Chn_Enable(ADC1, AD5);
        MOVS     R1,#+5
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   15   for(i=0; i<100;i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_3
//   16     sensor[1][i] = LPLD_ADC_Get(ADC1, AD5);
??ad_convert_4:
        MOVS     R1,#+5
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??ad_convert_0+0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        STR      R0,[R1, #+400]
        ADDS     R4,R4,#+1
??ad_convert_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??ad_convert_4
//   17 
//   18   LPLD_ADC_Chn_Enable(ADC1, AD6);
        MOVS     R1,#+6
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   19   for(i=0; i<100;i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_5
//   20     sensor[2][i] = LPLD_ADC_Get(ADC1, AD6);
??ad_convert_6:
        MOVS     R1,#+6
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??ad_convert_0+0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        STR      R0,[R1, #+800]
        ADDS     R4,R4,#+1
??ad_convert_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??ad_convert_6
//   21 
//   22   LPLD_ADC_Chn_Enable(ADC1, AD7);
        MOVS     R1,#+7
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   23   for(i=0; i<100;i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_7
//   24     sensor[3][i] = LPLD_ADC_Get(ADC1, AD7);
??ad_convert_8:
        MOVS     R1,#+7
        LDR.N    R0,??ad_convert_0  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.N    R1,??ad_convert_0+0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        STR      R0,[R1, #+1200]
        ADDS     R4,R4,#+1
??ad_convert_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??ad_convert_8
//   25   
//   26   //for(j=0; j<5; j++)
//   27     //sensor[]
//   28 }
        POP      {R4,PC}          ;; return
        DATA
??ad_convert_0:
        DC32     0x400bb000
        DC32     sensor

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
// 2 004 bytes in section .bss
//   168 bytes in section .text
// 
//   168 bytes of CODE memory
// 2 004 bytes of DATA memory
//
//Errors: none
//Warnings: 1
