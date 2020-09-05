///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Bluetooth.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Bluetooth.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\Bluetooth.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_PutChar

        PUBLIC Bluetooth
        PUBLIC FreeCarsDataNum
        PUBLIC produceScopeData
        PUBLIC `push`
        PUBLIC sendDataToScope
        PUBLIC uSendBuf

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\Bluetooth.c
//    1 #include "Includes.h"
//    2 
//    3 #define UartDataNum  17	     
//    4 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 uint8   uSendBuf[UartDataNum*2]={0};
uSendBuf:
        DS8 36

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    6 uint8   FreeCarsDataNum=UartDataNum*2;
FreeCarsDataNum:
        DATA
        DC8 34
//    7 void    push(uint8 chanel,uint16 data);
//    8 void    produceScopeData(void);
//    9 void    sendDataToScope(void);
//   10 
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void  Bluetooth()
//   13 {
Bluetooth:
        PUSH     {R7,LR}
//   14     produceScopeData();  //将数据储存于缓存数组 
        BL       produceScopeData
//   15     sendDataToScope();	 //发送参数到上位机
        BL       sendDataToScope
//   16 }
        POP      {R0,PC}          ;; return
//   17 
//   18 //push()函数第一个形参表示通道号，第二个新参表示所需发送的数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void push(uint8 chanel,uint16 data)
//   20 {
//   21     uSendBuf[chanel*2]=data/256;
`push`:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0, LSL #+1]
//   22     uSendBuf[chanel*2+1]=data%256;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LDR.N    R1,??DataTable1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+1
        STRB     R3,[R0, #+1]
//   23 }
        BX       LR               ;; return
//   24 
//   25 //通过函数push将所需发送的数据放到数组uSendBuf[]内储存，数组uSendBuf[]用于数据缓冲。

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void produceScopeData(void)
//   27 {
produceScopeData:
        PUSH     {R7,LR}
//   28     push(0,10);
        MOVS     R1,#+10
        MOVS     R0,#+0
        BL       `push`
//   29     push(1,10);
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       `push`
//   30     push(2,10);  
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       `push`
//   31     push(3,10);
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       `push`
//   32     push(4,10);
        MOVS     R1,#+10
        MOVS     R0,#+4
        BL       `push`
//   33     push(5,10);
        MOVS     R1,#+10
        MOVS     R0,#+5
        BL       `push`
//   34     push(6,10);
        MOVS     R1,#+10
        MOVS     R0,#+6
        BL       `push`
//   35     push(7,1);
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       `push`
//   36     push(8,1);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       `push`
//   37     push(9,1);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       `push`
//   38     push(10,1);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       `push`
//   39     push(11,0);
        MOVS     R1,#+0
        MOVS     R0,#+11
        BL       `push`
//   40     push(12,0);
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       `push`
//   41     push(13,0);
        MOVS     R1,#+0
        MOVS     R0,#+13
        BL       `push`
//   42     push(14,0);
        MOVS     R1,#+0
        MOVS     R0,#+14
        BL       `push`
//   43     push(15,0);
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       `push`
//   44     push(16,0);
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       `push`
//   45 }	 
        POP      {R0,PC}          ;; return
//   46 
//   47  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void sendDataToScope(void)
//   49 {
sendDataToScope:
        PUSH     {R3-R5,LR}
//   50   uint8 i,sum=0; 
        MOVS     R5,#+0
//   51   //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
//   52   LPLD_UART_PutChar(UART3, 251);
        MOVS     R1,#+251
        LDR.N    R0,??DataTable1_1  ;; 0x4006d000
        BL       LPLD_UART_PutChar
//   53   LPLD_UART_PutChar(UART3, 109);
        MOVS     R1,#+109
        LDR.N    R0,??DataTable1_1  ;; 0x4006d000
        BL       LPLD_UART_PutChar
//   54   LPLD_UART_PutChar(UART3, 37);
        MOVS     R1,#+37
        LDR.N    R0,??DataTable1_1  ;; 0x4006d000
        BL       LPLD_UART_PutChar
//   55       
//   56   sum+=(251);                   
        SUBS     R5,R5,#+5
//   57   sum+=(109);
        ADDS     R5,R5,#+109
//   58   sum+=(37);
        ADDS     R5,R5,#+37
//   59   for(i=0;i<FreeCarsDataNum;i++)
        MOVS     R4,#+0
        B.N      ??sendDataToScope_0
//   60     {
//   61       LPLD_UART_PutChar(UART3, uSendBuf[i]);
??sendDataToScope_1:
        LDR.N    R0,??DataTable1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable1_1  ;; 0x4006d000
        BL       LPLD_UART_PutChar
//   62       sum+=uSendBuf[i];          //全部数据加入校验
        LDR.N    R0,??DataTable1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//   63     }
        ADDS     R4,R4,#+1
??sendDataToScope_0:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCC.N    ??sendDataToScope_1
//   64   LPLD_UART_PutChar(UART3, sum);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1_1  ;; 0x4006d000
        BL       LPLD_UART_PutChar
//   65 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     uSendBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     FreeCarsDataNum

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
//  36 bytes in section .bss
//   1 byte  in section .data
// 290 bytes in section .text
// 
// 290 bytes of CODE memory
//  37 bytes of DATA memory
//
//Errors: none
//Warnings: none
