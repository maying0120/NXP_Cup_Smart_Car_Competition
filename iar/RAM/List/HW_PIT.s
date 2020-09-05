///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  01:25:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_PIT.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_PIT.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -lB
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\
//        -o
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=VFPv4_sp --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\HW_PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC LPLD_PIT_Deinit
        PUBLIC LPLD_PIT_DisableIrq
        PUBLIC LPLD_PIT_EnableIrq
        PUBLIC LPLD_PIT_Init
        PUBLIC PIT0_IRQHandler
        PUBLIC PIT1_IRQHandler
        PUBLIC PIT2_IRQHandler
        PUBLIC PIT3_IRQHandler
        PUBLIC PIT_ISR

// C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_PIT.c
//    1 /**
//    2  * @file HW_PIT.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PIT�ײ�ģ����غ���
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
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
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
        LDR.N    R2,??DataTable9  ;; 0xe000e100
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
        LDR.N    R2,??DataTable9_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_PIT.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 PIT_ISR_CALLBACK PIT_ISR[4];
PIT_ISR:
        DS8 16
//   27 
//   28 /*
//   29  * LPLD_PIT_Init
//   30  * PITͨ�ó�ʼ��������ѡ��PITx�������ж����ڡ��жϺ���
//   31  * 
//   32  * ����:
//   33  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   34  *                        ���嶨���PIT_InitTypeDef
//   35  *
//   36  * ���:
//   37  *    0--���ô���
//   38  *    1--���óɹ�
//   39  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 uint8 LPLD_PIT_Init(PIT_InitTypeDef pit_init_structure)
//   41 { 
LPLD_PIT_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R6,LR}
//   42   //���㶨ʱ����ֵ
//   43   uint32 ldval = pit_init_structure.PIT_PeriodUs*(g_bus_clock/1000000)
//   44                + pit_init_structure.PIT_PeriodMs*1000*(g_bus_clock/1000000)
//   45                + pit_init_structure.PIT_PeriodS*1000000*(g_bus_clock/1000000);
        LDR      R0,[SP, #+20]
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable9_3  ;; 0xf4240
        UDIV     R1,R1,R2
        LDR      R2,[SP, #+24]
        LDR.N    R3,??DataTable9_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable9_3  ;; 0xf4240
        UDIV     R3,R3,R4
        MULS     R2,R3,R2
        MOV      R3,#+1000
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR      R1,[SP, #+28]
        LDR.N    R2,??DataTable9_2
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable9_3  ;; 0xf4240
        UDIV     R2,R2,R3
        MULS     R1,R2,R1
        LDR.N    R2,??DataTable9_3  ;; 0xf4240
        MLA      R4,R2,R1,R0
//   46   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R5,[SP, #+16]
//   47   PIT_ISR_CALLBACK isr_func = pit_init_structure.PIT_Isr;
        LDR      R6,[SP, #+32]
//   48   
//   49   //�������
//   50   ASSERT( pitx <= PIT3);        //�ж�ģ���
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BLT.N    ??LPLD_PIT_Init_0
        MOVS     R1,#+50
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   51   ASSERT( ldval > 0);           //�ж�ʱ����ֵ                
??LPLD_PIT_Init_0:
        CMP      R4,#+0
        BNE.N    ??LPLD_PIT_Init_1
        MOVS     R1,#+51
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   52   
//   53   //������ʱģ��ʱ��
//   54   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
??LPLD_PIT_Init_1:
        LDR.N    R0,??DataTable9_5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable9_5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   55   
//   56   // ���� PIT
//   57   PIT->MCR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_6  ;; 0x40037000
        STR      R0,[R1, #+0]
//   58  
//   59   if(isr_func != NULL){
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??LPLD_PIT_Init_2
//   60     PIT_ISR[pitx] = isr_func;
        LDR.N    R0,??DataTable9_7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R6,[R0, R5, LSL #+2]
//   61     //ʹ���ж�
//   62     PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R1,R5, LSL #+4
        STR      R0,[R1, #+8]
//   63     //��NVIC��ʹ��PIT�ж�
//   64     enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
        ADDS     R0,R5,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//   65   }
//   66   
//   67   //period = (period_ns/bus_period_ns)-1
//   68   PIT->CHANNEL[pitx].LDVAL = ldval-1;
??LPLD_PIT_Init_2:
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        STR      R0,[R2, R1]
//   69   //ʹ���ж�
//   70   //PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
//   71   //��ʼ��ʱ
//   72   PIT->CHANNEL[pitx].TCTRL |= PIT_TCTRL_TEN_MASK;
        LDR.N    R0,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R0,R5, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R1,R5, LSL #+4
        STR      R0,[R1, #+8]
//   73   
//   74   return 1;
        MOVS     R0,#+1
        POP      {R4-R6}
        LDR      PC,[SP], #+20    ;; return
//   75 }
//   76 
//   77 /*
//   78  * LPLD_PIT_Deinit
//   79  * PIT����ʼ���������ر�ѡ���PITx
//   80  * 
//   81  * ����:
//   82  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   83  *                        ���嶨���PIT_InitTypeDef
//   84  *
//   85  * ���:
//   86  *    ��
//   87  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void LPLD_PIT_Deinit(PIT_InitTypeDef pit_init_structure)
//   89 { 
LPLD_PIT_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//   90   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//   91   
//   92   //�������
//   93   ASSERT( pitx <= PIT3);        //�ж�ģ���              
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??LPLD_PIT_Deinit_0
        MOVS     R1,#+93
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   94 
//   95   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
??LPLD_PIT_Deinit_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//   96 
//   97   //�����ж�\ֹͣ��ʱ
//   98   PIT->CHANNEL[pitx].TCTRL = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   99 }
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  100 
//  101 /*
//  102  * LPLD_PIT_EnableIrq
//  103  * ʹ��PITx�ж�
//  104  * 
//  105  * ����:
//  106  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  107  *                        ���嶨���PIT_InitTypeDef
//  108  *
//  109  * ���:
//  110  *    ��
//  111  *
//  112  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void LPLD_PIT_EnableIrq(PIT_InitTypeDef pit_init_structure)
//  114 {
LPLD_PIT_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  115   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//  116   
//  117   //�������
//  118   ASSERT( pitx <= PIT3);                //�ж�PITx
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??LPLD_PIT_EnableIrq_0
        MOVS     R1,#+118
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//  119 
//  120   enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
??LPLD_PIT_EnableIrq_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  121 }
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  122 
//  123 /*
//  124  * LPLD_PIT_DisableIrq
//  125  * ����PITx�ж�
//  126  * 
//  127  * ����:
//  128  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  129  *                        ���嶨���PIT_InitTypeDef
//  130  *
//  131  * ���:
//  132  *    ��
//  133  *
//  134  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void LPLD_PIT_DisableIrq(PIT_InitTypeDef pit_init_structure)
//  136 {
LPLD_PIT_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  137   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//  138   
//  139   //�������
//  140   ASSERT( pitx <= PIT3);                //�ж�PITx
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??LPLD_PIT_DisableIrq_0
        MOVS     R1,#+140
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//  141   
//  142   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx));
??LPLD_PIT_DisableIrq_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  143 }
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  144 
//  145 
//  146 /*
//  147  * PIT0--PIT3�жϴ�������
//  148  * �������ļ�startup_K60.s�е��ж�����������
//  149  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  150  */
//  151 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 void PIT0_IRQHandler(void)
//  153 {
PIT0_IRQHandler:
        PUSH     {R7,LR}
//  154 #if (UCOS_II > 0u)
//  155   OS_CPU_SR  cpu_sr = 0u;
//  156   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  157   OSIntEnter();
//  158   OS_EXIT_CRITICAL();
//  159 #endif
//  160 
//  161  
//  162   //�����û��Զ����жϷ���
//  163   PIT_ISR[0](); 
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  164     //����жϱ�־λ
//  165   PIT->CHANNEL[0].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_9  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_9  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  166  
//  167   
//  168 #if (UCOS_II > 0u)
//  169   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  170 #endif
//  171 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void PIT1_IRQHandler(void)
//  173 {
PIT1_IRQHandler:
        PUSH     {R7,LR}
//  174 #if (UCOS_II > 0u)
//  175   OS_CPU_SR  cpu_sr = 0u;
//  176   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  177   OSIntEnter();
//  178   OS_EXIT_CRITICAL();
//  179 #endif
//  180   
//  181   //�����û��Զ����жϷ���
//  182   PIT_ISR[1]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+4]
        BLX      R0
//  183   //����жϱ�־λ
//  184   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_10  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_10  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  185   
//  186 #if (UCOS_II > 0u)
//  187   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  188 #endif
//  189 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 void PIT2_IRQHandler(void)
//  191 {
PIT2_IRQHandler:
        PUSH     {R7,LR}
//  192 #if (UCOS_II > 0u)
//  193   OS_CPU_SR  cpu_sr = 0u;
//  194   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  195   OSIntEnter();
//  196   OS_EXIT_CRITICAL();
//  197 #endif
//  198   
//  199   //�����û��Զ����жϷ���
//  200   PIT_ISR[2]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+8]
        BLX      R0
//  201   //����жϱ�־λ
//  202   PIT->CHANNEL[2].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_11  ;; 0x4003712c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_11  ;; 0x4003712c
        STR      R0,[R1, #+0]
//  203   
//  204 #if (UCOS_II > 0u)
//  205   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  206 #endif
//  207 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void PIT3_IRQHandler(void)
//  209 {
PIT3_IRQHandler:
        PUSH     {R7,LR}
//  210 #if (UCOS_II > 0u)
//  211   OS_CPU_SR  cpu_sr = 0u;
//  212   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  213   OSIntEnter();
//  214   OS_EXIT_CRITICAL();
//  215 #endif
//  216   
//  217   //�����û��Զ����жϷ���
//  218   PIT_ISR[3]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+12]
        BLX      R0
//  219   //����жϱ�־λ
//  220   PIT->CHANNEL[3].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_12  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_12  ;; 0x4003713c
        STR      R0,[R1, #+0]
//  221   
//  222 #if (UCOS_II > 0u)
//  223   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  224 #endif
//  225 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     PIT_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x4003712c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x4003713c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 6CH, 65H, 6EH, 6FH, 76H, 6FH, 5CH
        DC8 44H, 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH
        DC8 31H, 37H, 0D6H, 0C7H, 0C4H, 0DCH, 0B3H, 0B5H
        DC8 0CAH, 0A1H, 0C8H, 0FCH, 5CH, 4CH, 50H, 4CH
        DC8 44H, 5FH, 4FH, 53H, 4BH, 69H, 6EH, 65H
        DC8 74H, 69H, 73H, 5FH, 56H, 33H, 5CH, 6CH
        DC8 69H, 62H, 5CH, 4CH, 50H, 4CH, 44H, 5CH
        DC8 48H, 57H, 5CH, 48H, 57H, 5FH, 50H, 49H
        DC8 54H, 2EH, 63H, 0

        END
// 
//  16 bytes in section .bss
//  76 bytes in section .rodata
// 494 bytes in section .text
// 
// 494 bytes of CODE  memory
//  76 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none