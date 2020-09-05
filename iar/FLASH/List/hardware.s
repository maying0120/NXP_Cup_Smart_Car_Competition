///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:31
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\hardware.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\hardware.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\hardware.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN OLED_Fill
        EXTERN OLED_Set_Pos
        EXTERN OLED_WrCmd
        EXTERN RecData
        EXTERN Rudder_Init
        EXTERN Stop_Isr
        EXTERN UltraDis_Measure
        EXTERN __aeabi_memcpy4
        EXTERN pit_10ms

        PUBLIC DialSwitch_init
        PUBLIC HardwareInit
        PUBLIC KeyBoard_init
        PUBLIC Led_init
        PUBLIC Motor_ftm0_init
        PUBLIC OLED_Init
        PUBLIC Rudder_ftm2_init
        PUBLIC Stop_init
        PUBLIC bluetooth_uart4_init
        PUBLIC hcsr04_init
        PUBLIC nvic_init
        PUBLIC pit_10ms_init
        PUBLIC pit_hcsr04_init
        PUBLIC qd_ftm1_init
        PUBLIC sensor_adc_init

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\hardware.c
//    1 #include "Includes.h"
//    2 
//    3 extern uint8 Turn_Around;
//    4 extern int Rudder_Init;
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void HardwareInit()
//    7 { 
HardwareInit:
        PUSH     {R7,LR}
//    8   //LPLD_Flash_Init();
//    9   nvic_init(); 
        BL       nvic_init
//   10   
//   11   bluetooth_uart4_init();
        BL       bluetooth_uart4_init
//   12   LPLD_LPTMR_DelayMs(1000); 
        MOV      R0,#+1000
        BL       LPLD_LPTMR_DelayMs
//   13   hcsr04_init();
        BL       hcsr04_init
//   14   pit_hcsr04_init();
        BL       pit_hcsr04_init
//   15   sensor_adc_init();
        BL       sensor_adc_init
//   16   Rudder_ftm2_init();  
        BL       Rudder_ftm2_init
//   17   Motor_ftm0_init(); 
        BL       Motor_ftm0_init
//   18   qd_ftm1_init(); 
        BL       qd_ftm1_init
//   19   Stop_init();
        BL       Stop_init
//   20   DialSwitch_init();  
        BL       DialSwitch_init
//   21   Led_init();
        BL       Led_init
//   22   OLED_Init();
        BL       OLED_Init
//   23   KeyBoard_init();
        BL       KeyBoard_init
