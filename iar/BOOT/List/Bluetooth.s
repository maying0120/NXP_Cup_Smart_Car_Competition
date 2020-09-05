///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  22:00:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Bluetooth.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Bluetooth.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\Bluetooth.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Admit_Dis_EnterIsland
        EXTERN Chase_Distance
        EXTERN Count
        EXTERN Distance
        EXTERN Flag_Island
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Island_Turn
        EXTERN Flag_Out
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_PutChar
        EXTERN Spd
        EXTERN Turn_Around
        EXTERN peak
        EXTERN peak2
        EXTERN trend

        PUBLIC Count_Last
        PUBLIC Data_Receive
        PUBLIC Flag_Island_Another
        PUBLIC RecData
        PUBLIC Receive_From_Ahead
        PUBLIC Receive_From_Behind
        PUBLIC SendData
        PUBLIC SendData_To_PC
        PUBLIC Send_To_Ahead
        PUBLIC Send_To_Behind
        PUBLIC TransDataNum
        PUBLIC n
        PUBLIC produceScopeData
        PUBLIC `push`
        PUBLIC sendDataToScope
        PUBLIC trend_Another
        PUBLIC uSendBuf

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\Bluetooth.c
//    1 #include "Includes.h"
//    2 
//    3 #define UartDataNum  17	
//    4 #define FreeCarsDataNum (UartDataNum*2)
//    5 #define TransDataNum_limit 2
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 int Count_Last = 0;
Count_Last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 int TransDataNum = 0;
TransDataNum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 uint8 uSendBuf[UartDataNum*2]={0};
uSendBuf:
        DS8 36

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8 Data_Receive = 0;
Data_Receive:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8 Flag_Island_Another = 0;
Flag_Island_Another:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   12 uint8 trend_Another = 32;
trend_Another:
        DATA
        DC8 32
//   13 extern uint16 Distance_Island;
//   14 extern struct Speed Spd;
//   15 extern struct Rudder Angle;
//   16 extern int trend;
//   17 extern int Leave_trend;
//   18 extern int DisError;
//   19 extern int Chase_Distance;
//   20 extern int Count;
//   21 extern int Flag_Out;
//   22 extern int peak[];
//   23 extern int Peak5_Filter;
//   24 extern int E_Max_Dis;
//   25 extern int Distance;
//   26 extern int Pre_Peak5[];
//   27 extern int peak2;
//   28 extern int Sum_Distance_Enter;
//   29 extern uint8 Turn_Around;
//   30 extern uint8 Flag_Island;
//   31 extern uint8 Flag_Ramp;
//   32 extern int Flag_Island_Confirm;
//   33 extern int Sum_Distance_Island_Stright;
//   34 void push(uint8 chanel,uint16 data);
//   35 void produceScopeData(void);
//   36 void sendDataToScope(void);
//   37 extern int dog_cnt;
//   38 extern int Pre_Distance[];
//   39 extern int Admit_Dis_EnterIsland; 
//   40 extern uint8 final;
//   41 extern int trendSum_Peak1[];
//   42 extern int trendSum_Peak3[];
//   43 extern uint8 Flag_Island_Turn;
//   44 
//   45 extern int m;
//   46 //发送数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void SendData()
//   48 {
SendData:
        PUSH     {R7,LR}
//   49        SendData_To_PC();
        BL       SendData_To_PC
//   50 //     if(Turn_Around == 0)
//   51 //       Send_To_Behind();     
//   52 //     else
//   53 //       Send_To_Ahead();
//   54 }
        POP      {R0,PC}          ;; return
//   55 
//   56 //接收数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void RecData(void)
//   58 {
RecData:
        PUSH     {R7,LR}
//   59      if(Turn_Around == 0)
        LDR.N    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RecData_0
//   60        Receive_From_Behind();     
        BL       Receive_From_Behind
        B.N      ??RecData_1
//   61      else
//   62        Receive_From_Ahead();    
??RecData_0:
        BL       Receive_From_Ahead
//   63 }
??RecData_1:
        POP      {R0,PC}          ;; return
//   64 
//   65 
//   66 //前车发送数据到后车

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void Send_To_Behind()
//   68 {
Send_To_Behind:
        PUSH     {R7,LR}
