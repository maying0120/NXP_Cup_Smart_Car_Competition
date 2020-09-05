///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\HC_SR04.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_GPIO_Output_b

        PUBLIC Chase_Distance
        PUBLIC Chase_Distance_Last
        PUBLIC Dis_measure
        PUBLIC Echo_Delay
        PUBLIC Send_Trig
        PUBLIC Trig_Delay
        PUBLIC Trig_Dly_Cnt

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\HC_SR04.c
//    1 #include "Includes.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int Chase_Distance;
Chase_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int Chase_Distance_Last;
Chase_Distance_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 int Trig_Dly_Cnt;
Trig_Dly_Cnt:
        DS8 4
//    7 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void Dis_measure()
//    9 {
Dis_measure:
        PUSH     {R7,LR}
//   10   Trig_Dly_Cnt = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//   11   Chase_Distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   12   
//   13   while( HC_Echo )
??Dis_measure_0:
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_2  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Dis_measure_1
//   14    {     
//   15      Chase_Distance++;
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   16      Echo_Delay();
        BL       Echo_Delay
//   17      if(Chase_Distance > 999)
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+1000
        BLT.N    ??Dis_measure_0
//   18        break;
//   19    }
//   20   
//   21  // if(Chase_Distance==20000 && Chase_Distance_Last<1000)
//   22  //   Chase_Distance = Chase_Distance_Last;
//   23   
//   24   //Chase_Distance_Last = Chase_Distance;
//   25   
//   26   LPLD_GPIO_ClearIntFlag(PORTC);
??Dis_measure_1:
        MOVS     R0,#-1
        LDR.N    R1,??DataTable2_3  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//   27 }
        POP      {R0,PC}          ;; return
//   28 
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void Echo_Delay()
//   31 {
//   32   int i;
//   33   for(i=0; i<500; i++)
Echo_Delay:
        MOVS     R0,#+0
        B.N      ??Echo_Delay_0
??Echo_Delay_1:
        ADDS     R0,R0,#+1
??Echo_Delay_0:
        CMP      R0,#+500
        BLT.N    ??Echo_Delay_1
//   34    {};
//   35 }
        BX       LR               ;; return
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void Send_Trig()
//   38 { 
Send_Trig:
        PUSH     {R7,LR}
//   39   HC_Trig(1);
        MOVS     R2,#+1
        MOVS     R1,#+18
        LDR.N    R0,??DataTable2_4  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   40   Trig_Delay(30);
        MOVS     R0,#+30
        BL       Trig_Delay
//   41   HC_Trig(0);
        MOVS     R2,#+0
        MOVS     R1,#+18
        LDR.N    R0,??DataTable2_4  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   42 }
        POP      {R0,PC}          ;; return
//   43 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   44 void Trig_Delay(uint8 dly)
//   45 {
//   46   int i, j;
//   47   Trig_Dly_Cnt = dly;
Trig_Delay:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//   48   
//   49   for(i=0; i<Trig_Dly_Cnt; i++)
        MOVS     R0,#+0
        B.N      ??Trig_Delay_0
//   50     for(j=0; j<26000; j++)
//   51       asm("nop");
??Trig_Delay_1:
        nop
        ADDS     R1,R1,#+1
??Trig_Delay_2:
        MOVW     R2,#+26000
        CMP      R1,R2
        BLT.N    ??Trig_Delay_1
        ADDS     R0,R0,#+1
??Trig_Delay_0:
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Trig_Delay_3
        MOVS     R1,#+0
        B.N      ??Trig_Delay_2
//   52 }
??Trig_Delay_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     Trig_Dly_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x400ff040

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
//  12 bytes in section .bss
// 162 bytes in section .text
// 
// 162 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
