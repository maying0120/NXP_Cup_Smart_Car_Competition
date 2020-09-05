///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2017  02:55:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\app\Chase_Distance.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\app\Chase_Distance.c"
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\FLASH\List\"
//        -lB
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\FLASH\List\"
//        -o
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\app\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\..\..\..\lib\USB\class\"
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\iar\FLASH\List\Chase_Distance.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Input_b
        EXTERN Turn_Around

        PUBLIC Pre_Ultra_Distance
        PUBLIC UltraDis_Filter
        PUBLIC UltraDis_Measure
        PUBLIC Ultra_Distance
        PUBLIC behind_start

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0312)\app\Chase_Distance.c
//    1 #include "Includes.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//    3 uint16 Ultra_Distance = 80;
Ultra_Distance:
        DATA
        DC16 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint16 Pre_Ultra_Distance[10] = {0};
Pre_Ultra_Distance:
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
//   10 void UltraDis_Measure()
//   11 {
UltraDis_Measure:
        PUSH     {R7,LR}
//   12   //后车通过超声波测得距离值 
//   13   if(Turn_Around == 1)  
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_0
//   14     {
//   15       if(HC_Echo == 1)
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_1  ;; 0x400ff000
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+1
        BNE.N    ??UltraDis_Measure_1
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
        B.N      ??UltraDis_Measure_2
//   20         }
//   21       else 
//   22         {
//   23           Ultra_Distance = (0xFFFFFFFF - PIT->CHANNEL[1].CVAL)/1200 ;  
??UltraDis_Measure_1:
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
//   26       UltraDis_Filter();
??UltraDis_Measure_2:
        BL       UltraDis_Filter
//   27       LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_6  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   28     }
//   29 }
??UltraDis_Measure_0:
        POP      {R0,PC}          ;; return
//   30 
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void UltraDis_Filter()
//   33 {
//   34    if(Ultra_Distance-Pre_Ultra_Distance[9]<-35 && Ultra_Distance <10)
UltraDis_Filter:
        LDR.N    R0,??DataTable1_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        LDRH     R1,[R1, #+18]
        SUBS     R0,R0,R1
        CMN      R0,#+35
        BGE.N    ??UltraDis_Filter_0
        LDR.N    R0,??DataTable1_5
        LDRH     R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??UltraDis_Filter_0
//   35       Ultra_Distance = Pre_Ultra_Distance[9];
        LDR.N    R0,??DataTable1_7
        LDRH     R0,[R0, #+18]
        LDR.N    R1,??DataTable1_5
        STRH     R0,[R1, #+0]
//   36    if(Ultra_Distance-Pre_Ultra_Distance[9]>100)
??UltraDis_Filter_0:
        LDR.N    R0,??DataTable1_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        LDRH     R1,[R1, #+18]
        SUBS     R0,R0,R1
        CMP      R0,#+101
        BLT.N    ??UltraDis_Filter_1
//   37       Ultra_Distance = Pre_Ultra_Distance[9];
        LDR.N    R0,??DataTable1_7
        LDRH     R0,[R0, #+18]
        LDR.N    R1,??DataTable1_5
        STRH     R0,[R1, #+0]
//   38    
//   39    for(uint8 i=0; i<9; i++)
??UltraDis_Filter_1:
        MOVS     R0,#+0
        B.N      ??UltraDis_Filter_2
//   40       Pre_Ultra_Distance[i] = Pre_Ultra_Distance[i+1];
??UltraDis_Filter_3:
        LDR.N    R1,??DataTable1_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+1
        LDRH     R1,[R1, #+2]
        LDR.N    R2,??DataTable1_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
        ADDS     R0,R0,#+1
??UltraDis_Filter_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BLT.N    ??UltraDis_Filter_3
//   41    Pre_Ultra_Distance[9] = Ultra_Distance;  
        LDR.N    R0,??DataTable1_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+18]
//   42 }
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
        DC32     Ultra_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
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
//   43 
//   44 
// 
//  21 bytes in section .bss
//   2 bytes in section .data
// 230 bytes in section .text
// 
// 230 bytes of CODE memory
//  23 bytes of DATA memory
//
//Errors: none
//Warnings: none