//   69   if(Count%10 == 0)
        MOVS     R0,#+10
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??Send_To_Behind_0
//   70    {
//   71       Count_Last  = Count;
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//   72       LPLD_UART_PutChar(UART4, trend);  
        LDR.N    R0,??DataTable7_3
        LDR      R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   73       LPLD_UART_PutChar(UART4, Flag_Island);   
        LDR.N    R0,??DataTable7_5
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   74       while( !(Count_Last-Count) );
??Send_To_Behind_1:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BEQ.N    ??Send_To_Behind_1
//   75    }
//   76 }
??Send_To_Behind_0:
        POP      {R0,PC}          ;; return
//   77 
//   78 //后车接收前车数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void Receive_From_Ahead()
//   80 {
Receive_From_Ahead:
        PUSH     {R7,LR}
//   81    Data_Receive = LPLD_UART_GetChar(UART4) - 48;
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        SUBS     R0,R0,#+48
        LDR.N    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//   82    
//   83    //后车启动跟车模式
//   84    if(Data_Receive == 0)
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Receive_From_Ahead_0
//   85      Flag_Out = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//   86    
//   87    //后车接收到该信号，减速并可以检测环岛
//   88    if(Data_Receive == 5)
??Receive_From_Ahead_0:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Receive_From_Ahead_1
//   89     {
//   90       Admit_Dis_EnterIsland = 200*100;  
        MOVW     R0,#+20000
        LDR.N    R1,??DataTable7_8
        STR      R0,[R1, #+0]
//   91     }
//   92    
//   93    //后车进环岛时强制左右转：10右转，11左转
//   94    if(Data_Receive == 10)
??Receive_From_Ahead_1:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.N    ??Receive_From_Ahead_2
//   95      Flag_Island_Turn = 10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable7_9
        STRB     R0,[R1, #+0]
//   96    if(Data_Receive == 11)
??Receive_From_Ahead_2:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??Receive_From_Ahead_3
//   97      Flag_Island_Turn = 11;  
        MOVS     R0,#+11
        LDR.N    R1,??DataTable7_9
        STRB     R0,[R1, #+0]
//   98    
//   99 }
??Receive_From_Ahead_3:
        POP      {R0,PC}          ;; return
//  100 
//  101 
//  102 //后车发送数据到前车

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void Send_To_Ahead()
//  104 {
Send_To_Ahead:
        PUSH     {R7,LR}
//  105   if(Count%10 == 0)
        MOVS     R0,#+10
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable7_1
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??Send_To_Ahead_0
//  106    {
//  107       Count_Last  = Count;
        LDR.N    R0,??DataTable7_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  108       LPLD_UART_PutChar(UART4, Chase_Distance);  
        LDR.N    R0,??DataTable7_10
        LDR      R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  109       LPLD_UART_PutChar(UART4, Flag_Island);   
        LDR.N    R0,??DataTable7_5
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  110       while( !(Count_Last-Count));
??Send_To_Ahead_1:
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BEQ.N    ??Send_To_Ahead_1
//  111    }
//  112 }
??Send_To_Ahead_0:
        POP      {R0,PC}          ;; return
//  113 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  114 int n;
n:
        DS8 4
//  115 //前车接收后车数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void Receive_From_Behind()
//  117 {
Receive_From_Behind:
        PUSH     {R7,LR}
//  118    n++;
        LDR.N    R0,??DataTable7_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+0]
//  119    Data_Receive = LPLD_UART_GetChar(UART4);
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//  120 }
        POP      {R0,PC}          ;; return
//  121 
//  122 
//  123 
//  124 
//  125 
//  126 //发送数据给电脑

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void SendData_To_PC()
//  128 {
SendData_To_PC:
        PUSH     {R7,LR}
//  129     produceScopeData();  //将数据储存于缓存数组 
        BL       produceScopeData
//  130     sendDataToScope();	 //发送参数到上位机
        BL       sendDataToScope
//  131 }
        POP      {R0,PC}          ;; return
//  132 
//  133 //push()函数第一个形参表示通道号，第二个新参表示所需发送的数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 void push(uint8 chanel,uint16 data)
//  135 {
//  136     uSendBuf[chanel*2]=data/256;
`push`:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable7_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0, LSL #+1]
//  137     uSendBuf[chanel*2+1]=data%256;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LDR.N    R1,??DataTable7_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+1
        STRB     R3,[R0, #+1]
//  138 }
        BX       LR               ;; return
//  139 
//  140 //通过函数push将所需发送的数据放到数组uSendBuf[]内储存，数组uSendBuf[]用于数据缓冲。

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 void produceScopeData(void)
//  142 {
produceScopeData:
        PUSH     {R7,LR}
//  143 //    push(0,peak[4]);
//  144 //    push(1,peak[0]);
//  145     push(0,Turn_Around);
        LDR.N    R0,??DataTable7
        LDRB     R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       `push`
//  146     push(1,peak2);
        LDR.N    R0,??DataTable7_13
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1
        BL       `push`
//  147     push(2,peak[1]);
        LDR.N    R0,??DataTable7_14
        LDR      R1,[R0, #+4]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+2
        BL       `push`
//  148     push(3,Flag_Island);
        LDR.N    R0,??DataTable7_5
        LDRB     R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+3
        BL       `push`
//  149     push(4,peak[3]);
        LDR.N    R0,??DataTable7_14
        LDR      R1,[R0, #+12]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+4
        BL       `push`
//  150     push(5,Flag_Island_Turn);
        LDR.N    R0,??DataTable7_9
        LDRB     R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+5
        BL       `push`
//  151     push(6,Count);
        LDR.N    R0,??DataTable7_1
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+6
        BL       `push`
//  152 //    push(6,Flag_Ramp);
//  153     push(7,Flag_Island_Confirm/100 );
        LDR.N    R0,??DataTable7_15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+7
        BL       `push`
//  154     push(8,Distance);
        LDR.N    R0,??DataTable7_16
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+8
        BL       `push`
//  155     push(9,Admit_Dis_EnterIsland/100);
        LDR.N    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+9
        BL       `push`
//  156     push(10,Spd.target/10);
        LDR.N    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+10
        BL       `push`
//  157    push(11,peak[0]);
        LDR.N    R0,??DataTable7_14
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+11
        BL       `push`
//  158     push(12,peak[4]);
        LDR.N    R0,??DataTable7_14
        LDR      R1,[R0, #+16]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+12
        BL       `push`
//  159 //    push(13,14);
//  160 //    push(14,15);
//  161 //    push(15,16);
//  162 //    push(16,17);
//  163 }	 
        POP      {R0,PC}          ;; return
//  164 
//  165  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void sendDataToScope(void)
//  167 {
sendDataToScope:
        PUSH     {R3-R5,LR}
//  168   uint8 i,sum=0; 
        MOVS     R5,#+0
//  169   //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
//  170   LPLD_UART_PutChar(UART4, 251);
        MOVS     R1,#+251
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  171   LPLD_UART_PutChar(UART4, 109);
        MOVS     R1,#+109
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  172   LPLD_UART_PutChar(UART4, 37);
        MOVS     R1,#+37
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  173   
//  174   sum+=(251);                   
        SUBS     R5,R5,#+5
//  175   sum+=(109);
        ADDS     R5,R5,#+109
//  176   sum+=(37);
        ADDS     R5,R5,#+37
//  177   for(i=0;i<FreeCarsDataNum;i++)
        MOVS     R4,#+0
        B.N      ??sendDataToScope_0
//  178     {
//  179       LPLD_UART_PutChar(UART4, uSendBuf[i]);
??sendDataToScope_1:
        LDR.N    R0,??DataTable7_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  180       sum+=uSendBuf[i];          //全部数据加入校验
        LDR.N    R0,??DataTable7_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//  181     }
        ADDS     R4,R4,#+1
??sendDataToScope_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+34
        BLT.N    ??sendDataToScope_1
//  182   LPLD_UART_PutChar(UART4, sum);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_4  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  183 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     Count_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     trend

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     Data_Receive

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     Flag_Out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     Admit_Dis_EnterIsland

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     Flag_Island_Turn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     Chase_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     uSendBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     peak2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     Spd

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
//  50 bytes in section .bss
//   1 byte  in section .data
// 652 bytes in section .text
// 
// 652 bytes of CODE memory
//  51 bytes of DATA memory
//
//Errors: none
//Warnings: none
