///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Bluetooth.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Bluetooth.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Bluetooth.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Behind_EnterRamp_AdmitDis
        EXTERN Case1_AheadLeave_Dis
        EXTERN Case1_AheadLeave_Wait
        EXTERN Case2_Ahead_KeepSide
        EXTERN Case2_Behind_KeepSide
        EXTERN Count
        EXTERN Dir_IslandTurn
        EXTERN EncoderDis_Ahead
        EXTERN EnterCurve_SumDis
        EXTERN EnterStrai_SumDis
        EXTERN Error
        EXTERN Flag_Follow
        EXTERN Flag_Island_Confirm
        EXTERN IslandAdmit_Distance
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_PutChar
        EXTERN Mixed_Distance
        EXTERN OverTake_Island
        EXTERN SendCommand
        EXTERN Spd
        EXTERN Turn_Around
        EXTERN peak
        EXTERN pit_10ms_init

        PUBLIC AheadStop_BehindAccel
        PUBLIC AheadStop_BehindStop
        PUBLIC Case3_Turn
        PUBLIC Command_Match
        PUBLIC CommuCheck
        PUBLIC CommuCheck_Last
        PUBLIC CommuCheck_Last_Last
        PUBLIC Commu_Onetime
        PUBLIC Data_Receive
        PUBLIC RecData
        PUBLIC Receive_From_Ahead
        PUBLIC Receive_From_Behind
        PUBLIC SendCommand_Arise
        PUBLIC SendCommand_Arise_Cnt
        PUBLIC SendCommand_Clear
        PUBLIC SendData
        PUBLIC SendData_Status
        PUBLIC SendData_To_PC
        PUBLIC Stop_Behind
        PUBLIC produceScopeData
        PUBLIC `push`
        PUBLIC sendDataToScope
        PUBLIC uSendBuf
        PUBLIC uart_cnt

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Bluetooth.c
//    1 #include "Includes.h"
//    2 
//    3 #define UartDataNum  17	
//    4 #define FreeCarsDataNum (UartDataNum*2)
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 uint8 uSendBuf[UartDataNum*2]={0};
uSendBuf:
        DS8 36

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8 Data_Receive = 0;
Data_Receive:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 Stop_Behind = 0;
Stop_Behind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8 CommuCheck;
CommuCheck:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8 CommuCheck_Last = 0;
CommuCheck_Last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8 CommuCheck_Last_Last = 0;
CommuCheck_Last_Last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   12 uint8 SendData_Status = 0;
SendData_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 SendCommand_Arise = 0;
SendCommand_Arise:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8 SendCommand_Clear = 0;
SendCommand_Clear:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 uint8 SendCommand_Arise_Cnt = 0;
SendCommand_Arise_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   16 uint8 Case3_Turn = 0;
Case3_Turn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   17 uint8 AheadStop_BehindAccel = 0;
AheadStop_BehindAccel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   18 uint8 AheadStop_BehindStop = 0;
AheadStop_BehindStop:
        DS8 1
