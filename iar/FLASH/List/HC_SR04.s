///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Dec/2016  00:01:18
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\FLASH\List\HC_SR04.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Count
        EXTERN LPLD_GPIO_Input_b
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2d

        PUBLIC ChaseDis_Filter
        PUBLIC Chase_Distance
        PUBLIC Dis_measure
        PUBLIC Pre_Chase_Distance

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
//    1 #include "Includes.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    3 uint16 Chase_Distance = 0;
Chase_Distance:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint16 Pre_Chase_Distance[10] = {0};
Pre_Chase_Distance:
        DS8 20
//    5 extern int Count;
//    6 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void Dis_measure()
//    8 {
Dis_measure:
        PUSH     {R7,LR}
//    9   DisableInterrupts; 
        CPSID    I
//   10 
//   11   if(HC_Echo == 1)
        MOVS     R1,#+12
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+1
        BNE.N    ??Dis_measure_0
//   12    {
//   13       PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//停止定时器
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
//   14       PIT->CHANNEL[1].LDVAL  = 0XFFFFFFFF;     //加载定时器值
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x40037110
        STR      R0,[R1, #+0]
//   15       PIT->CHANNEL[1].TCTRL |= PIT_TCTRL_TEN_MASK;  //使能定时器
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
        B.N      ??Dis_measure_1
//   16    }
//   17   else 
//   18    {
//   19       Chase_Distance = (0xFFFFFFFF - PIT->CHANNEL[1].CVAL)/1200 ;  
??Dis_measure_0:
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x40037114
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
//   20       PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//停止定时器
        LDR.N    R0,??DataTable1_1  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1  ;; 0x40037118
        STR      R0,[R1, #+0]
//   21    }  
//   22 
//   23   ChaseDis_Filter();
??Dis_measure_1:
        BL       ChaseDis_Filter
//   24   LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_5  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   25   EnableInterrupts;
        CPSIE    I
//   26 }
        POP      {R0,PC}          ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void ChaseDis_Filter()
//   29 {
ChaseDis_Filter:
        PUSH     {R4-R6,LR}
//   30    if(fabs(Chase_Distance-Pre_Chase_Distance[9])>40 && Count>100)
        LDR.N    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_6
        LDRH     R1,[R1, #+18]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.N    R3,??DataTable1_7  ;; 0x40440000
        BL       __aeabi_cdrcmple
        BHI.N    ??ChaseDis_Filter_0
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+101
        BLT.N    ??ChaseDis_Filter_0
//   31       Chase_Distance = Pre_Chase_Distance[9];
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+18]
        LDR.N    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
//   32    
//   33    for(uint8 i=0; i<9; i++)
??ChaseDis_Filter_0:
        MOVS     R0,#+0
        B.N      ??ChaseDis_Filter_1
//   34       Pre_Chase_Distance[i] = Pre_Chase_Distance[i+1];
??ChaseDis_Filter_2:
        LDR.N    R1,??DataTable1_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+1
        LDRH     R1,[R1, #+2]
        LDR.N    R2,??DataTable1_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
        ADDS     R0,R0,#+1
??ChaseDis_Filter_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??ChaseDis_Filter_2
//   35    Pre_Chase_Distance[9] = Chase_Distance;  
        LDR.N    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+18]
//   36    
//   37    Chase_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
//   38    for(uint8 i=0; i<10; i++)
        MOVS     R6,#+0
        B.N      ??ChaseDis_Filter_3
//   39       Chase_Distance += 0.1*Pre_Chase_Distance[i];
??ChaseDis_Filter_4:
        LDR.N    R0,??DataTable1_4
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRH     R0,[R0, R6, LSL #+1]
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1_9  ;; 0x9999999a
        LDR.N    R3,??DataTable1_10  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1_4
        STRH     R0,[R1, #+0]
        ADDS     R6,R6,#+1
??ChaseDis_Filter_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BLT.N    ??ChaseDis_Filter_4
//   40 
//   41 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff100

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
        DC32     0x40037114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Pre_Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x40440000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x3fb99999

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   42 
//   43 
// 
//  22 bytes in section .bss
// 296 bytes in section .text
// 
// 296 bytes of CODE memory
//  22 bytes of DATA memory
//
//Errors: none
//Warnings: none
