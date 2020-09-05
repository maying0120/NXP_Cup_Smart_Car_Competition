///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  17:00:28
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\hardware.c
//    Command line =  
//        "C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\hardware.c"
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\hardware.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Dis_measure
        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN RecData
        EXTERN __aeabi_memcpy4
        EXTERN pit_10ms

        PUBLIC DialSwitch_init
        PUBLIC HardwareInit
        PUBLIC Led_init
        PUBLIC Motor_ftm0_init
        PUBLIC Rudder_ftm2_init
        PUBLIC bluetooth_uart4_init
        PUBLIC hcsr04_init
        PUBLIC nvic_init
        PUBLIC pit_10ms_init
        PUBLIC pit_hcsr04_init
        PUBLIC qd_ftm1_init
        PUBLIC sensor_adc_init

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\app\hardware.c
//    1 #include "Includes.h"
//    2 extern uint8 Turn_Around;
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void HardwareInit()
//    5 {  
HardwareInit:
        PUSH     {R7,LR}
//    6   bluetooth_uart4_init();
        BL       bluetooth_uart4_init
//    7   LPLD_LPTMR_DelayMs(500); 
        MOV      R0,#+500
        BL       LPLD_LPTMR_DelayMs
//    8   hcsr04_init();
        BL       hcsr04_init
//    9   pit_hcsr04_init();
        BL       pit_hcsr04_init
//   10   nvic_init();
        BL       nvic_init
//   11   sensor_adc_init();
        BL       sensor_adc_init
//   12   Rudder_ftm2_init();
        BL       Rudder_ftm2_init
//   13   Motor_ftm0_init();
        BL       Motor_ftm0_init
//   14   qd_ftm1_init();
        BL       qd_ftm1_init
//   15   pit_10ms_init();  
        BL       pit_10ms_init
//   16   Led_init();
        BL       Led_init
//   17 }
        POP      {R0,PC}          ;; return