//   19 extern int Pre_Error[];
//   20 extern int node;
//   21 extern int Sum_peak2;
//   22 extern int EnterStrai_SumDis;
//   23 extern int sum_error;
//   24 extern int Distance;
//   25 extern int Count;
//   26 extern int peak[];
//   27 extern int Error;
//   28 extern int Pre_Peak5[];
//   29 extern int Grid_Error;
//   30 extern int Flag_Island_Confirm;
//   31 extern int RampAdmit_Distance;
//   32 extern int Ms100_Distance;
//   33 extern int EncoderDis_Ahead;
//   34 extern int EncoderDis_Behind;
//   35 extern int Mixed_Distance;
//   36 extern int CrossRoad_Distance;
//   37 extern int CrossRoadGap_Dis;
//   38 extern long int IslandAdmit_Distance;
//   39 extern int EnterCurve_SumDis;
//   40 extern int trendSum_Peak1[];
//   41 extern int trendSum_Peak2[];
//   42 extern int trendSum_Peak3[];
//   43 extern int Derivative_Error;
//   44 extern int Case1_AheadLeave_Dis;
//   45 extern long int Behind_EnterRamp_AdmitDis;
//   46 extern int16 gyro_x;
//   47 extern int16 gyro_y;
//   48 extern int16 gyro_z;
//   49 extern float Ave_absError;
//   50 extern struct Speed Spd;
//   51 extern struct Rudder Angle;
//   52 extern uint8 Single_Run;
//   53 extern uint8 Spd_Set_ZeroStart;
//   54 extern uint8 Flag_Island_Position;
//   55 extern uint8 Dir_IslandTurn;
//   56 extern uint8 final;
//   57 extern uint8 OverTake_Island;
//   58 extern uint8 SendCommand;
//   59 extern uint8 Turn_Around;
//   60 extern uint8 Flag_Island;
//   61 extern uint8 Flag_Ramp;
//   62 extern uint8 Case1_AheadLeave_Wait;
//   63 extern uint8 Flag_Follow;
//   64 extern uint8 Island_SpdDown;
//   65 extern uint8 OverTake_Straight;
//   66 extern uint8 Case2_Ahead_KeepSide;  
//   67 extern uint8 Case2_Behind_KeepSide;
//   68 extern uint8 OverTake_CrossRoad;
//   69 extern uint8 Case3_Behind_Pass;
//   70 extern uint8 Ahead_LeaveIsland_WaitFlag;
//   71 extern float percent_ahead;
//   72 void push(uint8 chanel,uint16 data);
//   73 void produceScopeData(void);
//   74 void sendDataToScope(void);
//   75 
//   76 
//   77 /*
//   78 Function: 发送数据给电脑
//   79 Return: Null
//   80 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void SendData()
//   82 {
SendData:
        PUSH     {R7,LR}
//   83    SendData_To_PC();
        BL       SendData_To_PC
//   84 }
        POP      {R0,PC}          ;; return
//   85 
//   86 
//   87 /*
//   88 Function: 接收中断服务函数
//   89 Return: Null
//   90 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   91 int uart_cnt;
uart_cnt:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void RecData(void)
//   93 {
RecData:
        PUSH     {R7,LR}
