///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  17:00:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_UART.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_UART.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\BOOT\List\"
//        -lB
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\BOOT\List\"
//        -o
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\BOOT\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\app\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\..\..\..\lib\USB\class\"
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\BOOT\List\HW_UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock
        EXTERN g_core_clock

        PUBLIC LPLD_UART_DisableIrq
        PUBLIC LPLD_UART_EnableIrq
        PUBLIC LPLD_UART_GetChar
        PUBLIC LPLD_UART_GetChar_Present
        PUBLIC LPLD_UART_Init
        PUBLIC LPLD_UART_PutChar
        PUBLIC LPLD_UART_PutCharArr
        PUBLIC LPLD_UART_RxFIFO_Flush
        PUBLIC LPLD_UART_TxFIFO_Flush
        PUBLIC UART0_ERR_IRQHandler
        PUBLIC UART0_IRQHandler
        PUBLIC UART1_ERR_IRQHandler
        PUBLIC UART1_IRQHandler
        PUBLIC UART2_ERR_IRQHandler
        PUBLIC UART2_IRQHandler
        PUBLIC UART3_ERR_IRQHandler
        PUBLIC UART3_IRQHandler
        PUBLIC UART4_ERR_IRQHandler
        PUBLIC UART4_IRQHandler
        PUBLIC UART5_ERR_IRQHandler
        PUBLIC UART5_IRQHandler
        PUBLIC UART_R_ISR
        PUBLIC UART_T_ISR

// C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_UART.c
//    1 /**
//    2  * @file HW_UART.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_UART.h"
//   24 
//   25 //�û������жϺ�����ڵ�ַ����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 UART_ISR_CALLBACK UART_R_ISR[6];
UART_R_ISR:
        DS8 24
//   27 //�û������жϺ�����ڵ�ַ����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 UART_ISR_CALLBACK UART_T_ISR[6];  
UART_T_ISR:
        DS8 24
