#include "Includes.h"

extern uint8 Turn_Around;
extern int Rudder_Init;

void HardwareInit()
{ 
  //LPLD_Flash_Init();
  nvic_init(); 
  
  bluetooth_uart4_init();
  LPLD_LPTMR_DelayMs(1000); 
  hcsr04_init();
  pit_hcsr04_init();
  sensor_adc_init();
  Rudder_ftm2_init();  
  Motor_ftm0_init(); 
  qd_ftm1_init(); 
  Stop_init();
  DialSwitch_init();  
  Led_init();
  OLED_Init();
  KeyBoard_init();
}

void bluetooth_uart4_init()
{
  UART_InitTypeDef  uart4_init_struct;
  uart4_init_struct.UART_Uartx = UART4;         //使用UART3	
  uart4_init_struct.UART_BaudRate = 115200;     //设置波特率9600
  uart4_init_struct.UART_RxIntEnable = TRUE;
  uart4_init_struct.UART_TxPin = PTE24;          
  uart4_init_struct.UART_RxPin = PTE25;       
  uart4_init_struct.UART_RxIsr = RecData;
  LPLD_UART_Init(uart4_init_struct);
  LPLD_UART_EnableIrq(uart4_init_struct);
  
  GPIO_InitTypeDef  M0_init_struct;
  M0_init_struct.GPIO_PTx = PTE;
  M0_init_struct.GPIO_Pins = GPIO_Pin26;
  M0_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
  M0_init_struct.GPIO_Dir = DIR_OUTPUT;
  M0_init_struct.GPIO_Output = OUTPUT_H;
  M0_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(M0_init_struct);    

  GPIO_InitTypeDef  M1_init_struct;
  M1_init_struct.GPIO_PTx = PTE;
  M1_init_struct.GPIO_Pins = GPIO_Pin27;
  M1_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
  M1_init_struct.GPIO_Dir = DIR_OUTPUT;
  M1_init_struct.GPIO_Output = OUTPUT_L;
  M1_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(M1_init_struct);    
}

void hcsr04_init()
{
  //超声波回响信号：PTA10作为ECHO
  GPIO_InitTypeDef  hc_echo_init_struct;
  hc_echo_init_struct.GPIO_PTx = PTA;
  hc_echo_init_struct.GPIO_Pins = GPIO_Pin10;
  hc_echo_init_struct.GPIO_PinControl = IRQC_ET;
  hc_echo_init_struct.GPIO_Dir = DIR_INPUT;
  hc_echo_init_struct.GPIO_Isr = UltraDis_Measure;
  LPLD_GPIO_Init(hc_echo_init_struct);    
  LPLD_GPIO_EnableIrq(hc_echo_init_struct);
}

void pit_10ms_init(void)
{
  PIT_InitTypeDef  pit0_init_struct; 
  pit0_init_struct.PIT_Pitx = PIT0;
  pit0_init_struct.PIT_PeriodS = 0;
  pit0_init_struct.PIT_PeriodUs = 0;
  pit0_init_struct.PIT_PeriodMs = 10;  //定时周期5ms
  pit0_init_struct.PIT_Isr = pit_10ms;//设置中断函数
  LPLD_PIT_Init(pit0_init_struct);    //初始化PIT0
  LPLD_PIT_EnableIrq(pit0_init_struct);
}

void nvic_init()
{
  NVIC_InitTypeDef nvic_init_struct;
 
  //配置PIT1_IRQn的抢占优先级为4
  nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 3;
  LPLD_NVIC_Init(nvic_init_struct);
  
  //配置PIT0_IRQn的抢占优先级为3
  nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
  LPLD_NVIC_Init(nvic_init_struct);
  
  //配置PORTA_IRQn的抢占优先级为2
  nvic_init_struct.NVIC_IRQChannel = PORTA_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  //配置UART4_IRQn的抢占优先级为1
  nvic_init_struct.NVIC_IRQChannel = UART4_RX_TX_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
}