//   18 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void bluetooth_uart4_init()
//   20 {
bluetooth_uart4_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   21   UART_InitTypeDef  uart4_init_struct;
//   22   uart4_init_struct.UART_Uartx = UART4;         //使用UART3	
        LDR.W    R0,??DataTable9  ;; 0x400ea000
        STR      R0,[SP, #+12]
//   23   uart4_init_struct.UART_BaudRate = 9600;     //设置波特率9600
        MOV      R0,#+9600
        STR      R0,[SP, #+16]
//   24   uart4_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+22]
//   25   uart4_init_struct.UART_TxPin = PTE24;          
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//   26   uart4_init_struct.UART_RxPin = PTE25;       
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//   27   uart4_init_struct.UART_RxIsr = RecData;
        LDR.W    R0,??DataTable9_1
        STR      R0,[SP, #+32]
//   28   LPLD_UART_Init(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   29   LPLD_UART_EnableIrq(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   30 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   31 
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void hcsr04_init()
//   34 {
hcsr04_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   35   //超声波回响信号：PTA10作为ECHO
//   36   GPIO_InitTypeDef  hc_echo_init_struct;
//   37   hc_echo_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable9_2  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   38   hc_echo_init_struct.GPIO_Pins = GPIO_Pin10;
        MOV      R0,#+1024
        STR      R0,[SP, #+8]
//   39   hc_echo_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   40   hc_echo_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   41   hc_echo_init_struct.GPIO_Isr = Dis_measure;
        LDR.N    R0,??DataTable9_3
        STR      R0,[SP, #+20]
//   42   LPLD_GPIO_Init(hc_echo_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   43   LPLD_GPIO_EnableIrq(hc_echo_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   44 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void pit_10ms_init(void)
//   47 {
pit_10ms_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   48   PIT_InitTypeDef  pit0_init_struct; 
//   49   pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   50   pit0_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   51   pit0_init_struct.PIT_PeriodUs = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   52   pit0_init_struct.PIT_PeriodMs = 10;  //定时周期5ms
        MOVS     R0,#+10
        STR      R0,[SP, #+12]
//   53   pit0_init_struct.PIT_Isr = pit_10ms;//设置中断函数
        LDR.N    R0,??DataTable9_4
        STR      R0,[SP, #+20]
//   54   LPLD_PIT_Init(pit0_init_struct);    //初始化PIT0
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   55   LPLD_PIT_EnableIrq(pit0_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   56 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void nvic_init()
//   59 {
nvic_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   60   NVIC_InitTypeDef nvic_init_struct;
//   61  
//   62   //配置PIT0_IRQn的抢占优先级为1
//   63   nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn;
        MOVS     R0,#+68
        STRB     R0,[SP, #+4]
//   64   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//   65   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//   66   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   67 
//   68   //配置PORTA_IRQn的抢占优先级为0
//   69   nvic_init_struct.NVIC_IRQChannel = PORTA_IRQn;
        MOVS     R0,#+87
        STRB     R0,[SP, #+4]
//   70   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//   71   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   72   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
//   73   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   74   
//   75   //配置UART4_IRQn的抢占优先级为2
//   76   nvic_init_struct.NVIC_IRQChannel = UART4_RX_TX_IRQn;
        MOVS     R0,#+53
        STRB     R0,[SP, #+4]
//   77   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//   78   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//   79   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
//   80   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   81 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   82 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void sensor_adc_init()
//   84 {
sensor_adc_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   85   ADC_InitTypeDef sensor1_adc_init;
//   86   sensor1_adc_init.ADC_Adcx = ADC1;	
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        STR      R0,[SP, #+4]
//   87   sensor1_adc_init.ADC_DiffMode = ADC_SE;       //单端采集	
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   88   sensor1_adc_init.ADC_BitMode = SE_8BIT;       //单端8位精度	
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//   89   sensor1_adc_init.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间	
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//   90   sensor1_adc_init.ADC_HwAvgSel = HW_4AVG;       //禁用硬件平均	
        MOVS     R0,#+4
        STRB     R0,[SP, #+12]
//   91   sensor1_adc_init.ADC_CalEnable = TRUE; //使能初始化校验	
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
//   92   sensor1_adc_init.ADC_MuxSel = MUX_ADXXA;
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
//   93   LPLD_ADC_Init(sensor1_adc_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   94   LPLD_ADC_Chn_Enable(ADC1, AD13);     //AD5--5
        MOVS     R1,#+13
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   95   LPLD_ADC_Chn_Enable(ADC1, AD12);    //AD6--0
        MOVS     R1,#+12
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   96   LPLD_ADC_Chn_Enable(ADC1, AD14);    //AD8--1
        MOVS     R1,#+14
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   97   LPLD_ADC_Chn_Enable(ADC1, AD15);    //AD7--2
        MOVS     R1,#+15
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   98   LPLD_ADC_Chn_Enable(ADC1, AD10);    //AD4--3
        MOVS     R1,#+10
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   99   LPLD_ADC_Chn_Enable(ADC1, AD11);    //AD3--4
        MOVS     R1,#+11
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  100   LPLD_ADC_Chn_Enable(ADC1, AD8);     //AD2--6
        MOVS     R1,#+8
        LDR.N    R0,??DataTable9_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  101 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  102 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void Rudder_ftm2_init()
//  104 {
Rudder_ftm2_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  105   FTM_InitTypeDef Rudder_ftm2_init;
//  106   Rudder_ftm2_init.FTM_Ftmx = FTM2;           
        LDR.N    R0,??DataTable9_6  ;; 0x400b8000
        STR      R0,[SP, #+12]
//  107   Rudder_ftm2_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  108   Rudder_ftm2_init.FTM_PwmFreq = 180;          
        MOVS     R0,#+180
        STR      R0,[SP, #+20]
//  109   Rudder_ftm2_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  110   LPLD_FTM_Init(Rudder_ftm2_init);    
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  111   LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, 650, PTA11, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+11
        MOVW     R2,#+650
        MOVS     R1,#+1
        LDR.N    R0,??DataTable9_6  ;; 0x400b8000
        BL       LPLD_FTM_PWM_Enable
//  112 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void Motor_ftm0_init()
//  115 {
Motor_ftm0_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  116   FTM_InitTypeDef motor_ftm0_init;
//  117   motor_ftm0_init.FTM_Ftmx = FTM0;           
        LDR.N    R0,??DataTable9_7  ;; 0x40038000
        STR      R0,[SP, #+12]
//  118   motor_ftm0_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  119   motor_ftm0_init.FTM_PwmFreq = 20000;          
        MOVW     R0,#+20000
        STR      R0,[SP, #+20]
//  120   motor_ftm0_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  121   LPLD_FTM_Init(motor_ftm0_init);    
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  122   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch1, 0, PTA4, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable9_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  123   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch2, 0, PTA5, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable9_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  124 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 void qd_ftm1_init()
//  127 {
qd_ftm1_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  128   FTM_InitTypeDef QD_init_struct;
//  129   QD_init_struct.FTM_Ftmx = FTM1;  //初始化右编码器
        LDR.N    R0,??DataTable9_8  ;; 0x40039000
        STR      R0,[SP, #+12]
//  130   QD_init_struct.FTM_Mode = FTM_MODE_QD; 
        MOVS     R0,#+4
        STRB     R0,[SP, #+16]
//  131   QD_init_struct.FTM_QdMode = QD_MODE_PHAB;  
        MOVS     R0,#+0
        STRB     R0,[SP, #+30]
//  132   QD_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
//  133   LPLD_FTM_Init(QD_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  134   LPLD_FTM_QD_Enable(FTM1, PTA8, PTA9); 
        MOVS     R2,#+9
        MOVS     R1,#+8
        LDR.N    R0,??DataTable9_8  ;; 0x40039000
        BL       LPLD_FTM_QD_Enable
//  135 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  136 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 void pit_hcsr04_init()
//  138 {
//  139   //开启定时模块时钟
//  140   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
pit_hcsr04_init:
        LDR.N    R0,??DataTable9_9  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable9_9  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  141   PIT->MCR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_10  ;; 0x40037000
        STR      R0,[R1, #+0]
//  142   PIT->CHANNEL[1].LDVAL = 0x20000000;
        MOVS     R0,#+536870912
        LDR.N    R1,??DataTable9_11  ;; 0x40037110
        STR      R0,[R1, #+0]
//  143   PIT->CHANNEL[1].TCTRL = PIT_TCTRL_TEN_MASK; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_12  ;; 0x40037118
        STR      R0,[R1, #+0]
//  144   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK; 
        LDR.N    R0,??DataTable9_13  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_13  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  145 }
        BX       LR               ;; return
//  146 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  147 void DialSwitch_init()
//  148 {
DialSwitch_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  149   //拨码开关： PTD7->1, PTD6->2, PTD9->3, PTD8->4
//  150   GPIO_InitTypeDef  DialSwitch_init_struct;
//  151   DialSwitch_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable9_14  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  152   DialSwitch_init_struct.GPIO_Pins = GPIO_Pin7|GPIO_Pin6|GPIO_Pin9|GPIO_Pin8;
        MOV      R0,#+960
        STR      R0,[SP, #+8]
//  153   DialSwitch_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  154   DialSwitch_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  155   DialSwitch_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  156   LPLD_GPIO_Init(DialSwitch_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  157 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  158 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void Led_init()
//  160 {
Led_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  161   //尾灯LED
//  162   GPIO_InitTypeDef  BoardLed_init_struct;
//  163   BoardLed_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable9_14  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  164   BoardLed_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin4|GPIO_Pin5;
        MOVS     R0,#+52
        STR      R0,[SP, #+8]
//  165   BoardLed_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  166   BoardLed_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  167   BoardLed_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  168   BoardLed_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  169   LPLD_GPIO_Init(BoardLed_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  170   
//  171   //核心板LED: PTE26, PTD15, PTC0, PTA17
//  172   GPIO_InitTypeDef CoreLed1_init_struct;
//  173   CoreLed1_init_struct.GPIO_PTx = PTE;
        LDR.N    R0,??DataTable9_15  ;; 0x400ff100
        STR      R0,[SP, #+4]
//  174   CoreLed1_init_struct.GPIO_Pins = GPIO_Pin26;
        MOVS     R0,#+67108864
        STR      R0,[SP, #+8]
//  175   CoreLed1_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  176   CoreLed1_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  177   CoreLed1_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  178   CoreLed1_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  179   LPLD_GPIO_Init(CoreLed1_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  180   
//  181   GPIO_InitTypeDef CoreLed2_init_struct;
//  182   CoreLed2_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable9_2  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  183   CoreLed2_init_struct.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        STR      R0,[SP, #+8]
//  184   CoreLed2_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  185   CoreLed2_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  186   CoreLed2_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  187   CoreLed2_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  188   LPLD_GPIO_Init(CoreLed2_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  189  
//  190   GPIO_InitTypeDef CoreLed3_init_struct;
//  191   CoreLed3_init_struct.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable9_16  ;; 0x400ff080
        STR      R0,[SP, #+4]
//  192   CoreLed3_init_struct.GPIO_Pins = GPIO_Pin0;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  193   CoreLed3_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  194   CoreLed3_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  195   CoreLed3_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  196   CoreLed3_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  197   LPLD_GPIO_Init(CoreLed3_init_struct);     
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  198 
//  199   GPIO_InitTypeDef CoreLed4_init_struct;
//  200   CoreLed4_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable9_14  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  201   CoreLed4_init_struct.GPIO_Pins = GPIO_Pin15;
        MOV      R0,#+32768
        STR      R0,[SP, #+8]
//  202   CoreLed4_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  203   CoreLed4_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  204   CoreLed4_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  205   CoreLed4_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  206   LPLD_GPIO_Init(CoreLed4_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  207 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     RecData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     Dis_measure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     pit_10ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x40037110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x400ff080

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
// 1 112 bytes in section .text
// 
// 1 112 bytes of CODE memory
//
//Errors: none
//Warnings: none