//   24 }
        POP      {R0,PC}          ;; return
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void bluetooth_uart4_init()
//   27 {
bluetooth_uart4_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   28   UART_InitTypeDef  uart4_init_struct;
//   29   uart4_init_struct.UART_Uartx = UART4;         //使用UART3	
        LDR.W    R0,??DataTable12  ;; 0x400ea000
        STR      R0,[SP, #+12]
//   30   uart4_init_struct.UART_BaudRate = 115200;     //设置波特率9600
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//   31   uart4_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+22]
//   32   uart4_init_struct.UART_TxPin = PTE24;          
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//   33   uart4_init_struct.UART_RxPin = PTE25;       
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//   34   uart4_init_struct.UART_RxIsr = RecData;
        LDR.W    R0,??DataTable12_1
        STR      R0,[SP, #+32]
//   35   LPLD_UART_Init(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   36   LPLD_UART_EnableIrq(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   37   
//   38   GPIO_InitTypeDef  M0_init_struct;
//   39   M0_init_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable12_2  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   40   M0_init_struct.GPIO_Pins = GPIO_Pin26;
        MOVS     R0,#+67108864
        STR      R0,[SP, #+8]
//   41   M0_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//   42   M0_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   43   M0_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   44   M0_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   45   LPLD_GPIO_Init(M0_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   46 
//   47   GPIO_InitTypeDef  M1_init_struct;
//   48   M1_init_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable12_2  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   49   M1_init_struct.GPIO_Pins = GPIO_Pin27;
        MOVS     R0,#+134217728
        STR      R0,[SP, #+8]
//   50   M1_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//   51   M1_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   52   M1_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//   53   M1_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   54   LPLD_GPIO_Init(M1_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   55 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   56 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void hcsr04_init()
//   58 {
hcsr04_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   59   //超声波回响信号：PTA10作为ECHO
//   60   GPIO_InitTypeDef  hc_echo_init_struct;
//   61   hc_echo_init_struct.GPIO_PTx = PTA;
        LDR.W    R0,??DataTable12_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   62   hc_echo_init_struct.GPIO_Pins = GPIO_Pin10;
        MOV      R0,#+1024
        STR      R0,[SP, #+8]
//   63   hc_echo_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   64   hc_echo_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   65   hc_echo_init_struct.GPIO_Isr = UltraDis_Measure;
        LDR.W    R0,??DataTable12_4
        STR      R0,[SP, #+20]
//   66   LPLD_GPIO_Init(hc_echo_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   67   LPLD_GPIO_EnableIrq(hc_echo_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   68 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   69 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void pit_10ms_init(void)
//   71 {
pit_10ms_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   72   PIT_InitTypeDef  pit0_init_struct; 
//   73   pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   74   pit0_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   75   pit0_init_struct.PIT_PeriodUs = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   76   pit0_init_struct.PIT_PeriodMs = 10;  //定时周期5ms
        MOVS     R0,#+10
        STR      R0,[SP, #+12]
//   77   pit0_init_struct.PIT_Isr = pit_10ms;//设置中断函数
        LDR.W    R0,??DataTable12_5
        STR      R0,[SP, #+20]
//   78   LPLD_PIT_Init(pit0_init_struct);    //初始化PIT0
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   79   LPLD_PIT_EnableIrq(pit0_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   80 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void nvic_init()
//   83 {
nvic_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   84   NVIC_InitTypeDef nvic_init_struct;
//   85  
//   86   //配置PIT1_IRQn的抢占优先级为4
//   87   nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;
        MOVS     R0,#+69
        STRB     R0,[SP, #+4]
//   88   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//   89   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 3;
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//   90   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   91   
//   92   //配置PIT0_IRQn的抢占优先级为3
//   93   nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn;
        MOVS     R0,#+68
        STRB     R0,[SP, #+4]
//   94   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//   95   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//   96   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   97   
//   98   //配置PORTA_IRQn的抢占优先级为2
//   99   nvic_init_struct.NVIC_IRQChannel = PORTA_IRQn;
        MOVS     R0,#+87
        STRB     R0,[SP, #+4]
//  100   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//  101   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//  102   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
//  103   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  104   
//  105   //配置UART4_IRQn的抢占优先级为1
//  106   nvic_init_struct.NVIC_IRQChannel = UART4_RX_TX_IRQn;
        MOVS     R0,#+53
        STRB     R0,[SP, #+4]
//  107   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[SP, #+8]
//  108   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  109   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
//  110   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  111 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  112 
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void sensor_adc_init()
//  115 {
sensor_adc_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  116   ADC_InitTypeDef sensor1_adc_init;
//  117   sensor1_adc_init.ADC_Adcx = ADC1;	
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        STR      R0,[SP, #+4]
//  118   sensor1_adc_init.ADC_DiffMode = ADC_SE;       //单端采集	
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  119   sensor1_adc_init.ADC_BitMode = SE_8BIT;       //单端8位精度	
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  120   sensor1_adc_init.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间	
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  121   sensor1_adc_init.ADC_HwAvgSel = HW_4AVG;       //禁用硬件平均	
        MOVS     R0,#+4
        STRB     R0,[SP, #+12]
//  122   sensor1_adc_init.ADC_CalEnable = TRUE; //使能初始化校验	
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
//  123   sensor1_adc_init.ADC_MuxSel = MUX_ADXXA;
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
//  124   LPLD_ADC_Init(sensor1_adc_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//  125   LPLD_ADC_Chn_Enable(ADC1, AD13);     //AD5--5
        MOVS     R1,#+13
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  126   LPLD_ADC_Chn_Enable(ADC1, AD12);    //AD6--0
        MOVS     R1,#+12
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  127   LPLD_ADC_Chn_Enable(ADC1, AD14);    //AD8--1
        MOVS     R1,#+14
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  128   LPLD_ADC_Chn_Enable(ADC1, AD15);    //AD7--2
        MOVS     R1,#+15
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  129   LPLD_ADC_Chn_Enable(ADC1, AD10);    //AD4--3
        MOVS     R1,#+10
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  130   LPLD_ADC_Chn_Enable(ADC1, AD11);    //AD3--4
        MOVS     R1,#+11
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  131   LPLD_ADC_Chn_Enable(ADC1, AD8);     //AD2--6
        MOVS     R1,#+8
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  132   LPLD_ADC_Chn_Enable(ADC1, AD9);     
        MOVS     R1,#+9
        LDR.W    R0,??DataTable12_6  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//  133 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void Rudder_ftm2_init()
//  136 {  
Rudder_ftm2_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  137   FTM_InitTypeDef Rudder_ftm2_init;
//  138   Rudder_ftm2_init.FTM_Ftmx = FTM2;           
        LDR.W    R0,??DataTable12_7  ;; 0x400b8000
        STR      R0,[SP, #+12]
//  139   Rudder_ftm2_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  140   Rudder_ftm2_init.FTM_PwmFreq = 300;          
        MOV      R0,#+300
        STR      R0,[SP, #+20]
//  141   Rudder_ftm2_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  142   LPLD_FTM_Init(Rudder_ftm2_init);  
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  143   
//  144   LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, Rudder_Init, PTA11, ALIGN_LEFT);   
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+11
        LDR.N    R0,??DataTable12_8
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable12_7  ;; 0x400b8000
        BL       LPLD_FTM_PWM_Enable
//  145 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  146 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  147 void Motor_ftm0_init()
//  148 {
Motor_ftm0_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  149   FTM_InitTypeDef motor_ftm0_init;
//  150   motor_ftm0_init.FTM_Ftmx = FTM0;           
        LDR.N    R0,??DataTable12_9  ;; 0x40038000
        STR      R0,[SP, #+12]
//  151   motor_ftm0_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  152   motor_ftm0_init.FTM_PwmFreq = 25000;          
        MOVW     R0,#+25000
        STR      R0,[SP, #+20]
//  153   motor_ftm0_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  154   LPLD_FTM_Init(motor_ftm0_init);    
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  155   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch1, 0, PTA4, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable12_9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  156   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch2, 0, PTA5, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable12_9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  157 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  158 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void qd_ftm1_init()
//  160 {
qd_ftm1_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  161   FTM_InitTypeDef QD_init_struct;
//  162   QD_init_struct.FTM_Ftmx = FTM1;  //初始化右编码器
        LDR.N    R0,??DataTable12_10  ;; 0x40039000
        STR      R0,[SP, #+12]
//  163   QD_init_struct.FTM_Mode = FTM_MODE_QD; 
        MOVS     R0,#+4
        STRB     R0,[SP, #+16]
//  164   QD_init_struct.FTM_QdMode = QD_MODE_PHAB;  
        MOVS     R0,#+0
        STRB     R0,[SP, #+30]
//  165   QD_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
//  166   LPLD_FTM_Init(QD_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  167   LPLD_FTM_QD_Enable(FTM1, PTA8, PTA9); 
        MOVS     R2,#+9
        MOVS     R1,#+8
        LDR.N    R0,??DataTable12_10  ;; 0x40039000
        BL       LPLD_FTM_QD_Enable
//  168 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  169 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void pit_hcsr04_init()
//  171 {
//  172   //开启定时模块时钟
//  173   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
pit_hcsr04_init:
        LDR.N    R0,??DataTable12_11  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable12_11  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  174   PIT->MCR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_12  ;; 0x40037000
        STR      R0,[R1, #+0]
//  175   PIT->CHANNEL[1].LDVAL = 0x20000000;
        MOVS     R0,#+536870912
        LDR.N    R1,??DataTable12_13  ;; 0x40037110
        STR      R0,[R1, #+0]
//  176   PIT->CHANNEL[1].TCTRL = PIT_TCTRL_TEN_MASK; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_14  ;; 0x40037118
        STR      R0,[R1, #+0]
//  177   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK; 
        LDR.N    R0,??DataTable12_15  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12_15  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  178 }
        BX       LR               ;; return
//  179 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 void DialSwitch_init()
//  181 {
DialSwitch_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  182   //拨码开关： PTD7->1, PTD6->2, PTD9->3, PTD8->4
//  183   GPIO_InitTypeDef  DialSwitch_init_struct;
//  184   DialSwitch_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  185   DialSwitch_init_struct.GPIO_Pins = GPIO_Pin7|GPIO_Pin6|GPIO_Pin9|GPIO_Pin8|GPIO_Pin10|GPIO_Pin11;
        MOV      R0,#+4032
        STR      R0,[SP, #+8]
//  186   DialSwitch_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  187   DialSwitch_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  188   DialSwitch_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  189   LPLD_GPIO_Init(DialSwitch_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  190 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  191 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 void KeyBoard_init()
//  193 {
KeyBoard_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  194   //按键： PTD1->3, PTD0->4, PTD3->5
//  195   GPIO_InitTypeDef  KeyBoard_init_struct;
//  196   KeyBoard_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  197   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin1|GPIO_Pin0|GPIO_Pin3;
        MOVS     R0,#+11
        STR      R0,[SP, #+8]
//  198   KeyBoard_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  199   KeyBoard_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  200   KeyBoard_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  201   LPLD_GPIO_Init(KeyBoard_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  202   
//  203   //  PTC14->1 , PTC15->2
//  204   KeyBoard_init_struct.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[SP, #+4]
//  205   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin14|GPIO_Pin15;
        MOV      R0,#+49152
        STR      R0,[SP, #+8]
//  206   KeyBoard_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  207   KeyBoard_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  208   KeyBoard_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  209   LPLD_GPIO_Init(KeyBoard_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  210 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  211 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void Led_init()
//  213 {
Led_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  214   //尾灯LED
//  215   GPIO_InitTypeDef  BoardLed_init_struct;
//  216   BoardLed_init_struct.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  217   BoardLed_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin4|GPIO_Pin5;
        MOVS     R0,#+52
        STR      R0,[SP, #+8]
//  218   BoardLed_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  219   BoardLed_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  220   BoardLed_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  221   BoardLed_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  222   LPLD_GPIO_Init(BoardLed_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  223   
//  224 //  //核心板LED: PTE26, PTD15, PTC0, PTA17  
//  225   GPIO_InitTypeDef CoreLed2_init_struct;
//  226   CoreLed2_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable12_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  227   CoreLed2_init_struct.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        STR      R0,[SP, #+8]
//  228   CoreLed2_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  229   CoreLed2_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  230   CoreLed2_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  231   CoreLed2_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  232   LPLD_GPIO_Init(CoreLed2_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  233  
//  234   GPIO_InitTypeDef CoreLed3_init_struct;
//  235   CoreLed3_init_struct.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[SP, #+4]
//  236   CoreLed3_init_struct.GPIO_Pins = GPIO_Pin0;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  237   CoreLed3_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  238   CoreLed3_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  239   CoreLed3_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  240   CoreLed3_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  241   LPLD_GPIO_Init(CoreLed3_init_struct);     
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  242 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void Stop_init()
//  245 {
Stop_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  246   GPIO_InitTypeDef Stop_init_struct;
//  247   Stop_init_struct.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[SP, #+4]
//  248   Stop_init_struct.GPIO_Pins = GPIO_Pin10;
        MOV      R0,#+1024
        STR      R0,[SP, #+8]
//  249   Stop_init_struct.GPIO_PinControl = IRQC_FA;
        MOVS     R0,#+655360
        STR      R0,[SP, #+12]
//  250   Stop_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  251   Stop_init_struct.GPIO_Isr = Stop_Isr;
        LDR.N    R0,??DataTable12_18
        STR      R0,[SP, #+20]
//  252   
//  253   LPLD_GPIO_Init(Stop_init_struct);       
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  254   LPLD_GPIO_EnableIrq(Stop_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//  255 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  256 
//  257 
//  258 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 void OLED_Init(void)
//  260 {
OLED_Init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  261   
//  262   GPIO_InitTypeDef OLED;
//  263   OLED.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  264   OLED.GPIO_Pins = GPIO_Pin12|GPIO_Pin13|GPIO_Pin14|GPIO_Pin15;
        MOV      R0,#+61440
        STR      R0,[SP, #+8]
//  265   OLED.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  266   OLED.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  267   OLED.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  268   OLED.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  269   LPLD_GPIO_Init(OLED);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  270   
//  271   
//  272   OLED_SCL(1);
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  273   OLED_SDA(1);
        MOVS     R2,#+1
        MOVS     R1,#+12
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  274   OLED_RST(0);
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  275   OLED_DC(1); 
        MOVS     R2,#+1
        MOVS     R1,#+14
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  276 
//  277   OLED_SCL(1);
        MOVS     R2,#+1
        MOVS     R1,#+13
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  278   OLED_RST(0);  
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  279   LPLD_LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPLD_LPTMR_DelayMs
//  280   OLED_RST(1);
        MOVS     R2,#+1
        MOVS     R1,#+15
        LDR.N    R0,??DataTable12_16  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//  281 
//  282   
//  283   OLED_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       OLED_WrCmd
//  284   OLED_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  285   OLED_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       OLED_WrCmd
//  286   OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  287   OLED_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       OLED_WrCmd
//  288   OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       OLED_WrCmd
//  289   OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
        MOVS     R0,#+161
        BL       OLED_WrCmd
//  290   OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
        MOVS     R0,#+200
        BL       OLED_WrCmd
//  291   OLED_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  292   OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       OLED_WrCmd
//  293   OLED_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       OLED_WrCmd
//  294   OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       OLED_WrCmd
//  295   OLED_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       OLED_WrCmd
//  296   OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       OLED_WrCmd
//  297   OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       OLED_WrCmd
//  298   OLED_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       OLED_WrCmd
//  299   OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       OLED_WrCmd
//  300   OLED_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       OLED_WrCmd
//  301   OLED_WrCmd(0x12);
        MOVS     R0,#+18
        BL       OLED_WrCmd
//  302   OLED_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       OLED_WrCmd
//  303   OLED_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       OLED_WrCmd
//  304   OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       OLED_WrCmd
//  305   OLED_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       OLED_WrCmd
//  306   OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       OLED_WrCmd
//  307   OLED_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       OLED_WrCmd
//  308   OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       OLED_WrCmd
//  309   OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7)
        MOVS     R0,#+166
        BL       OLED_WrCmd
//  310   OLED_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       OLED_WrCmd
//  311   OLED_Fill(0x00);  //初始清屏
        MOVS     R0,#+0
        BL       OLED_Fill
//  312   OLED_Set_Pos(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Set_Pos
//  313 
//  314 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     RecData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     UltraDis_Measure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     pit_10ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     Rudder_Init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     0x40037110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     0x40037118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     Stop_Isr

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
// 1 678 bytes in section .text
// 
// 1 678 bytes of CODE memory
//
//Errors: none
//Warnings: none
