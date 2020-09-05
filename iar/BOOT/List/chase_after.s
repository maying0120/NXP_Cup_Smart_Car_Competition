///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  17:00:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\app\chase_after.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\app\chase_after.c"
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
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\iar\BOOT\List\chase_after.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DialSwitch_init
        EXTERN HardwareInit
        EXTERN LPLD_GPIO_Input_b
        EXTERN SendData
        EXTERN Set_SensorPara

        PUBLIC Ahead_Or_Behind
        PUBLIC Family_Status
        PUBLIC Turn_Around
        PUBLIC ab
        PUBLIC main

// C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after�ϲ�����(0228)\app\chase_after.c
//    1 /**
//    2  * --------------����"��������K60�ײ��V3"�Ĺ��̣�DC_Smartcar��-----------------
//    3  * @file DC_Smartcar.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief ���ڸù��̵�����
//    7  *
//    8  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * �����̻���"��������K60�ײ��V3"������
//   14  * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
//   15  * �����û������豣����"project"�ļ����£��Թ����������ļ�������
//   16  * �ײ��ʹ�÷���������ĵ��� 
//   17  *
//   18  */
//   19 #include "Includes.h"
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   21 uint8 Turn_Around = 0;   //ǰ��Ϊ0����Ϊ1
Turn_Around:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   22 uint8 Family_Status = 0;   //�ϴ�Ϊ0���϶�Ϊ1
Family_Status:
        DS8 1
//   23 extern int Count;
//   24 void Ahead_Or_Behind(void); 
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 int ab = 0;
ab:
        DS8 4
//   27 //���������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void main (void)
//   29 {
main:
        PUSH     {R7,LR}
//   30   DisableInterrupts; 
        CPSID    I
//   31   
//   32   //����ǰ��ѡ�񣬲���1��OFFΪ0--ǰ����ONΪ1--��
//   33   Ahead_Or_Behind();  
        BL       Ahead_Or_Behind
//   34   //ģ���ʼ��
//   35   HardwareInit(); 
        BL       HardwareInit
//   36   //�������� 
//   37   Set_SensorPara();  
        BL       Set_SensorPara
//   38   
//   39   EnableInterrupts;
        CPSIE    I
//   40     
//   41   while(1)
//   42    {
//   43      SendData();
??main_0:
        BL       SendData
        B.N      ??main_0
//   44    } 
//   45 }
//   46 
//   47 
//   48 //�ϴ��϶�ѡ�񣬲���1: OFFΪ1--�϶���ONΪ0--�ϴ�
//   49 //ǰ��ѡ��  ����2��OFFΪ1--�󳵣�ONΪ0--ǰ��

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void Ahead_Or_Behind()
//   51 {
Ahead_Or_Behind:
        PUSH     {R7,LR}
//   52   DialSwitch_init();
        BL       DialSwitch_init
//   53   Family_Status = 1 - LPLD_GPIO_Input_b(PTD, 7);  
        MOVS     R1,#+7
        LDR.N    R0,??DataTable0  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable0_1
        STRB     R0,[R1, #+0]
//   54   Turn_Around   = 1 - LPLD_GPIO_Input_b(PTD, 6);
        MOVS     R1,#+6
        LDR.N    R0,??DataTable0  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable0_2
        STRB     R0,[R1, #+0]
//   55 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     Family_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     Turn_Around

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   56 
//   57 
// 
//  6 bytes in section .bss
// 76 bytes in section .text
// 
// 76 bytes of CODE memory
//  6 bytes of DATA memory
//
//Errors: none
//Warnings: none
