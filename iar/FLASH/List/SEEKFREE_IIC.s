///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Jul/2017  20:47:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\app\SEEKFREE_IIC.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\app\SEEKFREE_IIC.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\iar\FLASH\List\SEEKFREE_IIC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_8b
        EXTERN __aeabi_memcpy4

        PUBLIC I2C_SendACK
        PUBLIC IIC_ad_main
        PUBLIC IIC_ad_sub
        PUBLIC IIC_buf
        PUBLIC IIC_init
        PUBLIC IIC_num
        PUBLIC IIC_start
        PUBLIC IIC_stop
        PUBLIC SCL_gpio_reset
        PUBLIC SCL_gpio_set
        PUBLIC SDA_gpio_SetIn
        PUBLIC SDA_gpio_SetOut
        PUBLIC SDA_gpio_get
        PUBLIC SDA_gpio_reset
        PUBLIC SDA_gpio_set
        PUBLIC bus_clk_mhz
        PUBLIC core_clk_mhz
        PUBLIC get_clk
        PUBLIC mcgout_clk_mhz
        PUBLIC read_ch
        PUBLIC send_ch
        PUBLIC simiic_delay
        PUBLIC simiic_read_reg
        PUBLIC simiic_write_reg

// C:\Users\lenovo\Desktop\17���ܳ�ʡ��\LPLD_OSKinetis_V3\project\chase_after����������\app\SEEKFREE_IIC.c
//    1 /*********************************************************************************************************************
//    2  * COPYRIGHT NOTICE
//    3  * Copyright (c) 2016,逐飞科技
//    4  * All rights reserved.
//    5  * 技术讨论QQ群：179029047
//    6  *
//    7  * 以下所有内容版权均属逐飞科技所有，未经允许不得用于商业用途，
//    8  * 欢迎各位使用并传播本程序，修改内容时必须保留逐飞科技的版权声明。
//    9  *
//   10  * @file       		SEEKFREE_IIC.c
//   11  * @brief      		模拟IIC函数库
//   12  * @company	   		成都逐飞科技有限公司
//   13  * @author     		Go For It(1325536866)
//   14  * @version    		v1.0
//   15  * @Software 		IAR 7.2 or MDK 5.17
//   16  * @Target core		MK60DN512VLL10
//   17  * @Taobao   		https://seekfree.taobao.com/
//   18  * @date       		2016-02-25
//   19  * @note	
//   20 					模拟IIC接线定义
//   21 					------------------------------------ 
//   22 						SDA                 C17
//   23 						SCL                 C16
//   24 					------------------------------------ 
//   25  ********************************************************************************************************************/
//   26 
//   27 
//   28 #include "Includes.h"
//   29 
//   30 
//   31 #define SDA             SDA_gpio_get()
//   32 #define SDA0()          SDA_gpio_reset()	                //IO口输出低电平
//   33 #define SDA1()          SDA_gpio_set()            		//IO口输出高电平  
//   34 #define SCL0()          SCL_gpio_reset()         		//IO口输出低电平
//   35 #define SCL1()          SCL_gpio_set()	                 	//IO口输出高电平
//   36 #define DIR_OUT()       SDA_gpio_SetOut()                       //输出方向
//   37 #define DIR_IN()        SDA_gpio_SetIn()                        //输入方向
//   38    
//   39                                           
//   40 //内部数据定义

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   41 uint8 IIC_ad_main; //器件从地址	    
IIC_ad_main:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   42 uint8 IIC_ad_sub;  //器件子地址	   
IIC_ad_sub:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 uint8 *IIC_buf;    //发送|接收数据缓冲区	    
IIC_buf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   44 uint8 IIC_num;     //发送|接收数据个数	     
IIC_num:
        DS8 1
//   45 
//   46 #define ack 1      //主应答
//   47 #define no_ack 0   //从应答	 
//   48 
//   49 
//   50 
//   51 //-------------------------------------------------------------------------------------------------------------------
//   52 //  @brief      模拟IIC延时
//   53 //  @return     void						
//   54 //  @since      v1.0
//   55 //  Sample usage:				如果IIC通讯失败可以尝试增加j的值
//   56 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void simiic_delay(void)
//   58 {
//   59 	//64为100K的速率(bus频率为100M)
//   60 	//特别提示OV7725的通信速率不能太高，最好50K左右，j设置为120通信速率为60K，60K的时候可以正常通信
//   61 	//其他IIC器件一般可以400K的通信速率
//   62 	uint16 j=30;   
simiic_delay:
        MOVS     R0,#+30
//   63 	while(j--);
??simiic_delay_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??simiic_delay_0
//   64 }
        BX       LR               ;; return