void sensor_adc_init()
{
  ADC_InitTypeDef sensor1_adc_init;
  sensor1_adc_init.ADC_Adcx = ADC1;	
  sensor1_adc_init.ADC_DiffMode = ADC_SE;       //单端采集	
  sensor1_adc_init.ADC_BitMode = SE_8BIT;       //单端8位精度	
  sensor1_adc_init.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间	
  sensor1_adc_init.ADC_HwAvgSel = HW_4AVG;       //禁用硬件平均	
  sensor1_adc_init.ADC_CalEnable = TRUE; //使能初始化校验	
  sensor1_adc_init.ADC_MuxSel = MUX_ADXXA;
  LPLD_ADC_Init(sensor1_adc_init);
  LPLD_ADC_Chn_Enable(ADC1, AD13);     //AD5--5
  LPLD_ADC_Chn_Enable(ADC1, AD12);    //AD6--0
  LPLD_ADC_Chn_Enable(ADC1, AD14);    //AD8--1
  LPLD_ADC_Chn_Enable(ADC1, AD15);    //AD7--2
  LPLD_ADC_Chn_Enable(ADC1, AD10);    //AD4--3
  LPLD_ADC_Chn_Enable(ADC1, AD11);    //AD3--4
  LPLD_ADC_Chn_Enable(ADC1, AD8);     //AD2--6
  LPLD_ADC_Chn_Enable(ADC1, AD9);     
}

void Rudder_ftm2_init()
{  
  FTM_InitTypeDef Rudder_ftm2_init;
  Rudder_ftm2_init.FTM_Ftmx = FTM2;           
  Rudder_ftm2_init.FTM_Mode = FTM_MODE_PWM;   
  Rudder_ftm2_init.FTM_PwmFreq = 300;          
  Rudder_ftm2_init.FTM_Isr = NULL;
  LPLD_FTM_Init(Rudder_ftm2_init);  
  
  LPLD_FTM_PWM_Enable(FTM2, FTM_Ch1, Rudder_Init, PTA11, ALIGN_LEFT);   
}

void Motor_ftm0_init()
{
  FTM_InitTypeDef motor_ftm0_init;
  motor_ftm0_init.FTM_Ftmx = FTM0;           
  motor_ftm0_init.FTM_Mode = FTM_MODE_PWM;   
  motor_ftm0_init.FTM_PwmFreq = 25000;          
  motor_ftm0_init.FTM_Isr = NULL;
  LPLD_FTM_Init(motor_ftm0_init);    
  LPLD_FTM_PWM_Enable(FTM0, FTM_Ch1, 0, PTA4, ALIGN_LEFT); 
  LPLD_FTM_PWM_Enable(FTM0, FTM_Ch2, 0, PTA5, ALIGN_LEFT); 
}

void qd_ftm1_init()
{
  FTM_InitTypeDef QD_init_struct;
  QD_init_struct.FTM_Ftmx = FTM1;  //初始化右编码器
  QD_init_struct.FTM_Mode = FTM_MODE_QD; 
  QD_init_struct.FTM_QdMode = QD_MODE_PHAB;  
  QD_init_struct.FTM_ToiEnable = FALSE;
  LPLD_FTM_Init(QD_init_struct);
  LPLD_FTM_QD_Enable(FTM1, PTA8, PTA9); 
}

void pit_hcsr04_init()
{
  //开启定时模块时钟
  SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
  PIT->MCR = 0x00;
  PIT->CHANNEL[1].LDVAL = 0x20000000;
  PIT->CHANNEL[1].TCTRL = PIT_TCTRL_TEN_MASK; 
  PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK; 
}

void DialSwitch_init()
{
  //拨码开关： PTD7->1, PTD6->2, PTD9->3, PTD8->4
  GPIO_InitTypeDef  DialSwitch_init_struct;
  DialSwitch_init_struct.GPIO_PTx = PTD;
  DialSwitch_init_struct.GPIO_Pins = GPIO_Pin7|GPIO_Pin6|GPIO_Pin9|GPIO_Pin8|GPIO_Pin10|GPIO_Pin11;
  DialSwitch_init_struct.GPIO_PinControl = IRQC_DIS;
  DialSwitch_init_struct.GPIO_Dir = DIR_INPUT;
  DialSwitch_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(DialSwitch_init_struct);    
}

void KeyBoard_init()
{
  //按键： PTD1->3, PTD0->4, PTD3->5
  GPIO_InitTypeDef  KeyBoard_init_struct;
  KeyBoard_init_struct.GPIO_PTx = PTD;
  KeyBoard_init_struct.GPIO_Pins = GPIO_Pin1|GPIO_Pin0|GPIO_Pin3;
  KeyBoard_init_struct.GPIO_PinControl = IRQC_DIS;
  KeyBoard_init_struct.GPIO_Dir = DIR_INPUT;
  KeyBoard_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(KeyBoard_init_struct);
  
  //  PTC14->1 , PTC15->2
  KeyBoard_init_struct.GPIO_PTx = PTC;
  KeyBoard_init_struct.GPIO_Pins = GPIO_Pin14|GPIO_Pin15;
  KeyBoard_init_struct.GPIO_PinControl = IRQC_DIS;
  KeyBoard_init_struct.GPIO_Dir = DIR_INPUT;
  KeyBoard_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(KeyBoard_init_struct);
}

