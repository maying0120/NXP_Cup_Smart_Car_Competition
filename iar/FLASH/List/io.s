///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       18/Jun/2017  15:06:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\��˼����\LPLD_OSKinetis_V3\lib\common\io.c
//    Command line =  
//        E:\��˼����\LPLD_OSKinetis_V3\lib\common\io.c -D LPLD_K60 -D
//        USE_K60F12 -lCN
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\FLASH\List\
//        -lB
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\FLASH\List\
//        -o
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "D:\�½��ļ���
//        (���)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\app\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\CPU\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\common\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\LPLD\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\LPLD\HW\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\FatFs\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\FatFs\option\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\USB\common\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\USB\driver\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\USB\descriptor\
//        -I
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\..\..\..\lib\USB\class\
//        -Ol -I "D:\�½��ļ��� (���)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        E:\��˼����\LPLD_OSKinetis_V3\project\chase_after0615����������+��������+ֱ������get������\iar\FLASH\List\io.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_GetChar_Present
        EXTERN LPLD_UART_PutChar

        PUBLIC char_present
        PUBLIC in_char
        PUBLIC out_char

// E:\��˼����\LPLD_OSKinetis_V3\lib\common\io.c
//    1 /**
//    2  * @file io.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-11-4
//    5  * @brief ��������/�������
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * TERMINAL_PORTΪ���ںţ����û����̵�k60_card.h�ж���
//   10  *
//   11  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   12  * http://www.lpld.cn
//   13  * mail:support@lpld.cn
//   14  *
//   15  * @par
//   16  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   17  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   18  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   19  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   20  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   21  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   22  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   23  */
//   24 
//   25 #include "common.h"
//   26 #include "HW_UART.h"
//   27 
//   28 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int8 in_char (void)
//   30 {
in_char:
        PUSH     {R7,LR}
//   31 	return LPLD_UART_GetChar(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar
        POP      {R1,PC}          ;; return
//   32 }
//   33 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void out_char (int8 ch)
//   35 {
out_char:
        PUSH     {R7,LR}
//   36 	LPLD_UART_PutChar(TERM_PORT, ch);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_PutChar
//   37 }
        POP      {R0,PC}          ;; return
//   38 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 int32 char_present (void)
//   40 {
char_present:
        PUSH     {R7,LR}
//   41 	return LPLD_UART_GetChar_Present(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar_Present
        POP      {R1,PC}          ;; return
//   42 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400eb000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   43 /********************************************************************/
// 
// 38 bytes in section .text
// 
// 38 bytes of CODE memory
//
//Errors: none
//Warnings: none
