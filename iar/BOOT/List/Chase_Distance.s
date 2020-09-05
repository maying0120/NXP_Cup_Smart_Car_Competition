///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  17:29:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Chase_Distance.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Chase_Distance.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Chase_Distance.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Input_b
        EXTERN Turn_Around

        PUBLIC ChaseDis_Filter
        PUBLIC Chase_Distance
        PUBLIC Dis_measure
        PUBLIC Pre_Chase_Distance
        PUBLIC behind_start

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Chase_Distance.c
//    1 #include "Includes.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//    3 uint16 Chase_Distance = 50;
Chase_Distance:
        DATA
        DC16 50

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint16 Pre_Chase_Distance[10] = {0};
Pre_Chase_Distance:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8 behind_start = 0;
behind_start:
        DS8 1
//    6 extern int Count;
//    7 extern uint8 Turn_Around;
//    8 
//    9 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void Dis_measure()
//   11 {
Dis_measure:
        PUSH     {R7,LR}
//   12   //后车通过超 声波测得距离值 
//   13   if(Turn_Around == 1)  
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Dis_measure_0
//   14     {
//   15       if(HC_Echo == 1)
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_1  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+1
        BNE.N    ??Dis_measure_1
//   16         {
//   17           PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//停止定时器
        LDR.N    R0,??DataTable1_2  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2  ;; 0x40037118
        STR      R0,[R1, #+0]
//   18           PIT->CHANNEL[1].LDVAL  = 0XFFFFFFFF;     //加载定时器值
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x40037110
        STR      R0,[R1, #+0]
//   19           PIT->CHANNEL[1].TCTRL |= PIT_TCTRL_TEN_MASK;  //使能定时器
        LDR.N    R0,??DataTable1_2  ;; 0x40037118
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_2  ;; 0x40037118
        STR      R0,[R1, #+0]
        B.N      ??Dis_measure_2
//   20         }
//   21       else 
//   22         {
//   23           Chase_Distance = (0xFFFFFFFF - PIT->CHANNEL[1].CVAL)/1200 ;  
??Dis_measure_1:
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_4  ;; 0x40037114
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_5
        STRH     R0,[R1, #+0]
//   24           PIT->CHANNEL[1].TCTRL  &= ~PIT_TCTRL_TEN_MASK;//停止定时器
        LDR.N    R0,??DataTable1_2  ;; 0x40037118
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2  ;; 0x40037118
        STR      R0,[R1, #+0]
//   25         }  
//   26       ChaseDis_Filter();
??Dis_measure_2:
        BL       ChaseDis_Filter
//   27       LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_6  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   28     }
//   29 }
??Dis_measure_0:
        POP      {R0,PC}          ;; return
//   30 
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void ChaseDis_Filter()
//   33 {
//   34 //   if(Chase_Distance-Pre_Chase_Distance[9]<-35 && Chase_Distance <10)
//   35 //      Chase_Distance = Pre_Chase_Distance[9];
//   36 //   if(Chase_Distance-Pre_Chase_Distance[9]>100)
//   37 //      Chase_Distance = Pre_Chase_Distance[9];
//   38    
//   39    
//   40    for(uint8 i=0; i<9; i++)
ChaseDis_Filter:
        MOVS     R0,#+0
        B.N      ??ChaseDis_Filter_0
//   41       Pre_Chase_Distance[i] = Pre_Chase_Distance[i+1];
??ChaseDis_Filter_1:
        LDR.N    R1,??DataTable1_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+1
        LDRH     R1,[R1, #+2]
        LDR.N    R2,??DataTable1_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
        ADDS     R0,R0,#+1
??ChaseDis_Filter_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??ChaseDis_Filter_1
//   42    Pre_Chase_Distance[9] = Chase_Distance;  
        LDR.N    R0,??DataTable1_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+18]
//   43 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40037110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40037114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Pre_Chase_Distance

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   44 
//   45 
// 
//  21 bytes in section .bss
//   2 bytes in section .data
// 176 bytes in section .text
// 
// 176 bytes of CODE memory
//  23 bytes of DATA memory
//
//Errors: none
//Warnings: none
