///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Dec/2016  09:44:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\hardware.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\hardware.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\iar\RAM\List\hardware.s
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
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN pit_5ms

        PUBLIC HardwareInit
        PUBLIC Motor_ftm0_init
        PUBLIC Rudder_ftm3_init
        PUBLIC bluetooth_uart3_init
        PUBLIC hcsr04_init
        PUBLIC nvic_init
        PUBLIC pit_5ms_init
        PUBLIC qd_ftm2_init
        PUBLIC sensor_adc_init

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after\app\hardware.c
//    1 #include "Includes.h"
//    2 
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void HardwareInit()
//    5 {  
HardwareInit:
        PUSH     {R7,LR}
//    6   //nvic_init();
//    7   //hcsr04_init();
//    8   sensor_adc_init();
        BL       sensor_adc_init
//    9   Rudder_ftm3_init();
        BL       Rudder_ftm3_init
//   10   Motor_ftm0_init();
        BL       Motor_ftm0_init
//   11   qd_ftm2_init();
        BL       qd_ftm2_init
//   12   bluetooth_uart3_init();
        BL       bluetooth_uart3_init
//   13   pit_5ms_init();
        BL       pit_5ms_init
//   14   
//   15 }
        POP      {R0,PC}          ;; return
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void bluetooth_uart3_init()
//   18 {
bluetooth_uart3_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   19    UART_InitTypeDef   bluetooth_init;
//   20    bluetooth_init.UART_Uartx = UART3;         //使用UART1	
        LDR.N    R0,??DataTable6  ;; 0x4006d000
        STR      R0,[SP, #+12]
//   21    bluetooth_init.UART_BaudRate = 115200;     //设置波特率115200	
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//   22    bluetooth_init.UART_TxPin = PTE4;          
        MOVS     R0,#+128
        STRB     R0,[SP, #+20]
//   23    bluetooth_init.UART_RxPin = PTE5;          
        MOVS     R0,#+129
        STRB     R0,[SP, #+21]
//   24    LPLD_UART_Init(bluetooth_init);	
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   25 
//   26 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   27 
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void hcsr04_init()
//   30 {
hcsr04_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   31   //超声波触发控制：PTB18作为TRIG
//   32   GPIO_InitTypeDef  hc_trig_init_struct;
//   33   hc_trig_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable6_1  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   34   hc_trig_init_struct.GPIO_Pins = GPIO_Pin18;
        MOVS     R0,#+262144
        STR      R0,[SP, #+8]
//   35   hc_trig_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//   36   hc_trig_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   37   hc_trig_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//   38   hc_trig_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   39   LPLD_GPIO_Init(hc_trig_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   40   
//   41   //超声波回响信号：PTC3作为ECHO
//   42   GPIO_InitTypeDef  hc_echo_init_struct;
//   43   hc_echo_init_struct.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable6_2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   44   hc_echo_init_struct.GPIO_Pins = GPIO_Pin3;
        MOVS     R0,#+8
        STR      R0,[SP, #+8]
//   45   hc_echo_init_struct.GPIO_PinControl = IRQC_RI;
        MOVS     R0,#+589824
        STR      R0,[SP, #+12]
//   46   hc_echo_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   47   hc_echo_init_struct.GPIO_Isr = Dis_measure;
        LDR.N    R0,??DataTable6_3
        STR      R0,[SP, #+20]
//   48   LPLD_GPIO_Init(hc_echo_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   49   LPLD_GPIO_EnableIrq(hc_echo_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   50 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   51 
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void pit_5ms_init(void)
//   54 {
pit_5ms_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   55   PIT_InitTypeDef  pit0_init_struct; 
//   56   pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   57   pit0_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   58   pit0_init_struct.PIT_PeriodUs = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   59   pit0_init_struct.PIT_PeriodMs = 10;  //定时周期5ms
        MOVS     R0,#+10
        STR      R0,[SP, #+12]
//   60   pit0_init_struct.PIT_Isr =  pit_5ms;//设置中断函数
        LDR.N    R0,??DataTable6_4
        STR      R0,[SP, #+20]
//   61   LPLD_PIT_Init(pit0_init_struct);    //初始化PIT0
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   62   LPLD_PIT_EnableIrq(pit0_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   63 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void nvic_init()
//   66 {
nvic_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   67   NVIC_InitTypeDef nvic_init_struct;
//   68   //配置PIT0的NVIC分组
//   69   nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn;
        MOVS     R0,#+68
        STRB     R0,[SP, #+4]
//   70   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        STR      R0,[SP, #+8]
//   71   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//   72   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   73   //配置PORTC_IRQn的NVIC分组
//   74   nvic_init_struct.NVIC_IRQChannel = PORTC_IRQn;
        MOVS     R0,#+89
        STRB     R0,[SP, #+4]
//   75   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        STR      R0,[SP, #+8]
//   76   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   77   LPLD_NVIC_Init(nvic_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   78 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   79 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void sensor_adc_init()
//   81 {
sensor_adc_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   82   ADC_InitTypeDef sensor1_adc_init;
//   83   sensor1_adc_init.ADC_Adcx = ADC1;	
        LDR.N    R0,??DataTable6_5  ;; 0x400bb000
        STR      R0,[SP, #+4]
//   84   sensor1_adc_init.ADC_DiffMode = ADC_SE;       //单端采集	
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   85   sensor1_adc_init.ADC_BitMode = SE_8BIT;       //单端8位精度	
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//   86   sensor1_adc_init.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间	
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//   87   sensor1_adc_init.ADC_HwAvgSel = HW_DISAVG;       //禁用硬件平均	
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   88   sensor1_adc_init.ADC_CalEnable = TRUE; //使能初始化校验	
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
//   89   sensor1_adc_init.ADC_MuxSel = MUX_ADXXA;
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
//   90   LPLD_ADC_Init(sensor1_adc_init);	
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   91   LPLD_ADC_Chn_Enable(ADC1, AD5);
        MOVS     R1,#+5
        LDR.N    R0,??DataTable6_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   92   LPLD_ADC_Chn_Enable(ADC1, AD6);
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   93   LPLD_ADC_Chn_Enable(ADC1, AD7);
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   94   LPLD_ADC_Chn_Enable(ADC1, AD4);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable6_5  ;; 0x400bb000
        BL       LPLD_ADC_Chn_Enable
//   95 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   96 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void Rudder_ftm3_init()
//   98 {
Rudder_ftm3_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   99   FTM_InitTypeDef Rudder_ftm3_init;
//  100   Rudder_ftm3_init.FTM_Ftmx = FTM3;           
        LDR.N    R0,??DataTable6_6  ;; 0x400b9000
        STR      R0,[SP, #+12]
//  101   Rudder_ftm3_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  102   Rudder_ftm3_init.FTM_PwmFreq = 50;          
        MOVS     R0,#+50
        STR      R0,[SP, #+20]
//  103   Rudder_ftm3_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  104   LPLD_FTM_Init(Rudder_ftm3_init);    
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  105   LPLD_FTM_PWM_Enable(FTM3, FTM_Ch0, 650, PTD0, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+92
        MOVW     R2,#+650
        MOVS     R1,#+0
        LDR.N    R0,??DataTable6_6  ;; 0x400b9000
        BL       LPLD_FTM_PWM_Enable
//  106 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  107 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void Motor_ftm0_init()
//  109 {
Motor_ftm0_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  110   FTM_InitTypeDef motor_ftm0_init;
//  111   motor_ftm0_init.FTM_Ftmx = FTM0;           
        LDR.N    R0,??DataTable6_7  ;; 0x40038000
        STR      R0,[SP, #+12]
//  112   motor_ftm0_init.FTM_Mode = FTM_MODE_PWM;   
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  113   motor_ftm0_init.FTM_PwmFreq = 20000;          
        MOVW     R0,#+20000
        STR      R0,[SP, #+20]
//  114   motor_ftm0_init.FTM_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  115   LPLD_FTM_Init(motor_ftm0_init);    
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  116   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch1, 0, PTA4, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable6_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  117   LPLD_FTM_PWM_Enable(FTM0, FTM_Ch2, 0, PTA5, ALIGN_LEFT); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable6_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  118 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void qd_ftm2_init()
//  121 {
qd_ftm2_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  122   FTM_InitTypeDef QD_init_struct;
//  123   QD_init_struct.FTM_Ftmx = FTM2;  //初始化右编码器
        LDR.N    R0,??DataTable6_8  ;; 0x400b8000
        STR      R0,[SP, #+12]
//  124   QD_init_struct.FTM_Mode = FTM_MODE_QD; 
        MOVS     R0,#+4
        STRB     R0,[SP, #+16]
//  125   QD_init_struct.FTM_QdMode = QD_MODE_PHAB;  
        MOVS     R0,#+0
        STRB     R0,[SP, #+30]
//  126   QD_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
//  127   LPLD_FTM_Init(QD_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  128   LPLD_FTM_QD_Enable(FTM2, PTA10, PTA11); 
        MOVS     R2,#+11
        MOVS     R1,#+10
        LDR.N    R0,??DataTable6_8  ;; 0x400b8000
        BL       LPLD_FTM_QD_Enable
//  129 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Dis_measure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     pit_5ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x400b8000

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
// 662 bytes in section .text
// 
// 662 bytes of CODE memory
//
//Errors: none
//Warnings: none