void Led_init()
{
  //尾灯LED
  GPIO_InitTypeDef  BoardLed_init_struct;
  BoardLed_init_struct.GPIO_PTx = PTD;
  BoardLed_init_struct.GPIO_Pins = GPIO_Pin2|GPIO_Pin4|GPIO_Pin5;
  BoardLed_init_struct.GPIO_PinControl = IRQC_DIS|OUTPUT_DSH;
  BoardLed_init_struct.GPIO_Dir = DIR_OUTPUT;
  BoardLed_init_struct.GPIO_Output = OUTPUT_L;
  BoardLed_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(BoardLed_init_struct);    
  
//  //核心板LED: PTE26, PTD15, PTC0, PTA17  
  GPIO_InitTypeDef CoreLed2_init_struct;
  CoreLed2_init_struct.GPIO_PTx = PTA;
  CoreLed2_init_struct.GPIO_Pins = GPIO_Pin17;
  CoreLed2_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
  CoreLed2_init_struct.GPIO_Dir = DIR_OUTPUT;
  CoreLed2_init_struct.GPIO_Output = OUTPUT_H;
  CoreLed2_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(CoreLed2_init_struct);    
 
  GPIO_InitTypeDef CoreLed3_init_struct;
  CoreLed3_init_struct.GPIO_PTx = PTC;
  CoreLed3_init_struct.GPIO_Pins = GPIO_Pin0;
  CoreLed3_init_struct.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
  CoreLed3_init_struct.GPIO_Dir = DIR_OUTPUT;
  CoreLed3_init_struct.GPIO_Output = OUTPUT_H;
  CoreLed3_init_struct.GPIO_Isr = NULL;
  LPLD_GPIO_Init(CoreLed3_init_struct);     
}

void Stop_init()
{
  GPIO_InitTypeDef Stop_init_struct;
  Stop_init_struct.GPIO_PTx = PTC;
  Stop_init_struct.GPIO_Pins = GPIO_Pin10;
  Stop_init_struct.GPIO_PinControl = IRQC_FA;
  Stop_init_struct.GPIO_Dir = DIR_INPUT;
  Stop_init_struct.GPIO_Isr = Stop_Isr;
  
  LPLD_GPIO_Init(Stop_init_struct);       
  LPLD_GPIO_EnableIrq(Stop_init_struct);
}



void OLED_Init(void)
{
  
  GPIO_InitTypeDef OLED;
  OLED.GPIO_PTx = PTD;
  OLED.GPIO_Pins = GPIO_Pin12|GPIO_Pin13|GPIO_Pin14|GPIO_Pin15;
  OLED.GPIO_PinControl = OUTPUT_DSH|IRQC_DIS;
  OLED.GPIO_Dir = DIR_OUTPUT;
  OLED.GPIO_Output = OUTPUT_H;
  OLED.GPIO_Isr = NULL;
  LPLD_GPIO_Init(OLED);
  
  
  OLED_SCL(1);
  OLED_SDA(1);
  OLED_RST(0);
  OLED_DC(1); 

  OLED_SCL(1);
  OLED_RST(0);  
  LPLD_LPTMR_DelayMs(50);
  OLED_RST(1);

  
  OLED_WrCmd(0xae);//--turn off oled panel
  OLED_WrCmd(0x00);//---set low column address
  OLED_WrCmd(0x10);//---set high column address
  OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
  OLED_WrCmd(0x81);//--set contrast control register
  OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
  OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
  OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
  OLED_WrCmd(0xa6);//--set normal display
  OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
  OLED_WrCmd(0x3f);//--1/64 duty
  OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
  OLED_WrCmd(0x00);//-not offset
  OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
  OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
  OLED_WrCmd(0xd9);//--set pre-charge period
  OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
  OLED_WrCmd(0xda);//--set com pins hardware configuration
  OLED_WrCmd(0x12);
  OLED_WrCmd(0xdb);//--set vcomh
  OLED_WrCmd(0x40);//Set VCOM Deselect Level
  OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
  OLED_WrCmd(0x02);//
  OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
  OLED_WrCmd(0x14);//--set(0x10) disable
  OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
  OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7)
  OLED_WrCmd(0xaf);//--turn on oled panel
  OLED_Fill(0x00);  //初始清屏
  OLED_Set_Pos(0,0);

}