//   65 
//   66 
//   67 //内部使用，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void IIC_start(void)
//   69 {
IIC_start:
        PUSH     {R7,LR}
//   70 	SDA1();
        BL       SDA_gpio_set
//   71 	SCL1();
        BL       SCL_gpio_set
//   72 	simiic_delay();
        BL       simiic_delay
//   73 	SDA0();
        BL       SDA_gpio_reset
//   74 	simiic_delay();
        BL       simiic_delay
//   75 	SCL0();
        BL       SCL_gpio_reset
//   76 }
        POP      {R0,PC}          ;; return
//   77 
//   78 //内部使用，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void IIC_stop(void)
//   80 {
IIC_stop:
        PUSH     {R7,LR}
//   81 	SDA0();
        BL       SDA_gpio_reset
//   82 	SCL0();
        BL       SCL_gpio_reset
//   83 	simiic_delay();
        BL       simiic_delay
//   84 	SCL1();
        BL       SCL_gpio_set
//   85 	simiic_delay();
        BL       simiic_delay
//   86 	SDA1();
        BL       SDA_gpio_set
//   87 	simiic_delay();
        BL       simiic_delay
//   88 }
        POP      {R0,PC}          ;; return
//   89 
//   90 //主应答(包含ack:SDA=0和no_ack:SDA=0)
//   91 //内部使用，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void I2C_SendACK(unsigned char ack_dat)
//   93 {
I2C_SendACK:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   94     SCL0();
        BL       SCL_gpio_reset
//   95 	simiic_delay();
        BL       simiic_delay
//   96 	if(ack_dat) SDA0();
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??I2C_SendACK_0
        BL       SDA_gpio_reset
        B.N      ??I2C_SendACK_1
//   97     else    	SDA1();
??I2C_SendACK_0:
        BL       SDA_gpio_set
//   98 
//   99     SCL1();
??I2C_SendACK_1:
        BL       SCL_gpio_set
//  100     simiic_delay();
        BL       simiic_delay
//  101     SCL0();
        BL       SCL_gpio_reset
//  102     simiic_delay();
        BL       simiic_delay
//  103 }
        POP      {R4,PC}          ;; return
//  104 
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 static int SCCB_WaitAck(void)
//  107 {
SCCB_WaitAck:
        PUSH     {R7,LR}
//  108     SCL0();
        BL       SCL_gpio_reset
//  109 	DIR_IN();
        BL       SDA_gpio_SetIn
//  110 	simiic_delay();
        BL       simiic_delay
//  111 	
//  112 	SCL1();
        BL       SCL_gpio_set
//  113     simiic_delay();
        BL       simiic_delay
//  114 	
//  115     if(SDA)           //应答为高电平，异常，通信失败
        BL       SDA_gpio_get
        CMP      R0,#+0
        BEQ.N    ??SCCB_WaitAck_0
//  116     {
//  117         DIR_OUT();
        BL       SDA_gpio_SetOut
//  118         SCL0();
        BL       SCL_gpio_reset
//  119         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WaitAck_1
//  120     }
//  121     DIR_OUT();
??SCCB_WaitAck_0:
        BL       SDA_gpio_SetOut
//  122     SCL0();
        BL       SCL_gpio_reset
//  123 	simiic_delay();
        BL       simiic_delay
//  124     return 1;
        MOVS     R0,#+1
??SCCB_WaitAck_1:
        POP      {R1,PC}          ;; return
//  125 }
//  126 
//  127 //字节发送程序
//  128 //发送c(可以是数据也可是地址)，送完后接收从应答
//  129 //不考虑从应答位
//  130 //内部使用，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void send_ch(uint8 c)
//  132 {
send_ch:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  133 	uint8 i = 8;
        MOVS     R5,#+8
        B.N      ??send_ch_0
//  134     while(i--)
//  135     {
//  136         if(c & 0x80)	SDA1();//SDA 输出数据
//  137         else			SDA0();
??send_ch_1:
        BL       SDA_gpio_reset
//  138         c <<= 1;
??send_ch_2:
        LSLS     R4,R4,#+1
//  139         simiic_delay();
        BL       simiic_delay
//  140         SCL1();                //SCL 拉高，采集信号
        BL       SCL_gpio_set
//  141         simiic_delay();
        BL       simiic_delay
//  142         SCL0();                //SCL 时钟线拉低
        BL       SCL_gpio_reset
??send_ch_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??send_ch_3
        LSLS     R0,R4,#+24
        BPL.N    ??send_ch_1
        BL       SDA_gpio_set
        B.N      ??send_ch_2