//   94    uart_cnt++;   
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7
        STR      R0,[R1, #+0]
//   95    if(Turn_Around == 0)
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RecData_0
//   96      Receive_From_Behind();     
        BL       Receive_From_Behind
        B.N      ??RecData_1
//   97    else
//   98      Receive_From_Ahead();    
??RecData_0:
        BL       Receive_From_Ahead
//   99 }
??RecData_1:
        POP      {R0,PC}          ;; return
//  100 
//  101 
//  102 /*
//  103 Function: 前车接收后车信号
//  104 Return: Null
//  105 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void Receive_From_Behind()
//  107 {
Receive_From_Behind:
        PUSH     {R7,LR}
//  108    /***************数据解码******************/
//  109    CommuCheck = LPLD_UART_GetChar(UART4);
        LDR.W    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  110       
//  111    if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+254
        BNE.N    ??Receive_From_Behind_0
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+253
        BNE.N    ??Receive_From_Behind_0
//  112        Data_Receive = CommuCheck;
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//  113    if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
??Receive_From_Behind_0:
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+253
        BEQ.N    ??Receive_From_Behind_1
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+254
        BNE.N    ??Receive_From_Behind_2
//  114       {
//  115          CommuCheck_Last_Last = CommuCheck_Last;   
??Receive_From_Behind_1:
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+0]
//  116          CommuCheck_Last = CommuCheck;
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        STRB     R0,[R1, #+0]
//  117       }
//  118 
//  119    /*************正常数据通信****************/   
//  120    //后车发送双车距离给环岛
//  121    if(Data_Receive>=MixedDis_Min && Data_Receive<=MixedDis_Max)
??Receive_From_Behind_2:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        CMP      R0,#+40
        BCS.N    ??Receive_From_Behind_3
//  122      { 
//  123        Mixed_Distance = (Data_Receive - MixedDis_Step)*10;
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//  124      }
//  125 
//  126    //Case1（环岛超车）情况下，后车出环岛后，前车启动
//  127    if(Data_Receive == Case1_Behind_LeaveIsland)
??Receive_From_Behind_3:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+102
        BNE.N    ??Receive_From_Behind_4
//  128      {
//  129         Case1_AheadLeave_Wait = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_8
        STRB     R0,[R1, #+0]
//  130         Case1_AheadLeave_Dis = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_9
        STR      R0,[R1, #+0]
//  131         EnterStrai_SumDis = Pulse_Distance*100;   
        MOV      R0,#+1000
        LDR.W    R1,??DataTable7_10
        STR      R0,[R1, #+0]
//  132         
//  133         //环岛超车次数限制
//  134         if(OverTake_Island > No)
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Receive_From_Behind_4
//  135           {
//  136              OverTake_Island--;    
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_11
        STRB     R0,[R1, #+0]
//  137              //发指令给后车，环岛超车次数自减一次
//  138              SendCommand = Case1_OverTake_NumDown;
        MOVS     R0,#+103
        LDR.W    R1,??DataTable7_12
        STRB     R0,[R1, #+0]
//  139           }
//  140      }
//  141      
//  142         
//  143    /*************重要数据匹配确认****************/
//  144    //接收者确认身份
//  145    if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
??Receive_From_Behind_4:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+104
        CMP      R0,#+47
        BCS.N    ??Receive_From_Behind_5
//  146      if(SendData_Status == Reseter)
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Receive_From_Behind_5
//  147         SendData_Status = Receiver;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  148    
//  149    //发送者收到接收者反馈的指令信号（SendCommand_Clear）时，不再重复发送指令
//  150    if(SendData_Status == Sender)
??Receive_From_Behind_5:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Receive_From_Behind_6
//  151      {
//  152        if(Data_Receive == SendCommand_Arise);
//  153          {
//  154             SendCommand_Arise = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
//  155             SendData_Status = Reseter;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
        B.N      ??Receive_From_Behind_7
//  156          }
//  157      }
//  158    
//  159    //接收者接收到的信号为重要指令（SendCommand_Arise）时，反馈信号给发送者
//  160    else if(SendData_Status == Receiver)
??Receive_From_Behind_6:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Receive_From_Behind_7
//  161      {
//  162        if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+104
        CMP      R0,#+47
        BCS.N    ??Receive_From_Behind_7
//  163           SendCommand_Clear = Data_Receive;     
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_15
        STRB     R0,[R1, #+0]
//  164      }
//  165 }
??Receive_From_Behind_7:
        POP      {R0,PC}          ;; return
//  166 
//  167 
//  168 /*
//  169 Function: 后车接收前车信号
//  170 Return: Null
//  171 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void Receive_From_Ahead()
//  173 {  
Receive_From_Ahead:
        PUSH     {R7,LR}
//  174    CommuCheck = LPLD_UART_GetChar(UART4);
        LDR.W    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  175    
//  176     /*****************数据解码*******************/
//  177    if(CommuCheck_Last==CommuCheck_Second && CommuCheck_Last_Last==CommuCheck_First)
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+254
        BNE.N    ??Receive_From_Ahead_0
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+253
        BNE.N    ??Receive_From_Ahead_0
//  178        Data_Receive = CommuCheck;
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//  179    if(CommuCheck==CommuCheck_First || CommuCheck==CommuCheck_Second)
??Receive_From_Ahead_0:
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+253
        BEQ.N    ??Receive_From_Ahead_1
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+254
        BNE.N    ??Receive_From_Ahead_2
//  180       {
//  181          CommuCheck_Last_Last = CommuCheck_Last;   
??Receive_From_Ahead_1:
        LDR.W    R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+0]
//  182          CommuCheck_Last = CommuCheck;
        LDR.W    R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        STRB     R0,[R1, #+0]
//  183       }
//  184    
//  185    /*****************数据处理********************/
//  186    switch (Data_Receive)
??Receive_From_Ahead_2:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+101
        BEQ.N    ??Receive_From_Ahead_3
        CMP      R0,#+103
        BEQ.N    ??Receive_From_Ahead_4
        CMP      R0,#+104
        BEQ.N    ??Receive_From_Ahead_5
        CMP      R0,#+105
        BEQ.N    ??Receive_From_Ahead_6
        CMP      R0,#+106
        BEQ.N    ??Receive_From_Ahead_7
        CMP      R0,#+107
        BEQ.N    ??Receive_From_Ahead_8
        CMP      R0,#+108
        BEQ.N    ??Receive_From_Ahead_9
        CMP      R0,#+110
        BEQ.N    ??Receive_From_Ahead_10
        CMP      R0,#+111
        BEQ.N    ??Receive_From_Ahead_11
        CMP      R0,#+112
        BEQ.N    ??Receive_From_Ahead_12
        B.N      ??Receive_From_Ahead_13
//  187     {
//  188        //后车接收前车的发车信号，然后发车,延时发车
//  189        case Start_Admit:
//  190         { 
//  191            LPLD_LPTMR_DelayMs(500);
??Receive_From_Ahead_3:
        MOV      R0,#+500
        BL       LPLD_LPTMR_DelayMs
//  192            pit_10ms_init(); 
        BL       pit_10ms_init
//  193         }
//  194        break;
        B.N      ??Receive_From_Ahead_14
//  195       
//  196        //前车停车，后车加速
//  197        case Ahead_Stop:
//  198         { 
//  199           AheadStop_BehindAccel = 1;
??Receive_From_Ahead_10:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_16
        STRB     R0,[R1, #+0]
//  200         }
//  201        break;
        B.N      ??Receive_From_Ahead_14
//  202        
//  203        //前车停车，后车加速
//  204        case Ahead_Stop_Unexpected:
//  205         { 
//  206           AheadStop_BehindStop = 1;
??Receive_From_Ahead_12:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_17
        STRB     R0,[R1, #+0]
//  207         }
//  208        break;
        B.N      ??Receive_From_Ahead_14
//  209        
//  210        //后车允许进入环岛
//  211        case Ahead_EnterRamp:
//  212         { 
//  213           Behind_EnterRamp_AdmitDis = 500*100;
??Receive_From_Ahead_11:
        MOVW     R0,#+50000
        LDR.N    R1,??DataTable7_18
        STR      R0,[R1, #+0]
//  214         }
//  215        break;
        B.N      ??Receive_From_Ahead_14
//  216        
//  217        //环岛超车情况下，前车离开环岛时，后车启动
//  218        case Case1_Ahead_LeaveIsland:
//  219         {
//  220            Mixed_Distance = 300;
??Receive_From_Ahead_9:
        MOV      R0,#+300
        LDR.N    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//  221            Flag_Follow = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_19
        STRB     R0,[R1, #+0]
//  222         }
//  223        break;
        B.N      ??Receive_From_Ahead_14
//  224 
//  225        
//  226       // 环岛超车次数自减一次
//  227       case Case1_OverTake_NumDown:
//  228         { 
//  229           if(OverTake_Island > No)
??Receive_From_Ahead_4:
        LDR.N    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Receive_From_Ahead_15
//  230              OverTake_Island--;
        LDR.N    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable7_11
        STRB     R0,[R1, #+0]
//  231         }
//  232       break;
??Receive_From_Ahead_15:
        B.N      ??Receive_From_Ahead_14
//  233        
//  234       //后车接收到该信号，减速并可以检测环岛
//  235       case Admit_EnterIsland:
//  236        {
//  237           IslandAdmit_Distance = IslandAdmit_MaxDis*100;   
??Receive_From_Ahead_6:
        MOVW     R0,#+50000
        LDR.N    R1,??DataTable7_20
        STR      R0,[R1, #+0]
//  238        }
//  239        break; 
        B.N      ??Receive_From_Ahead_14
//  240            
//  241       //后车进环岛时强制右转
//  242       case Turn_Right:
//  243         {
//  244           Dir_IslandTurn = Turn_Right;
??Receive_From_Ahead_7:
        MOVS     R0,#+106
        LDR.N    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
//  245         }
//  246        break;
        B.N      ??Receive_From_Ahead_14
//  247 
//  248       //后车进环岛时强制左转
//  249       case Turn_Left:
//  250          Dir_IslandTurn = Turn_Left;
??Receive_From_Ahead_8:
        MOVS     R0,#+107
        LDR.N    R1,??DataTable7_21
        STRB     R0,[R1, #+0]
//  251        break;
        B.N      ??Receive_From_Ahead_14
//  252       
//  253       //直道超车后车变前车
//  254       case Case2_SwitchTurn:
//  255          {
//  256            Turn_Around = 0;
??Receive_From_Ahead_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  257            Case2_Ahead_KeepSide = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_22
        STRB     R0,[R1, #+0]
//  258            Case2_Behind_KeepSide = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_23
        STRB     R0,[R1, #+0]
//  259          }
//  260        break;
        B.N      ??Receive_From_Ahead_14
//  261               
//  262        
//  263       default:
//  264        break;
//  265     }
//  266   
//  267    //后车接收前车100ms内运动距离
//  268    if(Data_Receive>=EncoderDis_Step && Data_Receive<=EncoderDis_Max)
??Receive_From_Ahead_13:
??Receive_From_Ahead_14:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+50
        CMP      R0,#+50
        BCS.N    ??Receive_From_Ahead_16
//  269       EncoderDis_Ahead = Data_Receive - EncoderDis_Step;
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+50
        LDR.N    R1,??DataTable7_24
        STR      R0,[R1, #+0]
//  270 
//  271    
//  272    /*************重要数据匹配确认****************/
//  273    //接收者确认身份
//  274    if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
??Receive_From_Ahead_16:
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+104
        CMP      R0,#+47
        BCS.N    ??Receive_From_Ahead_17
//  275      if(SendData_Status == Reseter)
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Receive_From_Ahead_17
//  276         SendData_Status = Receiver;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  277    
//  278    //发送者收到接收者反馈的指令信号（SendCommand_Clear）时，不再重复发送指令
//  279    if(SendData_Status == Sender)
??Receive_From_Ahead_17:
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Receive_From_Ahead_18
//  280      {
//  281        if(Data_Receive == SendCommand_Arise);
//  282          {
//  283             SendCommand_Arise = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
//  284             SendData_Status = Reseter;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
        B.N      ??Receive_From_Ahead_19
//  285          }
//  286      }
//  287    
//  288    //接收者接收到的信号为重要指令（SendCommand_Arise）时，反馈信号给发送者
//  289    else if(SendData_Status == Receiver)
??Receive_From_Ahead_18:
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Receive_From_Ahead_19
//  290      {
//  291        if(Data_Receive>=Command_Start && Data_Receive<=Command_End)
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+104
        CMP      R0,#+47
        BCS.N    ??Receive_From_Ahead_19
//  292           SendCommand_Clear = Data_Receive;     
        LDR.N    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_15
        STRB     R0,[R1, #+0]
//  293      }
//  294 }
??Receive_From_Ahead_19:
        POP      {R0,PC}          ;; return
//  295 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 void Command_Match()
//  297 {
Command_Match:
        PUSH     {R7,LR}
//  298   if(Count>200)
        LDR.N    R0,??DataTable7_25
        LDR      R0,[R0, #+0]
        CMP      R0,#+201
        BLT.N    ??Command_Match_0
//  299     {
//  300        //发送者重复发送重要指令给接收者，直到接收者反馈该信号则停止发送
//  301       if(SendData_Status == Sender)
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Command_Match_1
//  302         {
//  303            if(SendCommand_Arise != 0)
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Command_Match_0
//  304               Commu_Onetime(SendCommand_Arise);
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        BL       Commu_Onetime
        B.N      ??Command_Match_0
//  305         }
//  306 
//  307        //接收者接收到重要指令信号时，反馈该信号给发送者，发送一次即可；
//  308        //因为如果发送者未接收到该反馈信号时，发送者会持续发送该指令信号，使得接收者的SendCommand_Clear不断被置起
//  309       else if(SendData_Status == Receiver)
??Command_Match_1:
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Command_Match_0
//  310         {
//  311            if(SendCommand_Clear != 0)
        LDR.N    R0,??DataTable7_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Command_Match_0
//  312             {
//  313                Commu_Onetime(SendCommand_Clear);      
        LDR.N    R0,??DataTable7_15
        LDRB     R0,[R0, #+0]
        BL       Commu_Onetime
//  314                SendCommand_Clear = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_15
        STRB     R0,[R1, #+0]
//  315                SendData_Status = Reseter; //接收者清除身份
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  316             }        
//  317         }
//  318     }
//  319 }
??Command_Match_0:
        POP      {R0,PC}          ;; return
//  320 
//  321 
//  322 /*
//  323 Function: 发送数据给电脑
//  324 Return: Null
//  325 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  326 void SendData_To_PC()
//  327 {
SendData_To_PC:
        PUSH     {R7,LR}
//  328     produceScopeData();  //将数据储存于缓存数组 
        BL       produceScopeData
//  329     sendDataToScope();	 //发送参数到上位机
        BL       sendDataToScope
//  330 }
        POP      {R0,PC}          ;; return
//  331 
//  332 
//  333 /*
//  334 Function: 将数据压入缓存数组
//  335 Return: Null
//  336 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  337 void push(uint8 chanel,uint16 data)
//  338 {
//  339     uSendBuf[chanel*2]=data/256;
`push`:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R2,R1,R2
        LDR.N    R3,??DataTable7_26
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0, LSL #+1]
//  340     uSendBuf[chanel*2+1]=data%256;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LDR.N    R1,??DataTable7_26
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+1
        STRB     R3,[R0, #+1]
//  341 }
        BX       LR               ;; return
//  342 
//  343 
//  344 extern int Ud;
//  345 extern int Ud_error;
//  346 extern int MaybeRamp_Distance;
//  347 extern long int IslandGap_Distance;
//  348 extern int RampIn_Distance;
//  349 extern int Turn_Error;
//  350 extern uint16 Ultra_Distance_Unfilter;
//  351 extern uint16 Ultra_Distance_Filter;
//  352 
//  353 /*
//  354 Function: 发送需要发送的数据
//  355 Return: Null
//  356 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  357 void produceScopeData(void)
//  358 {
produceScopeData:
        PUSH     {R7,LR}
//  359     push(0, peak[0]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       `push`
//  360     push(1, peak[1]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+4]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1
        BL       `push`
//  361     push(2, peak[2]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+8]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+2
        BL       `push`
//  362     push(3, peak[3]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+12]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+3
        BL       `push`
//  363     push(4, peak[4]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+16]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+4
        BL       `push`
//  364     push(5, peak[5]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+5
        BL       `push`
//  365     push(6, peak[6]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+6
        BL       `push`
//  366     push(7, peak[7]);
        LDR.N    R0,??DataTable7_27
        LDR      R1,[R0, #+28]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+7
        BL       `push`
//  367     push(8, Error);
        LDR.N    R0,??DataTable7_28
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+8
        BL       `push`
//  368     push(9, Flag_Island_Confirm/100);
        LDR.N    R0,??DataTable7_29
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+9
        BL       `push`
//  369     push(10,Spd.target);
        LDR.N    R0,??DataTable7_30
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+10
        BL       `push`
//  370     push(11,Spd.feedback);
        LDR.N    R0,??DataTable7_30
        LDR      R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+11
        BL       `push`
//  371     push(12,EnterCurve_SumDis/100);
        LDR.N    R0,??DataTable7_31
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+12
        BL       `push`
//  372     push(13,Spd.MotorPWM/10);
        LDR.N    R0,??DataTable7_30
        LDR      R0,[R0, #+136]
        MOVS     R1,#+10
        SDIV     R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+13
        BL       `push`
//  373 //    push(14,15);
//  374 //    push(15,16);
//  375 //    push(16,17);
//  376 }	 
        POP      {R0,PC}          ;; return
//  377 
//  378  
//  379 /*
//  380 Function: 寄存器发送操作
//  381 Return: Null
//  382 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 void sendDataToScope(void)
//  384 {
sendDataToScope:
        PUSH     {R3-R5,LR}
//  385   uint8 i,sum=0; 
        MOVS     R5,#+0
//  386   //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
//  387   LPLD_UART_PutChar(UART4, 251);
        MOVS     R1,#+251
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  388   LPLD_UART_PutChar(UART4, 109);
        MOVS     R1,#+109
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  389   LPLD_UART_PutChar(UART4, 37);
        MOVS     R1,#+37
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  390   
//  391   sum+=(251);                   
        SUBS     R5,R5,#+5
//  392   sum+=(109);
        ADDS     R5,R5,#+109
//  393   sum+=(37);
        ADDS     R5,R5,#+37
//  394   for(i=0;i<FreeCarsDataNum;i++)
        MOVS     R4,#+0
        B.N      ??sendDataToScope_0
//  395     {
//  396       LPLD_UART_PutChar(UART4, uSendBuf[i]);
??sendDataToScope_1:
        LDR.N    R0,??DataTable7_26
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R4, R0]
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  397       sum+=uSendBuf[i];          //全部数据加入校验
        LDR.N    R0,??DataTable7_26
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//  398     }
        ADDS     R4,R4,#+1
??sendDataToScope_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+34
        BLT.N    ??sendDataToScope_1
//  399   LPLD_UART_PutChar(UART4, sum);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  400 }
        POP      {R0,R4,R5,PC}    ;; return
//  401 
//  402 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  403 void Commu_Onetime(uint8 data)
//  404 {
Commu_Onetime:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  405    /*******************数据协议**********************/
//  406    LPLD_UART_PutChar(UART4, CommuCheck_First);
        MOVS     R1,#+253
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  407    LPLD_UART_PutChar(UART4, CommuCheck_Second); 
        MOVS     R1,#+254
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  408    LPLD_UART_PutChar(UART4, data); 
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  409    
//  410    
//  411    /***************命令区间的数据确认*****************/
//  412    //接收者确认身份
//  413    if(data>=Command_Start && data<=Command_End)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R4,#+104
        CMP      R0,#+47
        BCS.N    ??Commu_Onetime_0
//  414      if(SendData_Status == Reseter)
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commu_Onetime_0
//  415         SendData_Status = Sender;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  416    
//  417    if(data>=Command_Start && data<=Command_End)
??Commu_Onetime_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R4,#+104
        CMP      R0,#+47
        BCS.N    ??Commu_Onetime_1
//  418      if(SendData_Status == Sender)
        LDR.N    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Commu_Onetime_1
//  419        if(SendCommand_Arise == 0)  //发送者只有第一次发送重要信息时会置起
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commu_Onetime_1
//  420           {
//  421              if(SendCommand_Arise_Cnt == 0)
        LDR.N    R0,??DataTable7_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Commu_Onetime_2
//  422                 SendCommand_Arise_Cnt = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_32
        STRB     R0,[R1, #+0]
//  423              SendCommand_Arise = data;
??Commu_Onetime_2:
        LDR.N    R0,??DataTable7_14
        STRB     R4,[R0, #+0]
//  424           }
//  425 }
??Commu_Onetime_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     uart_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     CommuCheck

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     CommuCheck_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     CommuCheck_Last_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     Data_Receive

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     Mixed_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     Case1_AheadLeave_Wait

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     Case1_AheadLeave_Dis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     EnterStrai_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     OverTake_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     SendCommand

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     SendData_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     SendCommand_Arise

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     SendCommand_Clear

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     AheadStop_BehindAccel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     AheadStop_BehindStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     Behind_EnterRamp_AdmitDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     Flag_Follow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     IslandAdmit_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     Dir_IslandTurn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     Case2_Behind_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     EncoderDis_Ahead

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     uSendBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     Spd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     EnterCurve_SumDis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     SendCommand_Arise_Cnt

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
//    52 bytes in section .bss
// 1 318 bytes in section .text
// 
// 1 318 bytes of CODE memory
//    52 bytes of DATA memory
//
//Errors: none
//Warnings: none