//   29 
//   30 
//   31 /*
//   32  * LPLD_UART_Init
//   33  * ��ʼ��UARTͨ���������ʡ����ͽ�������
//   34  * 
//   35  * ����:
//   36  *    uart_init_structure--UART��ʼ���ṹ�壬
//   37  *                        ���嶨���UART_InitTypeDef
//   38  *
//   39  * ���:
//   40  *    ��
//   41  *
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void LPLD_UART_Init(UART_InitTypeDef uart_init_structure)
//   44 {
LPLD_UART_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R7,LR}
//   45   register uint16 sbr, brfa;
//   46   uint32 sysclk;
//   47   uint8 temp, x ,len;
//   48   UART_Type *uartx = uart_init_structure.UART_Uartx;
        LDR      R0,[SP, #+20]
//   49   uint32 baud = uart_init_structure.UART_BaudRate;
        LDR      R3,[SP, #+24]
//   50   PortPinsEnum_Type tx_pin = uart_init_structure.UART_TxPin;
        LDRB     R7,[SP, #+28]
//   51   PortPinsEnum_Type rx_pin = uart_init_structure.UART_RxPin;
        LDRB     R5,[SP, #+29]
//   52   UART_ISR_CALLBACK rx_isr = uart_init_structure.UART_RxIsr;
        LDR      R1,[SP, #+40]
//   53   UART_ISR_CALLBACK tx_isr = uart_init_structure.UART_TxIsr;
        LDR      R2,[SP, #+44]
//   54   
//   55   if(baud == NULL)
        CMP      R3,#+0
        BNE.N    ??LPLD_UART_Init_0
//   56   {
//   57     baud = 9600;
        MOV      R3,#+9600
//   58   }
//   59   
//   60   //ʹ��ѡ�е�UART����ͨ��ʱ�ӣ���ӦGPIO��UART���ù���   
//   61   if(uartx == UART0)
??LPLD_UART_Init_0:
        LDR.W    R4,??DataTable10_2  ;; 0x4006a000
        CMP      R0,R4
        BNE.N    ??LPLD_UART_Init_1
//   62   {
//   63     x = 0;
        MOVS     R4,#+0
//   64     sysclk = g_core_clock;
        LDR.W    R6,??DataTable10_3
        LDR      R6,[R6, #+0]
//   65     SIM->SCGC4 |= SIM_SCGC4_UART0_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x400
        LDR.W    LR,??DataTable10_4  ;; 0x40048034
        STR      R12,[LR, #+0]
//   66     
//   67     if(tx_pin == PTA2)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BNE.N    ??LPLD_UART_Init_2
//   68       PORTA->PCR[2] = PORT_PCR_MUX(2); 
        MOV      R7,#+512
        LDR.W    R12,??DataTable10_5  ;; 0x40049008
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_3
//   69     else if(tx_pin == PTA14)
??LPLD_UART_Init_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+14
        BNE.N    ??LPLD_UART_Init_4
//   70       PORTA->PCR[14] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_6  ;; 0x40049038
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_3
//   71     else
//   72       PORTB->PCR[17] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_4:
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_7  ;; 0x4004a044
        STR      R7,[R12, #+0]
//   73     
//   74     if(rx_pin == PTA1)
??LPLD_UART_Init_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_UART_Init_5
//   75       PORTA->PCR[1] = PORT_PCR_MUX(2); 
        MOV      R5,#+512
        LDR.W    R7,??DataTable10_8  ;; 0x40049004
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   76     else if(rx_pin == PTA15)
??LPLD_UART_Init_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BNE.N    ??LPLD_UART_Init_7
//   77       PORTA->PCR[15] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_9  ;; 0x4004903c
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   78     else
//   79       PORTB->PCR[16] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_7:
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_10  ;; 0x4004a040
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   80   }
//   81   else
//   82   {
//   83     if (uartx == UART1)
??LPLD_UART_Init_1:
        LDR.W    R4,??DataTable10_11  ;; 0x4006b000
        CMP      R0,R4
        BNE.N    ??LPLD_UART_Init_8
//   84     {
//   85       x = 1;
        MOVS     R4,#+1
//   86       sysclk = g_core_clock;
        LDR.W    R6,??DataTable10_3
        LDR      R6,[R6, #+0]
//   87       SIM->SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x800
        LDR.W    LR,??DataTable10_4  ;; 0x40048034
        STR      R12,[LR, #+0]
//   88       
//   89       if(tx_pin == PTE0)   
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+124
        BNE.N    ??LPLD_UART_Init_9
//   90         PORTE->PCR[0] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_12  ;; 0x4004d000
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_10
//   91       else
//   92         PORTC->PCR[4] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_9:
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_13  ;; 0x4004b010
        STR      R7,[R12, #+0]
//   93       
//   94       if(rx_pin == PTE1)
??LPLD_UART_Init_10:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+125
        BNE.N    ??LPLD_UART_Init_11
//   95         PORTE->PCR[1] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_14  ;; 0x4004d004
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   96       else
//   97         PORTC->PCR[3] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_11:
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_15  ;; 0x4004b00c
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   98     }
//   99     else
//  100     {
//  101       sysclk = g_bus_clock;
??LPLD_UART_Init_8:
        LDR.W    R4,??DataTable10_16
        LDR      R6,[R4, #+0]
//  102       if (uartx == UART2)
        LDR.W    R4,??DataTable10_17  ;; 0x4006c000
        CMP      R0,R4
        BNE.N    ??LPLD_UART_Init_12
//  103       {
//  104         x = 2;
        MOVS     R4,#+2
//  105         SIM->SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.W    R5,??DataTable10_4  ;; 0x40048034
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x1000
        LDR.W    R7,??DataTable10_4  ;; 0x40048034
        STR      R5,[R7, #+0]
//  106         
//  107         PORTD->PCR[3] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_18  ;; 0x4004c00c
        STR      R5,[R7, #+0]
//  108         PORTD->PCR[2] = PORT_PCR_MUX(3);
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_19  ;; 0x4004c008
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  109       }
//  110       else
//  111       {
//  112         if(uartx == UART3)
??LPLD_UART_Init_12:
        LDR.W    R4,??DataTable10_20  ;; 0x4006d000
        CMP      R0,R4
        BNE.N    ??LPLD_UART_Init_13
//  113         {
//  114           x = 3;
        MOVS     R4,#+3
//  115           SIM->SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x2000
        LDR.W    LR,??DataTable10_4  ;; 0x40048034
        STR      R12,[LR, #+0]
//  116           
//  117           if(tx_pin == PTE4)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+128
        BNE.N    ??LPLD_UART_Init_14
//  118             PORTE->PCR[4] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_21  ;; 0x4004d010
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_15
//  119           else if(tx_pin == PTB11)
??LPLD_UART_Init_14:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+43
        BNE.N    ??LPLD_UART_Init_16
//  120             PORTB->PCR[11] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_22  ;; 0x4004a02c
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_15
//  121           else 
//  122             PORTC->PCR[17] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_16:
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_23  ;; 0x4004b044
        STR      R7,[R12, #+0]
//  123           
//  124           if(rx_pin == PTE5)
??LPLD_UART_Init_15:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??LPLD_UART_Init_17
//  125             PORTE->PCR[5] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_24  ;; 0x4004d014
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  126           else if(rx_pin == PTB10)
??LPLD_UART_Init_17:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+42
        BNE.N    ??LPLD_UART_Init_18
//  127             PORTB->PCR[10] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_25  ;; 0x4004a028
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  128           else
//  129             PORTC->PCR[16] = PORT_PCR_MUX(3);
??LPLD_UART_Init_18:
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_26  ;; 0x4004b040
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  130         }
//  131         else
//  132         {
//  133           if(uartx == UART4)
??LPLD_UART_Init_13:
        LDR.W    R4,??DataTable10_27  ;; 0x400ea000
        CMP      R0,R4
        BNE.N    ??LPLD_UART_Init_19
//  134           {
//  135             x = 4;
        MOVS     R4,#+4
//  136             SIM->SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.W    R12,??DataTable10_28  ;; 0x40048028
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x400
        LDR.W    LR,??DataTable10_28  ;; 0x40048028
        STR      R12,[LR, #+0]
//  137             
//  138             if(tx_pin == PTE24)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+148
        BNE.N    ??LPLD_UART_Init_20
//  139               PORTE->PCR[24] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_29  ;; 0x4004d060
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_21
//  140             else
//  141               PORTC->PCR[15] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_20:
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_30  ;; 0x4004b03c
        STR      R7,[R12, #+0]
//  142             
//  143             if(rx_pin == PTE25)
??LPLD_UART_Init_21:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+149
        BNE.N    ??LPLD_UART_Init_22
//  144               PORTE->PCR[25] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_31  ;; 0x4004d064
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  145             else
//  146               PORTC->PCR[14] = PORT_PCR_MUX(3);
??LPLD_UART_Init_22:
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_32  ;; 0x4004b038
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  147           }
//  148           else
//  149           {
//  150             x = 5;
??LPLD_UART_Init_19:
        MOVS     R4,#+5
//  151             uartx = UART5;
        LDR.W    R0,??DataTable10_33  ;; 0x400eb000
//  152             SIM->SCGC1 |= SIM_SCGC1_UART5_MASK;
        LDR.W    R12,??DataTable10_28  ;; 0x40048028
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x800
        LDR.W    LR,??DataTable10_28  ;; 0x40048028
        STR      R12,[LR, #+0]
//  153             
//  154             if(tx_pin == PTD9)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+101
        BNE.N    ??LPLD_UART_Init_23
//  155               PORTD->PCR[9] = PORT_PCR_MUX(3); 
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_34  ;; 0x4004c024
        STR      R7,[R12, #+0]
        B.N      ??LPLD_UART_Init_24
//  156             else
//  157               PORTE->PCR[8] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_23:
        MOV      R7,#+768
        LDR.W    R12,??DataTable10_35  ;; 0x4004d020
        STR      R7,[R12, #+0]
//  158             
//  159             if(rx_pin == PTD8)
??LPLD_UART_Init_24:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+100
        BNE.N    ??LPLD_UART_Init_25
//  160               PORTD->PCR[8] = PORT_PCR_MUX(3); 
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_36  ;; 0x4004c020
        STR      R5,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  161             else
//  162               PORTE->PCR[9] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_25:
        MOV      R5,#+768
        LDR.W    R7,??DataTable10_37  ;; 0x4004d024
        STR      R5,[R7, #+0]
//  163           }
//  164         }
//  165       }
//  166     }
//  167   }
//  168   
//  169   //�����ú������Ĵ���ǰ���ȹرշ������ͽ�����
//  170   uartx->C2 &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK );
??LPLD_UART_Init_6:
        LDRB     R5,[R0, #+3]
        ANDS     R5,R5,#0xF3
        STRB     R5,[R0, #+3]
//  171   
//  172   //����UARTΪ 8λ, ����żУ�� */
//  173   uartx->C1 = 0;	
        MOVS     R5,#+0
        STRB     R5,[R0, #+2]
//  174   
//  175   //���㲨����
//  176   sbr = (uint16)((sysclk)/(baud * 16));
        LSLS     R5,R3,#+4
        UDIV     R5,R6,R5
//  177   
//  178   //����UARTx_BDH�Ĵ����г���SBR��ֵ
//  179   temp = uartx->BDH & ~(UART_BDH_SBR(0x1F));
        LDRB     R7,[R0, #+0]
        ANDS     R7,R7,#0xE0
//  180   
//  181   uartx->BDH = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R12,R5,#+8
        ANDS     R12,R12,#0x1F
        ORRS     R7,R12,R7
        STRB     R7,[R0, #+0]
//  182   uartx->BDL = (uint8)(sbr & UART_BDL_SBR_MASK);
        STRB     R5,[R0, #+1]
//  183   
//  184   //���ò����ʵ�΢������
//  185   brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
        LSLS     R6,R6,#+5
        LSLS     R3,R3,#+4
        UDIV     R3,R6,R3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        SUBS     R3,R3,R5, LSL #+5
//  186   
//  187   //����UARTx_C4�Ĵ����г���BRFA��ֵ
//  188   temp = uartx->C4 & ~(UART_C4_BRFA(0x1F));
        LDRB     R5,[R0, #+10]
        ANDS     R7,R5,#0xE0
//  189   
//  190   uartx->C4 = temp |  UART_C4_BRFA(brfa);    
        ANDS     R3,R3,#0x1F
        ORRS     R3,R3,R7
        STRB     R3,[R0, #+10]
//  191   
//  192   //����UART����DMA��ʽ
//  193   if( uart_init_structure.UART_RxDMAEnable == TRUE 
//  194     && uart_init_structure.UART_RxIntEnable == TRUE )
        LDRB     R3,[SP, #+33]
        CMP      R3,#+1
        BNE.N    ??LPLD_UART_Init_26
        LDRB     R3,[SP, #+30]
        CMP      R3,#+1
        BNE.N    ??LPLD_UART_Init_26
//  195   {
//  196     //ʹ�ܽ����жϻ���DMA
//  197     uartx->C2 |= UART_C2_RIE_MASK;
        LDRB     R1,[R0, #+3]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+3]
//  198     //ʹ�ܽ���DMA
//  199     uartx->C5 |= UART_C5_RDMAS_MASK;
        LDRB     R1,[R0, #+11]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+11]
        B.N      ??LPLD_UART_Init_27
//  200   }//����UART�����жϷ�ʽ
//  201   else if(uart_init_structure.UART_RxIntEnable == TRUE 
//  202         && rx_isr != NULL)
??LPLD_UART_Init_26:
        LDRB     R3,[SP, #+30]
        CMP      R3,#+1
        BNE.N    ??LPLD_UART_Init_28
        MOVS     R3,R1
        CMP      R3,#+0
        BEQ.N    ??LPLD_UART_Init_28
//  203   {
//  204     //ʹ�ܽ����ж�
//  205     uartx->C2 |= UART_C2_RIE_MASK; 
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x20
        STRB     R3,[R0, #+3]
//  206     UART_R_ISR[x] = rx_isr;
        LDR.W    R3,??DataTable10_38
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R1,[R3, R4, LSL #+2]
        B.N      ??LPLD_UART_Init_27
//  207   } 
//  208   else
//  209   {
//  210     uartx->C2 &= ~(UART_C2_RIE_MASK); 
??LPLD_UART_Init_28:
        LDRB     R1,[R0, #+3]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+3]
//  211     uartx->C5 &= ~(UART_C5_RDMAS_MASK);
        LDRB     R1,[R0, #+11]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+11]
//  212   }
//  213   
//  214   //����UART����DMA��ʽ
//  215   if( uart_init_structure.UART_TxDMAEnable == TRUE 
//  216     && uart_init_structure.UART_TxIntEnable == TRUE )
??LPLD_UART_Init_27:
        LDRB     R1,[SP, #+32]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_29
        LDRB     R1,[SP, #+31]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_29
//  217   {
//  218     //ʹ�ܷ����жϻ���DMA
//  219     uartx->C2 |= UART_C2_TIE_MASK;
        LDRB     R1,[R0, #+3]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+3]
//  220     //ʹ�ܽ���DMA
//  221     uartx->C5 |= UART_C5_TDMAS_MASK;
        LDRB     R1,[R0, #+11]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+11]
        B.N      ??LPLD_UART_Init_30
//  222   }//����UART�����жϷ�ʽ
//  223   else if(uart_init_structure.UART_TxIntEnable == TRUE 
//  224         && tx_isr != NULL)
??LPLD_UART_Init_29:
        LDRB     R1,[SP, #+31]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_31
        MOVS     R1,R2
        CMP      R1,#+0
        BEQ.N    ??LPLD_UART_Init_31
//  225   {
//  226     //ʹ�ܷ����ж�
//  227     uartx->C2 |= UART_C2_TIE_MASK; 
        LDRB     R1,[R0, #+3]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+3]
//  228     UART_T_ISR[x] = tx_isr;
        LDR.W    R1,??DataTable10_39
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R2,[R1, R4, LSL #+2]
        B.N      ??LPLD_UART_Init_30
//  229   } 
//  230   else
//  231   {
//  232     uartx->C2 &= ~(UART_C2_TIE_MASK);
??LPLD_UART_Init_31:
        LDRB     R1,[R0, #+3]
        ANDS     R1,R1,#0x7F
        STRB     R1,[R0, #+3]
//  233     uartx->C5 &= ~(UART_C5_TDMAS_MASK);
        LDRB     R1,[R0, #+11]
        ANDS     R1,R1,#0x7F
        STRB     R1,[R0, #+11]
//  234   }
//  235   
//  236   //����UART FIFO ����
//  237   if( (uartx->C2 & UART_C2_RE_MASK) == 0 
//  238      && uart_init_structure.RxFIFO.FIFO_Enable == TRUE)
??LPLD_UART_Init_30:
        LDRB     R1,[R0, #+3]
        LSLS     R1,R1,#+29
        BMI.N    ??LPLD_UART_Init_32
        LDRB     R1,[SP, #+37]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_32
//  239   {
//  240     //ʹ�� UART ����FIFO
//  241     uartx->PFIFO |= UART_PFIFO_RXFE_MASK;
        LDRB     R1,[R0, #+16]
        ORRS     R1,R1,#0x8
        STRB     R1,[R0, #+16]
//  242     
//  243     if(uart_init_structure.RxFIFO.FIFO_BufFlow_IntEnable == TRUE)
        LDRB     R1,[SP, #+38]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_33
//  244     {
//  245       uartx->CFIFO |= UART_CFIFO_RXUFE_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+17]
//  246     }
//  247     
//  248     //��ȡ FIFO buffer ���
//  249     len = (uint8)( uartx->PFIFO & UART_PFIFO_RXFIFOSIZE_MASK ) >> UART_PFIFO_RXFIFOSIZE_SHIFT;
??LPLD_UART_Init_33:
        LDRB     R1,[R0, #+16]
        ANDS     R1,R1,#0x7
//  250     len = len > 0 ? 1 << (len + 1) : 1;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_UART_Init_34
        MOVS     R2,#+1
        ADDS     R1,R1,#+1
        LSLS     R1,R2,R1
        B.N      ??LPLD_UART_Init_35
??LPLD_UART_Init_34:
        MOVS     R1,#+1
//  251     //���Rx FIFO buffer�е�DataWords ���ڵ��� UART_FIFOWaterMark
//  252     //�������жϻ���DMA�źţ�ȡ��C2_RIE��C5_RDMAS��״̬
//  253     if( uart_init_structure.RxFIFO.FIFO_WaterMark > len )
??LPLD_UART_Init_35:
        LDRB     R2,[SP, #+39]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCS.N    ??LPLD_UART_Init_36
//  254     {
//  255       uartx->RWFIFO = UART_RWFIFO_RXWATER(len);
        STRB     R1,[R0, #+21]
        B.N      ??LPLD_UART_Init_32
//  256     }
//  257     else
//  258     {
//  259       uartx->RWFIFO = UART_RWFIFO_RXWATER(uart_init_structure.RxFIFO.FIFO_WaterMark);
??LPLD_UART_Init_36:
        LDRB     R1,[SP, #+39]
        STRB     R1,[R0, #+21]
//  260     }  
//  261   }
//  262   
//  263   if( (uartx->C2 & UART_C2_TE_MASK) == 0 
//  264      && uart_init_structure.TxFIFO.FIFO_Enable == TRUE)
??LPLD_UART_Init_32:
        LDRB     R1,[R0, #+3]
        LSLS     R1,R1,#+28
        BMI.N    ??LPLD_UART_Init_37
        LDRB     R1,[SP, #+34]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_37
//  265   {
//  266     //ʹ�� UART ����FIFO
//  267     uartx->PFIFO |= UART_PFIFO_TXFE_MASK;
        LDRB     R1,[R0, #+16]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+16]
//  268     
//  269     if(uart_init_structure.TxFIFO.FIFO_BufFlow_IntEnable == TRUE)
        LDRB     R1,[SP, #+35]
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_38
//  270     {
//  271       uartx->CFIFO |= UART_CFIFO_TXOFE_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+17]
//  272     }
//  273     
//  274     //��ȡ FIFO buffer ���
//  275     len = (uint8)( uartx->PFIFO & UART_PFIFO_TXFIFOSIZE_MASK ) >> UART_PFIFO_TXFIFOSIZE_SHIFT;
??LPLD_UART_Init_38:
        LDRB     R1,[R0, #+16]
        UBFX     R1,R1,#+4,#+3
//  276     len = len > 0 ? 1 << (len + 1) : 1;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_UART_Init_39
        MOVS     R2,#+1
        ADDS     R1,R1,#+1
        LSLS     R1,R2,R1
        B.N      ??LPLD_UART_Init_40
??LPLD_UART_Init_39:
        MOVS     R1,#+1
//  277     //���Tx FIFO buffer�е�DataWords С�ڵ��� UART_FIFOWaterMark
//  278     //�������жϻ���DMA�źţ�ȡ��C2_TIE��C5_TDMAS��״̬
//  279     if( uart_init_structure.TxFIFO.FIFO_WaterMark > len )
??LPLD_UART_Init_40:
        LDRB     R2,[SP, #+36]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R2
        BCS.N    ??LPLD_UART_Init_41
//  280     {
//  281       uartx->TWFIFO = UART_TWFIFO_TXWATER(len);
        STRB     R1,[R0, #+19]
        B.N      ??LPLD_UART_Init_37
//  282     }
//  283     else
//  284     {
//  285       uartx->TWFIFO = UART_TWFIFO_TXWATER(uart_init_structure.TxFIFO.FIFO_WaterMark);
??LPLD_UART_Init_41:
        LDRB     R1,[SP, #+36]
        STRB     R1,[R0, #+19]
//  286     }
//  287   }
//  288   //ʹ�� UART ������
//  289   uartx->C2 |= UART_C2_TE_MASK | UART_C2_RE_MASK;  
??LPLD_UART_Init_37:
        LDRB     R1,[R0, #+3]
        ORRS     R1,R1,#0xC
        STRB     R1,[R0, #+3]
//  290 }
        POP      {R4-R7}
        LDR      PC,[SP], #+20    ;; return
//  291 
//  292 
//  293 /*
//  294  * LPLD_UART_RxFIFO_Flush
//  295  * ���UART Rx FIFO
//  296  * 
//  297  * ����:
//  298  *    uartx--UARTģ���
//  299  *      |__UART0          --UART0
//  300  *      |__UART1          --UART1
//  301  *      |__UART2          --UART2
//  302  *      |__UART3          --UART3
//  303  *      |__UART4          --UART4
//  304  *      |__UART5          --UART5
//  305  *
//  306  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 void LPLD_UART_RxFIFO_Flush(UART_Type *uartx)
//  308 {
//  309   //��ս��� FIFO
//  310   if( uartx->PFIFO & UART_PFIFO_RXFE_MASK )
LPLD_UART_RxFIFO_Flush:
        LDRB     R1,[R0, #+16]
        LSLS     R1,R1,#+28
        BPL.N    ??LPLD_UART_RxFIFO_Flush_0
//  311   {
//  312     uartx->CFIFO |= UART_CFIFO_RXFLUSH_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x40
        STRB     R1,[R0, #+17]
//  313   }
//  314 }
??LPLD_UART_RxFIFO_Flush_0:
        BX       LR               ;; return
//  315 
//  316 /*
//  317  * LPLD_UART_TxFIFO_Flush
//  318  * ���UART Tx FIFO
//  319  * 
//  320  * ����:
//  321  *    uartx--UARTģ���
//  322  *      |__UART0          --UART0
//  323  *      |__UART1          --UART1
//  324  *      |__UART2          --UART2
//  325  *      |__UART3          --UART3
//  326  *      |__UART4          --UART4
//  327  *      |__UART5          --UART5
//  328  *
//  329  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  330 void LPLD_UART_TxFIFO_Flush(UART_Type *uartx)
//  331 {
//  332   //��շ��� FIFO
//  333   if( uartx->PFIFO & UART_PFIFO_TXFE_MASK )
LPLD_UART_TxFIFO_Flush:
        LDRB     R1,[R0, #+16]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_UART_TxFIFO_Flush_0
//  334   {
//  335     uartx->CFIFO |= UART_CFIFO_TXFLUSH_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+17]
//  336   }
//  337 }
??LPLD_UART_TxFIFO_Flush_0:
        BX       LR               ;; return
//  338 
//  339 /*
//  340  * LPLD_UART_GetChar
//  341  * ���ڲ�ѯ��ʽ��ȡһ���ֽ�
//  342  * 
//  343  * ����:
//  344  *    uartx--UARTģ���
//  345  *      |__UART0          --UART0
//  346  *      |__UART1          --UART1
//  347  *      |__UART2          --UART2
//  348  *      |__UART3          --UART3
//  349  *      |__UART4          --UART4
//  350  *      |__UART5          --UART5
//  351  *
//  352  * ���:
//  353  *    ���ڽ��յ�1���ֽ�
//  354  *
//  355  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  356 int8 LPLD_UART_GetChar(UART_Type *uartx)
//  357 {
//  358   //�ȴ����ݽ���
//  359   while (!(uartx->S1 & UART_S1_RDRF_MASK));
LPLD_UART_GetChar:
??LPLD_UART_GetChar_0:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??LPLD_UART_GetChar_0
//  360   
//  361   //���ؽ��յ�1���ֽ�����
//  362   return uartx->D;
        LDRSB    R0,[R0, #+7]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  363 }
//  364 
//  365 /********************************************************************/
//  366 /*
//  367  * LPLD_UART_GetChar_Present
//  368  * ����Ƿ���յ��ַ�
//  369  * 
//  370  * ����:
//  371  *    uartx--UARTģ���
//  372  *      |__UART0          --UART0
//  373  *      |__UART1          --UART1
//  374  *      |__UART2          --UART2
//  375  *      |__UART3          --UART3
//  376  *      |__UART4          --UART4
//  377  *      |__UART5          --UART5
//  378  *
//  379  * ���:
//  380  *  0       û�н��յ��ַ�
//  381  *  1       �Ѿ����յ��ַ�
//  382  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 int32 LPLD_UART_GetChar_Present(UART_Type *uartx)
//  384 {
//  385     return (uartx->S1 & UART_S1_RDRF_MASK);
LPLD_UART_GetChar_Present:
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,#0x20
        BX       LR               ;; return
//  386 }
//  387 
//  388 /*
//  389  * LPLD_UART_PutChar
//  390  * ���ڲ�ѯ��ʽ����һ���ֽ�
//  391  * 
//  392  * ����:
//  393  *    uartx--UARTģ���
//  394  *      |__UART0          --UART0
//  395  *      |__UART1          --UART1
//  396  *      |__UART2          --UART2
//  397  *      |__UART3          --UART3
//  398  *      |__UART4          --UART4
//  399  *      |__UART5          --UART5
//  400  *    ch--�����͵�1���ֽ�
//  401  *
//  402  * ���:
//  403  *    ��
//  404  *
//  405  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  406 void LPLD_UART_PutChar(UART_Type *uartx, uint8 ch)
//  407 {
//  408   //�ȴ�FIFO׼������
//  409   while(!(uartx->S1 & UART_S1_TDRE_MASK));
LPLD_UART_PutChar:
??LPLD_UART_PutChar_0:
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_UART_PutChar_0
//  410     
//  411   //��Ҫ���͵�1���ֽڷ���UART���ݼĴ���
//  412   uartx->D = (uint8)ch;
        STRB     R1,[R0, #+7]
//  413 }
        BX       LR               ;; return
//  414 
//  415 
//  416 
//  417 /*
//  418  * LPLD_UART_PutCharArr
//  419  * ���ڲ�ѯ��ʽ�����ֽ�������
//  420  * 
//  421  * ����:
//  422  *    uartx--UARTģ���
//  423  *      |__UART0          --UART0
//  424  *      |__UART1          --UART1
//  425  *      |__UART2          --UART2
//  426  *      |__UART3          --UART3
//  427  *      |__UART4          --UART4
//  428  *      |__UART5          --UART5
//  429  *    *ch--�����͵��ֽ�����ͷ��ַ
//  430  *    len--�ֽ����鳤��
//  431  *
//  432  * ���:
//  433  *    ��
//  434  *
//  435  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  436 void LPLD_UART_PutCharArr(UART_Type *uartx, int8 *ch, int32 len)
//  437 {
LPLD_UART_PutCharArr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        B.N      ??LPLD_UART_PutCharArr_0
//  438   while(len--)
//  439   {
//  440     LPLD_UART_PutChar(uartx, *(ch++));
??LPLD_UART_PutCharArr_1:
        LDRB     R1,[R5, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
//  441   }
??LPLD_UART_PutCharArr_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BNE.N    ??LPLD_UART_PutCharArr_1
//  442 }
        POP      {R4-R6,PC}       ;; return
//  443 
//  444 /*
//  445  * LPLD_UART_EnableIrq
//  446  * ʹ�ܴ������ݽ����ж�
//  447  * 
//  448  * ����:
//  449  *    uart_init_structure--UART��ʼ���ṹ�壬
//  450  *                        ���嶨���UART_InitTypeDef
//  451  *
//  452  * ���:
//  453  *    ��
//  454  *
//  455  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  456 void LPLD_UART_EnableIrq(UART_InitTypeDef uart_init_structure)
//  457 {
LPLD_UART_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  458   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_0
//  459   {
//  460     enable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       NVIC_EnableIRQ
//  461     enable_irq(UART0_ERR_IRQn);
        MOVS     R0,#+46
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  462   }
//  463   else if(uart_init_structure.UART_Uartx == UART1)
??LPLD_UART_EnableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_2
//  464   {
//  465     enable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       NVIC_EnableIRQ
//  466     enable_irq(UART1_ERR_IRQn);
        MOVS     R0,#+48
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  467   }
//  468   else if(uart_init_structure.UART_Uartx == UART2)
??LPLD_UART_EnableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_3
//  469   {
//  470     enable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       NVIC_EnableIRQ
//  471     enable_irq(UART2_ERR_IRQn);
        MOVS     R0,#+50
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  472   }
//  473   else if(uart_init_structure.UART_Uartx == UART3)
??LPLD_UART_EnableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_4
//  474   {
//  475     enable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       NVIC_EnableIRQ
//  476     enable_irq(UART3_ERR_IRQn);
        MOVS     R0,#+52
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  477   }
//  478   else if(uart_init_structure.UART_Uartx == UART4)
??LPLD_UART_EnableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_5
//  479   {
//  480     enable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       NVIC_EnableIRQ
//  481     enable_irq(UART4_ERR_IRQn);
        MOVS     R0,#+54
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  482   }
//  483   else if(uart_init_structure.UART_Uartx == UART5)
??LPLD_UART_EnableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable10_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_1
//  484   {
//  485     enable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       NVIC_EnableIRQ
//  486     enable_irq(UART5_ERR_IRQn);
        MOVS     R0,#+56
        BL       NVIC_EnableIRQ
//  487   }
//  488 }
??LPLD_UART_EnableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  489 
//  490 /*
//  491  * LPLD_UART_DisableIrq
//  492  * ���ô������ݽ����ж�
//  493  * 
//  494  * ����:
//  495  *    uart_init_structure--UART��ʼ���ṹ�壬
//  496  *                        ���嶨���UART_InitTypeDef
//  497  *
//  498  * ���:
//  499  *    ��
//  500  *
//  501  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  502 void LPLD_UART_DisableIrq(UART_InitTypeDef uart_init_structure)
//  503 {
LPLD_UART_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  504   //�����ж������ʹ����Ӧ�ж�
//  505   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_0
//  506   {
//  507     disable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       NVIC_DisableIRQ
//  508     disable_irq(UART0_ERR_IRQn);
        MOVS     R0,#+46
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  509   }
//  510   else if(uart_init_structure.UART_Uartx == UART1)
??LPLD_UART_DisableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_2
//  511   {
//  512     disable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       NVIC_DisableIRQ
//  513     disable_irq(UART1_ERR_IRQn);
        MOVS     R0,#+48
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  514   }
//  515   else if(uart_init_structure.UART_Uartx == UART2)
??LPLD_UART_DisableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_3
//  516   {
//  517     disable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       NVIC_DisableIRQ
//  518     disable_irq(UART2_ERR_IRQn);
        MOVS     R0,#+50
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  519   }
//  520   else if(uart_init_structure.UART_Uartx == UART3)
??LPLD_UART_DisableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_4
//  521   {
//  522     disable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       NVIC_DisableIRQ
//  523     disable_irq(UART3_ERR_IRQn);
        MOVS     R0,#+52
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  524   }
//  525   else if(uart_init_structure.UART_Uartx == UART4)
??LPLD_UART_DisableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_5
//  526   {
//  527     disable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       NVIC_DisableIRQ
//  528     disable_irq(UART4_ERR_IRQn);
        MOVS     R0,#+54
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  529   }
//  530   else if(uart_init_structure.UART_Uartx == UART5)
??LPLD_UART_DisableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_1
//  531   {
//  532     disable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       NVIC_DisableIRQ
//  533     disable_irq(UART5_ERR_IRQn);
        MOVS     R0,#+56
        BL       NVIC_DisableIRQ
//  534   }
//  535 }
??LPLD_UART_DisableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  536 
//  537 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  538 void UART0_IRQHandler(void)
//  539 {
UART0_IRQHandler:
        PUSH     {R7,LR}
//  540 #if (UCOS_II > 0u)
//  541   OS_CPU_SR  cpu_sr = 0u;
//  542   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  543   OSIntEnter();
//  544   OS_EXIT_CRITICAL();
//  545 #endif
//  546   //�ж�Rx FIFO�Ƿ� Under flow
//  547   if( UART0->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_40  ;; 0x4006a012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART0_IRQHandler_0
//  548   {
//  549     UART0->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_40  ;; 0x4006a012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_40  ;; 0x4006a012
        STRB     R0,[R1, #+0]
//  550   }
//  551   //�ж�Tx FIFO�Ƿ� Over flow
//  552   if( UART0->SFIFO & UART_SFIFO_TXOF_MASK)
??UART0_IRQHandler_0:
        LDR.N    R0,??DataTable10_40  ;; 0x4006a012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART0_IRQHandler_1
//  553   {
//  554     UART0->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_40  ;; 0x4006a012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_40  ;; 0x4006a012
        STRB     R0,[R1, #+0]
//  555   }
//  556   //��������жϺ���
//  557   if((UART0->S1 & UART_S1_RDRF_MASK) && (UART0->C2 & UART_C2_RIE_MASK))
??UART0_IRQHandler_1:
        LDR.N    R0,??DataTable10_41  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_2
        LDR.N    R0,??DataTable10_42  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_2
//  558   {
//  559     UART_R_ISR[0]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+0]
        BLX      R0
//  560   }
//  561   //���뷢���жϺ���
//  562   if((UART0->S1 & UART_S1_TDRE_MASK) && (UART0->C2 & UART_C2_TIE_MASK))
??UART0_IRQHandler_2:
        LDR.N    R0,??DataTable10_41  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_3
        LDR.N    R0,??DataTable10_42  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_3
//  563   {
//  564     UART_T_ISR[0]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+0]
        BLX      R0
//  565   }
//  566   
//  567 #if (UCOS_II > 0u)
//  568   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  569 #endif
//  570 }
??UART0_IRQHandler_3:
        POP      {R0,PC}          ;; return
//  571 
//  572 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  573 void UART1_IRQHandler(void)
//  574 {
UART1_IRQHandler:
        PUSH     {R7,LR}
//  575 #if (UCOS_II > 0u)
//  576   OS_CPU_SR  cpu_sr = 0u;
//  577   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  578   OSIntEnter();
//  579   OS_EXIT_CRITICAL();
//  580 #endif
//  581   //�ж�Rx FIFO�Ƿ� Under flow
//  582   if( UART1->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_43  ;; 0x4006b012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART1_IRQHandler_0
//  583   {
//  584     UART1->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_43  ;; 0x4006b012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_43  ;; 0x4006b012
        STRB     R0,[R1, #+0]
//  585   }
//  586   //�ж�Tx FIFO�Ƿ� Over flow
//  587   if( UART1->SFIFO & UART_SFIFO_TXOF_MASK)
??UART1_IRQHandler_0:
        LDR.N    R0,??DataTable10_43  ;; 0x4006b012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART1_IRQHandler_1
//  588   {
//  589     UART1->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_43  ;; 0x4006b012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_43  ;; 0x4006b012
        STRB     R0,[R1, #+0]
//  590   }  
//  591   //��������жϺ���
//  592   if((UART1->S1 & UART_S1_RDRF_MASK) && (UART1->C2 & UART_C2_RIE_MASK))
??UART1_IRQHandler_1:
        LDR.N    R0,??DataTable10_44  ;; 0x4006b004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_2
        LDR.N    R0,??DataTable10_45  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_2
//  593   {
//  594     UART_R_ISR[1]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+4]
        BLX      R0
//  595   }
//  596   //���뷢���жϺ���
//  597   if((UART1->S1 & UART_S1_TDRE_MASK) && (UART1->C2 & UART_C2_TIE_MASK))
??UART1_IRQHandler_2:
        LDR.N    R0,??DataTable10_44  ;; 0x4006b004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_3
        LDR.N    R0,??DataTable10_45  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_3
//  598   {
//  599     UART_T_ISR[1]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+4]
        BLX      R0
//  600   }
//  601   
//  602 #if (UCOS_II > 0u)
//  603   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  604 #endif
//  605 }
??UART1_IRQHandler_3:
        POP      {R0,PC}          ;; return
//  606 
//  607 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  608 void UART2_IRQHandler(void)
//  609 {
UART2_IRQHandler:
        PUSH     {R7,LR}
//  610 #if (UCOS_II > 0u)
//  611   OS_CPU_SR  cpu_sr = 0u;
//  612   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  613   OSIntEnter();
//  614   OS_EXIT_CRITICAL();
//  615 #endif
//  616   //�ж�Rx FIFO�Ƿ� Under flow
//  617   if( UART2->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_46  ;; 0x4006c012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART2_IRQHandler_0
//  618   {
//  619     UART2->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_46  ;; 0x4006c012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_46  ;; 0x4006c012
        STRB     R0,[R1, #+0]
//  620   }
//  621   //�ж�Tx FIFO�Ƿ� Over flow
//  622   if( UART2->SFIFO & UART_SFIFO_TXOF_MASK)
??UART2_IRQHandler_0:
        LDR.N    R0,??DataTable10_46  ;; 0x4006c012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART2_IRQHandler_1
//  623   {
//  624     UART2->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_46  ;; 0x4006c012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_46  ;; 0x4006c012
        STRB     R0,[R1, #+0]
//  625   }    
//  626   //��������жϺ���
//  627   if((UART2->S1 & UART_S1_RDRF_MASK) && (UART2->C2 & UART_C2_RIE_MASK))
??UART2_IRQHandler_1:
        LDR.N    R0,??DataTable10_47  ;; 0x4006c004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_2
        LDR.N    R0,??DataTable10_48  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_2
//  628   {
//  629     UART_R_ISR[2]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+8]
        BLX      R0
//  630   }
//  631   //���뷢���жϺ���
//  632   if((UART2->S1 & UART_S1_TDRE_MASK) && (UART2->C2 & UART_C2_TIE_MASK))
??UART2_IRQHandler_2:
        LDR.N    R0,??DataTable10_47  ;; 0x4006c004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_3
        LDR.N    R0,??DataTable10_48  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_3
//  633   {
//  634     UART_T_ISR[2]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+8]
        BLX      R0
//  635   }
//  636   
//  637 #if (UCOS_II > 0u)
//  638   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  639 #endif
//  640 }
??UART2_IRQHandler_3:
        POP      {R0,PC}          ;; return
//  641 
//  642 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  643 void UART3_IRQHandler(void)
//  644 {
UART3_IRQHandler:
        PUSH     {R7,LR}
//  645 #if (UCOS_II > 0u)
//  646   OS_CPU_SR  cpu_sr = 0u;
//  647   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  648   OSIntEnter();
//  649   OS_EXIT_CRITICAL();
//  650 #endif
//  651   //�ж�Rx FIFO�Ƿ� Under flow
//  652   if( UART3->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_49  ;; 0x4006d012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART3_IRQHandler_0
//  653   {
//  654     UART3->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_49  ;; 0x4006d012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_49  ;; 0x4006d012
        STRB     R0,[R1, #+0]
//  655   }
//  656   //�ж�Tx FIFO�Ƿ� Over flow
//  657   if( UART3->SFIFO & UART_SFIFO_TXOF_MASK)
??UART3_IRQHandler_0:
        LDR.N    R0,??DataTable10_49  ;; 0x4006d012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART3_IRQHandler_1
//  658   {
//  659     UART3->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_49  ;; 0x4006d012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_49  ;; 0x4006d012
        STRB     R0,[R1, #+0]
//  660   }   
//  661   //��������жϺ���
//  662   if((UART3->S1 & UART_S1_RDRF_MASK) && (UART3->C2 & UART_C2_RIE_MASK))
??UART3_IRQHandler_1:
        LDR.N    R0,??DataTable10_50  ;; 0x4006d004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_2
        LDR.N    R0,??DataTable10_51  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_2
//  663   {
//  664     UART_R_ISR[3]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+12]
        BLX      R0
//  665   }
//  666   //���뷢���жϺ���
//  667   if((UART3->S1 & UART_S1_TDRE_MASK) && (UART3->C2 & UART_C2_TIE_MASK))
??UART3_IRQHandler_2:
        LDR.N    R0,??DataTable10_50  ;; 0x4006d004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_3
        LDR.N    R0,??DataTable10_51  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_3
//  668   {
//  669     UART_T_ISR[3]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+12]
        BLX      R0
//  670   }
//  671   
//  672 #if (UCOS_II > 0u)
//  673   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  674 #endif
//  675 }
??UART3_IRQHandler_3:
        POP      {R0,PC}          ;; return
//  676 
//  677 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  678 void UART4_IRQHandler(void)
//  679 {
UART4_IRQHandler:
        PUSH     {R7,LR}
//  680 #if (UCOS_II > 0u)
//  681   OS_CPU_SR  cpu_sr = 0u;
//  682   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  683   OSIntEnter();
//  684   OS_EXIT_CRITICAL();
//  685 #endif
//  686   //�ж�Rx FIFO�Ƿ� Under flow
//  687   if( UART4->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_52  ;; 0x400ea012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART4_IRQHandler_0
//  688   {
//  689     UART4->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_52  ;; 0x400ea012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_52  ;; 0x400ea012
        STRB     R0,[R1, #+0]
//  690   }
//  691   //�ж�Tx FIFO�Ƿ� Over flow
//  692   if( UART4->SFIFO & UART_SFIFO_TXOF_MASK)
??UART4_IRQHandler_0:
        LDR.N    R0,??DataTable10_52  ;; 0x400ea012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART4_IRQHandler_1
//  693   {
//  694     UART4->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_52  ;; 0x400ea012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_52  ;; 0x400ea012
        STRB     R0,[R1, #+0]
//  695   }  
//  696   //��������жϺ���
//  697   if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
??UART4_IRQHandler_1:
        LDR.N    R0,??DataTable10_53  ;; 0x400ea004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_2
        LDR.N    R0,??DataTable10_54  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_2
//  698   {
//  699     UART_R_ISR[4]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+16]
        BLX      R0
//  700   }
//  701   //���뷢���жϺ���
//  702   if((UART4->S1 & UART_S1_TDRE_MASK) && (UART4->C2 & UART_C2_TIE_MASK))
??UART4_IRQHandler_2:
        LDR.N    R0,??DataTable10_53  ;; 0x400ea004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_3
        LDR.N    R0,??DataTable10_54  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_3
//  703   {
//  704     UART_T_ISR[4]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+16]
        BLX      R0
//  705   }
//  706   
//  707 #if (UCOS_II > 0u)
//  708   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  709 #endif
//  710 }
??UART4_IRQHandler_3:
        POP      {R0,PC}          ;; return
//  711 
//  712 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  713 void UART5_IRQHandler(void)
//  714 {
UART5_IRQHandler:
        PUSH     {R7,LR}
//  715 #if (UCOS_II > 0u)
//  716   OS_CPU_SR  cpu_sr = 0u;
//  717   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  718   OSIntEnter();
//  719   OS_EXIT_CRITICAL();
//  720 #endif
//  721   //�ж�Rx FIFO�Ƿ� Under flow
//  722   if( UART5->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable10_55  ;; 0x400eb012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART5_IRQHandler_0
//  723   {
//  724     UART5->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDR.N    R0,??DataTable10_55  ;; 0x400eb012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_55  ;; 0x400eb012
        STRB     R0,[R1, #+0]
//  725   }
//  726   //�ж�Tx FIFO�Ƿ� Over flow
//  727   if( UART5->SFIFO & UART_SFIFO_TXOF_MASK)
??UART5_IRQHandler_0:
        LDR.N    R0,??DataTable10_55  ;; 0x400eb012
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??UART5_IRQHandler_1
//  728   {
//  729     UART5->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDR.N    R0,??DataTable10_55  ;; 0x400eb012
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_55  ;; 0x400eb012
        STRB     R0,[R1, #+0]
//  730   }   
//  731   //��������жϺ���
//  732   if((UART5->S1 & UART_S1_RDRF_MASK) && (UART5->C2 & UART_C2_RIE_MASK))
??UART5_IRQHandler_1:
        LDR.N    R0,??DataTable10_56  ;; 0x400eb004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_2
        LDR.N    R0,??DataTable10_57  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_2
//  733   {
//  734     UART_R_ISR[5]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+20]
        BLX      R0
//  735   }
//  736   //���뷢���жϺ���
//  737   if((UART5->S1 & UART_S1_TDRE_MASK) && (UART5->C2 & UART_C2_TIE_MASK))
??UART5_IRQHandler_2:
        LDR.N    R0,??DataTable10_56  ;; 0x400eb004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_3
        LDR.N    R0,??DataTable10_57  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_3
//  738   {
//  739     UART_T_ISR[5]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+20]
        BLX      R0
//  740   }
//  741   
//  742 #if (UCOS_II > 0u)
//  743   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  744 #endif
//  745 }
??UART5_IRQHandler_3:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DC32     0x4004b03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DC32     0x4004b038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_38:
        DC32     UART_R_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_39:
        DC32     UART_T_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_40:
        DC32     0x4006a012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_41:
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_42:
        DC32     0x4006a003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_43:
        DC32     0x4006b012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_44:
        DC32     0x4006b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_45:
        DC32     0x4006b003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_46:
        DC32     0x4006c012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_47:
        DC32     0x4006c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_48:
        DC32     0x4006c003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_49:
        DC32     0x4006d012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_50:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_51:
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_52:
        DC32     0x400ea012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_53:
        DC32     0x400ea004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_54:
        DC32     0x400ea003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_55:
        DC32     0x400eb012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_56:
        DC32     0x400eb004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_57:
        DC32     0x400eb003
//  746 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  747 void UART0_ERR_IRQHandler(void)
//  748 {
//  749 }
UART0_ERR_IRQHandler:
        BX       LR               ;; return
//  750 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  751 void UART1_ERR_IRQHandler(void)
//  752 {
//  753 }
UART1_ERR_IRQHandler:
        BX       LR               ;; return
//  754 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  755 void UART2_ERR_IRQHandler(void)
//  756 {
//  757 }
UART2_ERR_IRQHandler:
        BX       LR               ;; return
//  758 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  759 void UART3_ERR_IRQHandler(void)
//  760 {
//  761 }
UART3_ERR_IRQHandler:
        BX       LR               ;; return
//  762 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  763 void UART4_ERR_IRQHandler(void)
//  764 {
//  765 }
UART4_ERR_IRQHandler:
        BX       LR               ;; return
//  766 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  767 void UART5_ERR_IRQHandler(void)
//  768 {
//  769 }
UART5_ERR_IRQHandler:
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
//  770 
// 
//    48 bytes in section .bss
// 2 244 bytes in section .text
// 
// 2 244 bytes of CODE memory
//    48 bytes of DATA memory
//
//Errors: none
//Warnings: none