//  143     }
//  144 	SCCB_WaitAck();
??send_ch_3:
        BL       SCCB_WaitAck
//  145 }
        POP      {R0,R4,R5,PC}    ;; return
//  146 
//  147 //字节接收程序
//  148 //接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//  149 //内部使用，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 uint8 read_ch(void)
//  151 {
read_ch:
        PUSH     {R3-R5,LR}
//  152     uint8 i;
//  153     uint8 c;
//  154     c=0;
        MOVS     R5,#+0
//  155     SCL0();
        BL       SCL_gpio_reset
//  156     simiic_delay();
        BL       simiic_delay
//  157     SDA1();             //置数据线为输入方式
        BL       SDA_gpio_set
//  158     DIR_IN();
        BL       SDA_gpio_SetIn
//  159     for(i=0;i<8;i++)
        MOVS     R4,#+0
        B.N      ??read_ch_0
//  160     {
//  161         simiic_delay();
??read_ch_1:
        BL       simiic_delay
//  162         SCL0();         //置时钟线为低，准备接收数据位
        BL       SCL_gpio_reset
//  163         simiic_delay();
        BL       simiic_delay
//  164         SCL1();         //置时钟线为高，使数据线上数据有效
        BL       SCL_gpio_set
//  165         simiic_delay();
        BL       simiic_delay
//  166         c<<=1;
        LSLS     R5,R5,#+1
//  167         if(SDA) c+=1;   //读数据位，将接收的数据存c
        BL       SDA_gpio_get
        CMP      R0,#+0
        BEQ.N    ??read_ch_2
        ADDS     R5,R5,#+1
//  168     }
??read_ch_2:
        ADDS     R4,R4,#+1
??read_ch_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??read_ch_1
//  169     DIR_OUT();
        BL       SDA_gpio_SetOut
//  170 	SCL0();
        BL       SCL_gpio_reset
//  171 	simiic_delay();
        BL       simiic_delay
//  172 	I2C_SendACK(no_ack);
        MOVS     R0,#+0
        BL       I2C_SendACK
//  173 	
//  174     return c;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  175 }
//  176 
//  177 //-------------------------------------------------------------------------------------------------------------------
//  178 //  @brief      模拟IIC写数据到设备寄存器函数
//  179 //  @param      dev_add			设备地址(低七位地址)
//  180 //  @param      reg				寄存器地址
//  181 //  @param      dat				写入的数据
//  182 //  @return     void						
//  183 //  @since      v1.0
//  184 //  Sample usage:				
//  185 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void simiic_write_reg(uint8 dev_add, uint8 reg, uint8 dat)
//  187 {
simiic_write_reg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  188 	IIC_start();
        BL       IIC_start
//  189     send_ch( (dev_add<<1) | 0x00);   //发送器件地址加写位
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  190 	send_ch( reg );   				 //发送从机寄存器地址
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  191 	send_ch( dat );   				 //发送需要写入的数据
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  192 	IIC_stop();
        BL       IIC_stop
//  193 }
        POP      {R4-R6,PC}       ;; return
//  194 
//  195 
//  196 //-------------------------------------------------------------------------------------------------------------------
//  197 //  @brief      模拟IIC从设备寄存器读取数据
//  198 //  @param      dev_add			设备地址(低七位地址)
//  199 //  @param      reg				寄存器地址
//  200 //  @param      type			选择通信方式是IIC  还是 SCCB
//  201 //  @return     uint8			返回寄存器的数据			
//  202 //  @since      v1.0
//  203 //  Sample usage:				
//  204 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 uint8 simiic_read_reg(uint8 dev_add, uint8 reg, IIC_type type)
//  206 {
simiic_read_reg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  207 	uint8 dat;
//  208 	IIC_start();
        BL       IIC_start
//  209     send_ch( (dev_add<<1) | 0x00);  //发送器件地址加写位
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  210 	send_ch( reg );   				//发送从机寄存器地址
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  211 	if(type == SCCB)IIC_stop();
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??simiic_read_reg_0
        BL       IIC_stop
//  212 	
//  213 	IIC_start();
??simiic_read_reg_0:
        BL       IIC_start
//  214 	send_ch( (dev_add<<1) | 0x01);  //发送器件地址加读位
        LSLS     R0,R4,#+1
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  215 	dat = read_ch();   				//发送需要写入的数据
        BL       read_ch
        MOVS     R4,R0
//  216 	IIC_stop();
        BL       IIC_stop
//  217 	
//  218 	return dat;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  219 }
//  220 
//  221 //-------------------------------------------------------------------------------------------------------------------
//  222 //  @brief      模拟IIC端口初始化
//  223 //  @param      NULL
//  224 //  @return     void	
//  225 //  @since      v1.0
//  226 //  Sample usage:				
//  227 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void IIC_init(void)
//  229 {
IIC_init:
        PUSH     {R7,LR}
//  230         SDA1();
        BL       SDA_gpio_set
//  231         SCL1();
        BL       SCL_gpio_set
//  232 }
        POP      {R0,PC}          ;; return
//  233 
//  234 
//  235 //-------------------------------------------------------------------------------------------------------------------
//  236 //  @brief      开机读取单片机频率
//  237 //  @param      NULL
//  238 //  @return     void	
//  239 //  @since      v1.0
//  240 //  Sample usage:				
//  241 //-------------------------------------------------------------------------------------------------------------------
//  242 #define EX_REF_CLK  50 //(定义外部参考时钟为50MHZ)

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  243 uint32 mcgout_clk_mhz = 100;
mcgout_clk_mhz:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  244 uint32 core_clk_mhz = 100;
core_clk_mhz:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  245 uint32 bus_clk_mhz = 100;
bus_clk_mhz:
        DATA
        DC32 100
//  246 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 void get_clk(void)
//  248 {  
//  249     mcgout_clk_mhz = 100;
get_clk:
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7
        STR      R0,[R1, #+0]
//  250     core_clk_mhz = 100;
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//  251     bus_clk_mhz = 100;
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  252 }
        BX       LR               ;; return
//  253 
//  254 
//  255 //-------------------------------------------------------------------------------------------------------------------
//  256 //  @brief      IO口电平状态读取
//  257 //  @param      NULL
//  258 //  @return     void	
//  259 //  @since      v1.0
//  260 //  Sample usage:				
//  261 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 uint8  SDA_gpio_get(void)
//  263 {
SDA_gpio_get:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  264     GPIO_InitTypeDef  SDA_init_struct;
//  265     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  266     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  267     SDA_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//  268     SDA_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  269     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  270     LPLD_GPIO_Init(SDA_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  271     
//  272     return LPLD_GPIO_Input_8b(SDA_PTX, SDA_PinNumX);
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        BL       LPLD_GPIO_Input_8b
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  273 }
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void SDA_gpio_set(void)
//  276 {
SDA_gpio_set:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  277     GPIO_InitTypeDef  SDA_init_struct;
//  278     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  279     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  280     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  281     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  282     SDA_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  283     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  284     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  285 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  286 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void SDA_gpio_reset(void)
//  288 {
SDA_gpio_reset:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  289     GPIO_InitTypeDef  SDA_init_struct;
//  290     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  291     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  292     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  293     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  294     SDA_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  295     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  296     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  297 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  298 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  299 void SCL_gpio_set(void)
//  300 {
SCL_gpio_set:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  301     GPIO_InitTypeDef  SCL_init_struct;
//  302     SCL_init_struct.GPIO_PTx = SCL_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  303     SCL_init_struct.GPIO_Pins = SCL_PinX;
        MOVS     R0,#+64
        STR      R0,[SP, #+8]
//  304     SCL_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  305     SCL_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  306     SCL_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  307     SCL_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  308     LPLD_GPIO_Init(SCL_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  309 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  310 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  311 void SCL_gpio_reset(void)
//  312 {
SCL_gpio_reset:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  313     GPIO_InitTypeDef  SCL_init_struct;
//  314     SCL_init_struct.GPIO_PTx = SCL_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  315     SCL_init_struct.GPIO_Pins = SCL_PinX;
        MOVS     R0,#+64
        STR      R0,[SP, #+8]
//  316     SCL_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  317     SCL_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  318     SCL_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  319     SCL_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  320     LPLD_GPIO_Init(SCL_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  321 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  322 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void  SDA_gpio_SetOut(void)
//  324 {
SDA_gpio_SetOut:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  325     GPIO_InitTypeDef  SDA_init_struct;
//  326     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  327     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  328     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  329     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  330     SDA_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  331     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  332     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  333 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  334 
//  335 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 void  SDA_gpio_SetIn(void)
//  337 {
SDA_gpio_SetIn:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  338     GPIO_InitTypeDef  SDA_init_struct;
//  339     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  340     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  341     SDA_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//  342     SDA_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  343     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  344     LPLD_GPIO_Init(SDA_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  345 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     mcgout_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     bus_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x400ff000

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
//   7 bytes in section .bss
//  12 bytes in section .data
// 856 bytes in section .text
// 
// 856 bytes of CODE memory
//  19 bytes of DATA memory
//
//Errors: none
//Warnings: none
