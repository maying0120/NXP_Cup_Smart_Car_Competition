///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       01/Mar/2017  17:00:43
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\lib\CPU\system_MK60.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\lib\CPU\system_MK60.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after合并程序(0228)\iar\BOOT\List\system_MK60.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PLL_Setup
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN common_relocate
        EXTERN g_bus_clock
        EXTERN g_core_clock
        EXTERN g_flash_clock
        EXTERN g_flexbus_clock
        EXTERN printf

        PUBLIC DefaultISR
        PUBLIC HardFault_Handler
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\lib\CPU\system_MK60.c
//    1 /**
//    2  * @file system_MK60.c
//    3  * @version 1.2.1[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MK60系列单片机系统配置文件
//    6  *
//    7  * 更改建议:禁止修改
//    8  *
//    9  * 该代码提供系统配置函数以及一个储存系统主频的全局变量。
//   10  * 配置函数主要负责建立系统各模块的时钟。
//   11  * 代码还实现常见的系统中断函数。
//   12  *
//   13  * 版权所有:北京拉普兰德电子技术有限公司
//   14  * http://www.lpld.cn
//   15  * mail:support@lpld.cn
//   16  *
//   17  * @par
//   18  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   19  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   20  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   21  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   22  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   23  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   24  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   25  */
//   26 
//   27 #include <stdint.h>
//   28 #include "common.h"
//   29 
//   30 #define DISABLE_WDOG    1
//   31 
//   32 /*----------------------------------------------------------------------------
//   33   定义时钟相关值
//   34  *----------------------------------------------------------------------------*/
//   35 #define CPU_XTAL32k_CLK_HZ              32768u          //外部32k时钟晶振频率，单位Hz    
//   36 #define CPU_INT_SLOW_CLK_HZ             32768u          //慢速内部振荡器的值，单位Hz
//   37 #define CPU_INT_FAST_CLK_HZ             4000000u        //快速内部振荡器的值，单位Hz
//   38 #define DEFAULT_SYSTEM_CLOCK            100000000u      //默认系统主频，单位Hz
//   39 
//   40 static void flash_identify (void);
//   41 static void cpu_identify (void);
//   42 static void Diagnostic_Reset_Source(void);
//   43 /**
//   44  * @brief 系统主频（单位Hz）
//   45  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   46 uint32_t SystemCoreClock = DEFAULT_SYSTEM_CLOCK;
SystemCoreClock:
        DATA
        DC32 100000000
//   47 
//   48 /**
//   49  * 初始化系统
//   50  *
//   51  * @param  none
//   52  * @return none
//   53  *
//   54  * @brief  初始化MCU硬件系统，包括开放IO时钟、初始化主频、初始化调试串口，
//   55  *         打印调试信息。SystemInit由MCU启动文件调用。
//   56  *         
//   57  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void SystemInit (void) {
SystemInit:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   59   UART_InitTypeDef term_port_structure;
//   60   //使能全部IO时钟
//   61   SIM->SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   62               | SIM_SCGC5_PORTB_MASK
//   63               | SIM_SCGC5_PORTC_MASK
//   64               | SIM_SCGC5_PORTD_MASK
//   65               | SIM_SCGC5_PORTE_MASK );
        LDR.W    R0,??DataTable6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable6  ;; 0x40048038
        STR      R0,[R1, #+0]
//   66 #if (DISABLE_WDOG)
//   67   //禁用看门狗模块
//   68   /* WDOG_UNLOCK: WDOGUNLOCK=0xC520 */
//   69   WDOG->UNLOCK = (uint16_t)0xC520u;     /* Key 1 */
        MOVW     R0,#+50464
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   70   /* WDOG_UNLOCK : WDOGUNLOCK=0xD928 */
//   71   WDOG->UNLOCK  = (uint16_t)0xD928u;    /* Key 2 */
        MOVW     R0,#+55592
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   72   /* WDOG_STCTRLH: ??=0,DISTESTWDOG=0,BYTESEL=0,TESTSEL=0,TESTWDOG=0,??=0,STNDBYEN=1,WAITEN=1,STOPEN=1,DBGEN=0,ALLOWUPDATE=1,WINEN=0,IRQRSTEN=0,CLKSRC=1,WDOGEN=0 */
//   73   WDOG->STCTRLH = (uint16_t)0x01D2u;
        MOV      R0,#+466
        LDR.W    R1,??DataTable6_2  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   74 #endif /* (DISABLE_WDOG) */
//   75   
//   76   //将中断向量表、需在RAM中运行的函数等数据拷贝到RAM中
//   77   common_relocate();
        BL       common_relocate
//   78   
//   79   //初始化各部分时钟：系统内核主频、总线时钟、FlexBus时钟、Flash时钟
//   80   LPLD_PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+120
        BL       LPLD_PLL_Setup
//   81   
//   82   //更新内核主频
//   83   SystemCoreClockUpdate();
        BL       SystemCoreClockUpdate
//   84   
//   85   //获取各部分时钟
//   86   g_core_clock = SystemCoreClock;
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//   87   g_bus_clock = g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> SIM_CLKDIV1_OUTDIV2_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//   88   g_flexbus_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK) >> SIM_CLKDIV1_OUTDIV3_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+20,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//   89   g_flash_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> SIM_CLKDIV1_OUTDIV4_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+16,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   90   
//   91   //初始化用于打印调试信息的串口模块
//   92   //TERM_PORT为UART通道，在k60_card.h中定义
//   93   //TERMINAL_BAUD为UART波特率，在k60_card.h中定义
//   94   term_port_structure.UART_Uartx = TERM_PORT;
        LDR.W    R0,??DataTable6_9  ;; 0x400eb000
        STR      R0,[SP, #+12]
//   95   term_port_structure.UART_BaudRate = TERMINAL_BAUD;
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//   96   term_port_structure.UART_TxPin = PTC15;
        MOVS     R0,#+75
        STRB     R0,[SP, #+20]
//   97   term_port_structure.UART_RxPin = PTC14;
        MOVS     R0,#+74
        STRB     R0,[SP, #+21]
//   98   LPLD_UART_Init(term_port_structure);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   99   
//  100   //打印系统调试信息
//  101 #ifdef DEBUG_PRINT     
//  102   printf("\r\n");   
        ADR.N    R0,??DataTable3  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       printf
//  103   printf("*********** 基于拉普兰德K60底层库 http://www.lpld.cn ***********\r\n");
        LDR.W    R0,??DataTable6_10
        BL       printf
//  104   printf("OSKinetis固件库版本:%s\tmail:support@lpld.cn\r\n", OSKinetis_Version);
        LDR.W    R1,??DataTable6_11
        LDR.W    R0,??DataTable6_12
        BL       printf
//  105   printf("系统内核时钟:%dMHz\t总线时钟:%dMHz\r\n", g_core_clock/1000000u, g_bus_clock/1000000u);
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_14
        BL       printf
//  106   printf("FlexBus时钟:%dMHz\tFlash时钟:%dMHz\r\n", g_flexbus_clock/1000000u, g_flash_clock/1000000u);
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_13  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_15
        BL       printf
//  107   printf("系统启动完毕，若要禁用调试输出请定义PRINT_ON_OFF为1(k60_card.h)\r\n");
        LDR.W    R0,??DataTable6_16
        BL       printf
//  108   cpu_identify();
        BL       cpu_identify
//  109   Diagnostic_Reset_Source();
        BL       Diagnostic_Reset_Source
//  110   printf("********************************************************************\r\n");
        LDR.W    R0,??DataTable6_17
        BL       printf
//  111 #endif
//  112   
//  113 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  114 
//  115 /**
//  116  * 更新SystemCoreClock
//  117  *
//  118  * @param  none
//  119  * @return none
//  120  *
//  121  * @brief  更新全局变量SystemCoreClock的值，以便获取最新的系统内核频率。
//  122  *         
//  123  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 void SystemCoreClockUpdate (void) {
//  125   uint32_t temp;
//  126 #if (defined(CPU_MK60DZ10))
//  127   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  128   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  129   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  130   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  131   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  132   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  133   #endif
//  134 #elif (defined(CPU_MK60D10))
//  135   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  136   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  137   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  138   temp = temp;
//  139   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  140   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  141   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  142   temp = temp;
//  143   #endif
//  144 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  145   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  146   temp =  CANNED_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
SystemCoreClockUpdate:
        LDR.W    R0,??DataTable6_18  ;; 0x2faf080
        LDR.W    R1,??DataTable6_19  ;; 0x40064004
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x7
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
//  147   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
        LDR.W    R1,??DataTable6_20  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+16
        MULS     R0,R1,R0
//  148   temp = temp/2;
        LSRS     R0,R0,#+1
//  149   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  150   temp =  CRYSTAL_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
//  151   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
//  152   temp = temp/2;
//  153   #endif
//  154 #endif
//  155   SystemCoreClock = temp;
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  156 }
        BX       LR               ;; return
//  157 
//  158 /**
//  159  * 硬件错误中断函数
//  160  *
//  161  * @param  none
//  162  * @return none
//  163  *
//  164  * @brief  触发此中断的原因一般为：模块使用未初始化、错误的寻址空间等。
//  165  *         
//  166  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 void HardFault_Handler(void)
//  168 {
HardFault_Handler:
        PUSH     {R7,LR}
//  169 #ifdef DEBUG_PRINT 
//  170    printf("\r\n****内核发生硬件错误*****\r\n");
        LDR.W    R0,??DataTable6_21
        BL       printf
//  171 #endif
//  172    return;
        POP      {R0,PC}          ;; return
//  173 }
//  174 
//  175 /**
//  176  * 默认中断函数
//  177  *
//  178  * @param  none
//  179  * @return none
//  180  *
//  181  * @brief  未定义中断处理函数的中断源会进入此函数，并打印中断向量号。
//  182  *         
//  183  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void DefaultISR(void)
//  185 {
DefaultISR:
        PUSH     {R7,LR}
//  186    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04)) 
//  187 #ifdef DEBUG_PRINT 
//  188    printf("\r\n****进入未定义中断,Interrupt Number %d*****\r\n",VECTORNUM-16);
        LDR.W    R0,??DataTable6_22  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+16
        LDR.W    R0,??DataTable6_23
        BL       printf
//  189 #endif
//  190    return;
        POP      {R0,PC}          ;; return
//  191 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x0D, 0x0A, 0x00, 0x00
//  192 
//  193 /**
//  194  * 初始化操作系统的滴答定时器(OS Tick)
//  195  *
//  196  * @param  none
//  197  * @return none
//  198  *
//  199  * @brief  该函数仅在uC/OS等系统中调用，切必须在OSStart()和处理器初始化后调用
//  200  *         
//  201  */
//  202 #if UCOS_II > 0u
//  203 void SystemTickInit (void)
//  204 {
//  205   uint32  cpu_clk_freq;
//  206   uint32  cnts;
//  207 
//  208   cpu_clk_freq = g_core_clock;  //获取SysTick时钟
//  209 
//  210 #if (OS_VERSION >= 30000u)
//  211   cnts  = cpu_clk_freq / (uint32)OSCfg_TickRate_Hz;    
//  212 #else
//  213   cnts  = cpu_clk_freq / (uint32)OS_TICKS_PER_SEC;        
//  214 #endif
//  215 
//  216   OS_CPU_SysTickInit(cnts);     //初始化uCOS滴答定时器SysTick
//  217 }
//  218 #endif
//  219 
//  220 /**
//  221  * Kinetis CPU Identify
//  222  *
//  223  * @param  none
//  224  * @return none
//  225  *
//  226  * @brief 输出Kinetis以下信息
//  227  * - Kinetis family
//  228  * - package
//  229  * - die revision
//  230  * - P-flash size
//  231  * - Ram size
//  232  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 static void cpu_identify (void)
//  234 {
cpu_identify:
        PUSH     {R7,LR}
//  235     /* 判断Kinetis 单片机的型号 */
//  236     switch((SIM->SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR.W    R0,??DataTable6_24  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x7
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_0
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_1
        BCC.N    ??cpu_identify_2
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_3
        BCC.N    ??cpu_identify_4
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_5
        BCC.N    ??cpu_identify_6
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_7
        B.N      ??cpu_identify_8
//  237     {
//  238 #ifdef DEBUG_PRINT 
//  239     	case 0x0:printf("\nK10-");break;
??cpu_identify_0:
        LDR.W    R0,??DataTable6_25
        BL       printf
        B.N      ??cpu_identify_9
//  240     	case 0x1:printf("\nK20-");break;
??cpu_identify_2:
        LDR.W    R0,??DataTable6_26
        BL       printf
        B.N      ??cpu_identify_9
//  241     	case 0x2:printf("\nK30-");break;
??cpu_identify_1:
        LDR.W    R0,??DataTable6_27
        BL       printf
        B.N      ??cpu_identify_9
//  242     	case 0x3:printf("\nK40-");break;
??cpu_identify_4:
        LDR.W    R0,??DataTable6_28
        BL       printf
        B.N      ??cpu_identify_9
//  243     	case 0x4:printf("\nK60-");break;
??cpu_identify_3:
        LDR.W    R0,??DataTable6_29
        BL       printf
        B.N      ??cpu_identify_9
//  244     	case 0x5:printf("\nK70-");break;
??cpu_identify_6:
        LDR.W    R0,??DataTable6_30
        BL       printf
        B.N      ??cpu_identify_9
//  245     	case 0x6:printf("\nK50-");break;
??cpu_identify_5:
        LDR.W    R0,??DataTable6_31
        BL       printf
        B.N      ??cpu_identify_9
//  246     	case 0x7:printf("\nK53-");break;
??cpu_identify_7:
        LDR.W    R0,??DataTable6_32
        BL       printf
        B.N      ??cpu_identify_9
//  247 	default:printf("\n不能识别单片机型号-");break; 
??cpu_identify_8:
        LDR.W    R0,??DataTable6_33
        BL       printf
//  248 #else 	
//  249         default:break; 
//  250 #endif
//  251     }
//  252 
//  253      /* 判断Kinetis 单片机的封装 */
//  254     switch((SIM->SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_identify_9:
        LDR.W    R0,??DataTable6_24  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_10
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_11
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_12
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_13
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_14
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_15
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_16
        CMP      R0,#+10
        BEQ.N    ??cpu_identify_17
        CMP      R0,#+12
        BEQ.N    ??cpu_identify_18
        CMP      R0,#+14
        BEQ.N    ??cpu_identify_19
        B.N      ??cpu_identify_20
//  255     {
//  256 #ifdef DEBUG_PRINT
//  257     	case 0x2:printf("32pin-");break;
??cpu_identify_10:
        LDR.W    R0,??DataTable6_34
        BL       printf
        B.N      ??cpu_identify_21
//  258     	case 0x4:printf("48pin-");break;
??cpu_identify_11:
        LDR.W    R0,??DataTable6_35
        BL       printf
        B.N      ??cpu_identify_21
//  259     	case 0x5:printf("64pin-");break;
??cpu_identify_12:
        LDR.W    R0,??DataTable6_36
        BL       printf
        B.N      ??cpu_identify_21
//  260     	case 0x6:printf("80pin-");break;
??cpu_identify_13:
        LDR.W    R0,??DataTable6_37
        BL       printf
        B.N      ??cpu_identify_21
//  261     	case 0x7:printf("81pin-");break;
??cpu_identify_14:
        LDR.W    R0,??DataTable6_38
        BL       printf
        B.N      ??cpu_identify_21
//  262     	case 0x8:printf("100pin-");break;
??cpu_identify_15:
        LDR.W    R0,??DataTable6_39
        BL       printf
        B.N      ??cpu_identify_21
//  263     	case 0x9:printf("104pin-");break;
??cpu_identify_16:
        LDR.W    R0,??DataTable6_40
        BL       printf
        B.N      ??cpu_identify_21
//  264     	case 0xA:printf("144pin-");break;
??cpu_identify_17:
        LDR.W    R0,??DataTable6_41
        BL       printf
        B.N      ??cpu_identify_21
//  265     	case 0xC:printf("196pin-");break;
??cpu_identify_18:
        LDR.W    R0,??DataTable6_42
        BL       printf
        B.N      ??cpu_identify_21
//  266     	case 0xE:printf("256pin-");break;
??cpu_identify_19:
        LDR.N    R0,??DataTable6_43
        BL       printf
        B.N      ??cpu_identify_21
//  267 	default:printf("不能识别单片机封装-.");break;
??cpu_identify_20:
        LDR.N    R0,??DataTable6_44
        BL       printf
//  268 #else 	
//  269         default:break; 
//  270 #endif  	
//  271     }                
//  272 
//  273 #ifdef DEBUG_PRINT
//  274     printf("Silicon rev 1.%d\n",(SIM->SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
??cpu_identify_21:
        LDR.N    R0,??DataTable6_24  ;; 0x40048024
        LDR      R0,[R0, #+0]
        UBFX     R1,R0,#+12,#+4
        LDR.N    R0,??DataTable6_45
        BL       printf
//  275 #endif  
//  276     /* 判断Kinetis 单片机的P-flash size */
//  277     switch((SIM->FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR.N    R0,??DataTable6_46  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0xF
        CMP      R0,#+11
        BEQ.N    ??cpu_identify_22
        CMP      R0,#+13
        BEQ.N    ??cpu_identify_23
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_24
        B.N      ??cpu_identify_25
//  278     {
//  279 #ifdef DEBUG_PRINT
//  280   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  281     	case 0x7:printf("128 kBytes of P-flash	");break;
//  282     	case 0x9:printf("256 kBytes of P-flash	");break;
//  283         case 0xB:printf("512 kBytes of P-flash	");break;
//  284     	case 0xF:printf("512 kBytes of P-flash	");break;
//  285 	default:printf("不能识别单片机 P-flash size\n");break;
//  286   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15)) 
//  287         case 0xB:printf("512 kBytes of P-flash	");break;
??cpu_identify_22:
        LDR.N    R0,??DataTable6_47
        BL       printf
        B.N      ??cpu_identify_26
//  288     	case 0xD:printf("1024 kBytes of P-flash	");break;
??cpu_identify_23:
        LDR.N    R0,??DataTable6_48
        BL       printf
        B.N      ??cpu_identify_26
//  289     	case 0xF:printf("1024 kBytes of P-flash	");break;
??cpu_identify_24:
        LDR.N    R0,??DataTable6_48
        BL       printf
        B.N      ??cpu_identify_26
//  290 	default:printf("不能识别单片机 P-flash size\n");break;
??cpu_identify_25:
        LDR.N    R0,??DataTable6_49
        BL       printf
//  291   #endif
//  292 #else 	
//  293         default:break; 
//  294 #endif
//  295     }
//  296 
//  297 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  298     /* 判断是否只有 P-flash  或者 P-flash 和 FlexNVM */
//  299     if (SIM->FCFG2 & SIM_FCFG2_PFLSH_MASK) 
//  300   #ifdef DEBUG_PRINT
//  301       printf("P-flash only\n");
//  302   #else 
//  303       asm("nop");
//  304   #endif
//  305     else
//  306       /* 如果单片机有FlexNVM、判断Kinetis 单片机的FlexNVM size */
//  307       switch((SIM->FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
//  308       {
//  309   #ifdef DEBUG_PRINT
//  310 
//  311       	case 0x0:printf("0 kBytes of FlexNVM\n");break;
//  312     	case 0x7:printf("128 kBytes of FlexNVM\n");break;
//  313         case 0x9:printf("256 kBytes of FlexNVM\n");break;
//  314     	case 0xF:printf("256 kBytes of FlexNVM\n");break;
//  315 	default:printf("不能识别单片机 FlexNVM size\n");break;
//  316   #else 	
//  317         default:break; 
//  318   #endif
//  319       }
//  320 #endif
//  321     
//  322     /* 判断Kinetis 单片机的RAM size */
//  323     switch((SIM->SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_identify_26:
        LDR.N    R0,??DataTable6_50  ;; 0x40047000
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+4
        CMP      R0,#+9
        BNE.N    ??cpu_identify_27
//  324     {
//  325 #ifdef DEBUG_PRINT
//  326   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  327     	case 0x5:printf("32 kBytes of RAM\n");break;
//  328     	case 0x7:printf("64 kBytes of RAM\n");break;
//  329     	case 0x8:printf("96 kBytes of RAM\n");break;
//  330     	case 0x9:printf("128 kBytes of RAM\n");break;
//  331 	default:printf("不能识别单片机 RAM size\n");break; 
//  332   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  333         case 0x9:printf("128 kBytes of RAM\n");break;
        LDR.N    R0,??DataTable6_51
        BL       printf
        B.N      ??cpu_identify_28
//  334 	default:printf("不能识别单片机 RAM size\n");break;
??cpu_identify_27:
        LDR.N    R0,??DataTable6_52
        BL       printf
//  335   #endif
//  336 #else 	
//  337         default:break; 
//  338 #endif
//  339     }
//  340     flash_identify(); 
??cpu_identify_28:
        BL       flash_identify
//  341 }
        POP      {R0,PC}          ;; return
//  342 
//  343 /**
//  344  * Kinetis flash Identify
//  345  *
//  346  * @param  none
//  347  * @return none
//  348  *
//  349  * @brief 输出Kinetis以下信息
//  350  * - flash parameter revision
//  351  * - flash version ID
//  352  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  353 static void flash_identify (void)
//  354 {
flash_identify:
        PUSH     {R5-R7,LR}
//  355   uint8 info[8];
//  356 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  357     FTFL->FCCOB0 = 0x03;
//  358     FTFL->FCCOB1 = 0x00;
//  359     FTFL->FCCOB2 = 0x00;
//  360     FTFL->FCCOB3 = 0x00;
//  361     FTFL->FCCOB8 = 0x01;
//  362     FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
//  363     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
//  364     info[0] = FTFL->FCCOB4; info[4] = FTFL->FCCOB8;
//  365     info[1] = FTFL->FCCOB5; info[5] = FTFL->FCCOB9;
//  366     info[2] = FTFL->FCCOB6; info[6] = FTFL->FCCOBA;
//  367     info[3] = FTFL->FCCOB7; info[7] = FTFL->FCCOBB;
//  368 #ifdef DEBUG_PRINT  
//  369     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
//  370     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]); 
//  371 #endif  
//  372     FTFL->FSTAT = 0xFF;
//  373 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  374     FTFE->FCCOB0 = 0x03;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_53  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  375     FTFE->FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_54  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  376     FTFE->FCCOB2 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_55  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  377     FTFE->FCCOB3 = 0x08;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable6_56  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  378     FTFE->FCCOB4 = 0x01;   
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_57  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  379     FTFE->FSTAT = FTFE_FSTAT_CCIF_MASK;
        MOVS     R0,#+128
        LDR.N    R1,??DataTable6_58  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  380     while(!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDR.N    R0,??DataTable6_58  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_identify_0
//  381     info[0] = FTFE->FCCOB4; info[4] = FTFE->FCCOB8;
        LDR.N    R0,??DataTable6_57  ;; 0x4002000b
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+4]
        LDR.N    R0,??DataTable6_59  ;; 0x4002000f
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+8]
//  382     info[1] = FTFE->FCCOB5; info[5] = FTFE->FCCOB9;
        LDR.N    R0,??DataTable6_60  ;; 0x4002000a
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+5]
        LDR.N    R0,??DataTable6_61  ;; 0x4002000e
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+9]
//  383     info[2] = FTFE->FCCOB6; info[6] = FTFE->FCCOBA;
        LDR.N    R0,??DataTable6_62  ;; 0x40020009
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+6]
        LDR.N    R0,??DataTable6_63  ;; 0x4002000d
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+10]
//  384     info[3] = FTFE->FCCOB7; info[7] = FTFE->FCCOBB;
        LDR.N    R0,??DataTable6_64  ;; 0x40020008
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+7]
        LDR.N    R0,??DataTable6_65  ;; 0x4002000c
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+11]
//  385 #ifdef DEBUG_PRINT    
//  386     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
        LDRB     R0,[SP, #+7]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+6]
        LDRB     R2,[SP, #+5]
        LDRB     R1,[SP, #+4]
        LDR.N    R0,??DataTable6_66
        BL       printf
//  387     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]);  
        LDRB     R0,[SP, #+11]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+10]
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        LDR.N    R0,??DataTable6_67
        BL       printf
//  388 #endif   
//  389     FTFE->FSTAT = 0x7F;
        MOVS     R0,#+127
        LDR.N    R1,??DataTable6_58  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  390 #endif
//  391 }
        POP      {R0-R2,PC}       ;; return
//  392 
//  393 /**
//  394  * Diagnostic_Reset_Source
//  395  *
//  396  * @param  none
//  397  * @return none
//  398  *
//  399  * @brief 输出Kinetis复位信息
//  400  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  401 void Diagnostic_Reset_Source(void)
//  402 {
Diagnostic_Reset_Source:
        PUSH     {R7,LR}
//  403 #ifdef DEBUG_PRINT 
//  404 #if (defined(CPU_MK60DZ10)) 
//  405   /* 判断上一次复位的原因*/
//  406   if (MC->SRSH & MC_SRSH_SW_MASK)
//  407           printf("Software Reset\n");
//  408   if (MC->SRSH & MC_SRSH_LOCKUP_MASK)
//  409           printf("Core Lockup Event Reset\n");
//  410   if (MC->SRSH & MC_SRSH_JTAG_MASK)
//  411           printf("JTAG Reset\n");
//  412   if (MC->SRSL & MC_SRSL_POR_MASK)
//  413           printf("Power-on Reset\n");
//  414   if (MC->SRSL & MC_SRSL_PIN_MASK)
//  415           printf("External Pin Reset\n");
//  416   if (MC->SRSL & MC_SRSL_COP_MASK)
//  417           printf("Watchdog(COP) Reset\n");
//  418   if (MC->SRSL & MC_SRSL_LOC_MASK)
//  419           printf("Loss of Clock Reset\n");
//  420   if (MC->SRSL & MC_SRSL_LVD_MASK)
//  421           printf("Low-voltage Detect Reset\n");
//  422   if (MC->SRSL & MC_SRSL_WAKEUP_MASK)
//  423           printf("LLWU Reset\n");
//  424 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15) || defined(CPU_MK60D10))
//  425   
//  426   if (RCM->SRS1 & RCM_SRS1_SACKERR_MASK)
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_0
//  427           printf("Stop Mode Acknowledge Error Reset\n");
        LDR.N    R0,??DataTable6_69
        BL       printf
//  428   if (RCM->SRS1 & RCM_SRS1_EZPT_MASK)
??Diagnostic_Reset_Source_0:
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Diagnostic_Reset_Source_1
//  429           printf("EzPort Reset\n");
        LDR.N    R0,??DataTable6_70
        BL       printf
//  430   if (RCM->SRS1 & RCM_SRS1_MDM_AP_MASK)
??Diagnostic_Reset_Source_1:
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??Diagnostic_Reset_Source_2
//  431           printf("MDM-AP Reset\n");
        LDR.N    R0,??DataTable6_71
        BL       printf
//  432   if (RCM->SRS1 & RCM_SRS1_SW_MASK)
??Diagnostic_Reset_Source_2:
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_3
//  433           printf("Software Reset\n");
        LDR.N    R0,??DataTable6_72
        BL       printf
//  434   if (RCM->SRS1 & RCM_SRS1_LOCKUP_MASK)
??Diagnostic_Reset_Source_3:
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_4
//  435           printf("Core Lockup Event Reset\n");
        LDR.N    R0,??DataTable6_73
        BL       printf
//  436   if (RCM->SRS1 & RCM_SRS1_JTAG_MASK)
??Diagnostic_Reset_Source_4:
        LDR.N    R0,??DataTable6_68  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_5
//  437           printf("JTAG Reset\n");
        LDR.N    R0,??DataTable6_74
        BL       printf
//  438   if (RCM->SRS0 & RCM_SRS0_POR_MASK)
??Diagnostic_Reset_Source_5:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Diagnostic_Reset_Source_6
//  439           printf("Power-on Reset\n");
        LDR.N    R0,??DataTable6_76
        BL       printf
//  440   if (RCM->SRS0 & RCM_SRS0_PIN_MASK)
??Diagnostic_Reset_Source_6:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Diagnostic_Reset_Source_7
//  441           printf("External Pin Reset\n");
        LDR.N    R0,??DataTable6_77
        BL       printf
//  442   if (RCM->SRS0 & RCM_SRS0_WDOG_MASK)
??Diagnostic_Reset_Source_7:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_8
//  443           printf("Watchdog(COP) Reset\n");
        LDR.N    R0,??DataTable6_78
        BL       printf
//  444   if (RCM->SRS0 & RCM_SRS0_LOC_MASK)
??Diagnostic_Reset_Source_8:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_9
//  445           printf("Loss of Clock Reset\n");
        LDR.N    R0,??DataTable6_79
        BL       printf
//  446   if (RCM->SRS0 & RCM_SRS0_LVD_MASK)
??Diagnostic_Reset_Source_9:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_10
//  447           printf("Low-voltage Detect Reset\n");
        LDR.N    R0,??DataTable6_80
        BL       printf
//  448   if (RCM->SRS0 & RCM_SRS0_WAKEUP_MASK)
??Diagnostic_Reset_Source_10:
        LDR.N    R0,??DataTable6_75  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_11
//  449   {
//  450     printf("[outSRS]Wakeup bit set from low power mode exit\n");
        LDR.N    R0,??DataTable6_81
        BL       printf
//  451     printf("[outSRS]SMC_PMPROT = %#02X ", (SMC->PMPROT))  ;
        LDR.N    R0,??DataTable6_82  ;; 0x4007e000
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_83
        BL       printf
//  452     printf("[outSRS]SMC_PMCTRL = %#02X ", (SMC->PMCTRL))  ;
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_85
        BL       printf
//  453     printf("[outSRS]SMC_VLLSCTRL = %#02X ", (SMC->VLLSCTRL))  ;
        LDR.N    R0,??DataTable6_86  ;; 0x4007e002
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_87
        BL       printf
//  454     printf("[outSRS]SMC_PMSTAT = %#02X \r\n", (SMC->PMSTAT))  ;
        LDR.N    R0,??DataTable6_88  ;; 0x4007e003
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_89
        BL       printf
//  455 
//  456     if ((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 3)
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_12
//  457       printf("[outSRS] LLS exit \n") ;
        LDR.N    R0,??DataTable6_90
        BL       printf
//  458     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 1))
??Diagnostic_Reset_Source_12:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_13
        LDR.N    R0,??DataTable6_86  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+1
        BNE.N    ??Diagnostic_Reset_Source_13
//  459       printf("[outSRS] VLLS1 exit \n") ;
        LDR.N    R0,??DataTable6_91
        BL       printf
//  460     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 2))
??Diagnostic_Reset_Source_13:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_14
        LDR.N    R0,??DataTable6_86  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+2
        BNE.N    ??Diagnostic_Reset_Source_14
//  461       printf("[outSRS] VLLS2 exit \n") ;
        LDR.N    R0,??DataTable6_92
        BL       printf
//  462     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 3))
??Diagnostic_Reset_Source_14:
        LDR.N    R0,??DataTable6_84  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_11
        LDR.N    R0,??DataTable6_86  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_11
//  463       printf("[outSRS] VLLS3 exit \n") ; 
        LDR.N    R0,??DataTable6_93
        BL       printf
//  464   }
//  465 #endif
//  466 #endif
//  467 }
??Diagnostic_Reset_Source_11:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x4005200e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     g_flexbus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     g_flash_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x2faf080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     ?_13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_36:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_37:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_38:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_39:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_40:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_41:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_42:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_43:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_44:
        DC32     ?_29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_45:
        DC32     ?_30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_46:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_47:
        DC32     ?_31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_48:
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_49:
        DC32     ?_33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_50:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_51:
        DC32     ?_34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_52:
        DC32     ?_35

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_53:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_54:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_55:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_56:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_57:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_58:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_59:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_60:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_61:
        DC32     0x4002000e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_62:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_63:
        DC32     0x4002000d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_64:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_65:
        DC32     0x4002000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_66:
        DC32     ?_36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_67:
        DC32     ?_37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_68:
        DC32     0x4007f001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_69:
        DC32     ?_38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_70:
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_71:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_72:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_73:
        DC32     ?_42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_74:
        DC32     ?_43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_75:
        DC32     0x4007f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_76:
        DC32     ?_44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_77:
        DC32     ?_45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_78:
        DC32     ?_46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_79:
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_80:
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_81:
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_82:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_83:
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_84:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_85:
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_86:
        DC32     0x4007e002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_87:
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_88:
        DC32     0x4007e003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_89:
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_90:
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_91:
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_92:
        DC32     ?_56

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_93:
        DC32     ?_57

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 20H, 0BBH, 0F9H, 0D3H, 0DAH
        DC8 0C0H, 0ADH, 0C6H, 0D5H, 0C0H, 0BCH, 0B5H, 0C2H
        DC8 4BH, 36H, 30H, 0B5H, 0D7H, 0B2H, 0E3H, 0BFH
        DC8 0E2H, 20H, 68H, 74H, 74H, 70H, 3AH, 2FH
        DC8 2FH, 77H, 77H, 77H, 2EH, 6CH, 70H, 6CH
        DC8 64H, 2EH, 63H, 6EH, 20H, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "OSKinetis\271\314\274\376\277\342\260\346\261\276:%s\tmail:support@lpld.cn\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "3.1 b1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "\317\265\315\263\304\332\272\313\312\261\326\323:%dMHz\t\327\334\317\337\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "FlexBus\312\261\326\323:%dMHz\tFlash\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 0CFH, 0B5H, 0CDH, 0B3H, 0C6H, 0F4H, 0B6H, 0AFH
        DC8 0CDH, 0EAH, 0B1H, 0CFH, 0A3H, 0ACH, 0C8H, 0F4H
        DC8 0D2H, 0AAH, 0BDH, 0FBH, 0D3H, 0C3H, 0B5H, 0F7H
        DC8 0CAH, 0D4H, 0CAH, 0E4H, 0B3H, 0F6H, 0C7H, 0EBH
        DC8 0B6H, 0A8H, 0D2H, 0E5H, 50H, 52H, 49H, 4EH
        DC8 54H, 5FH, 4FH, 4EH, 5FH, 4FH, 46H, 46H
        DC8 0CEH, 0AAH, 31H, 28H, 6BH, 36H, 30H, 5FH
        DC8 63H, 61H, 72H, 64H, 2EH, 68H, 29H, 0DH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "\015\012****\304\332\272\313\267\242\311\372\323\262\274\376\264\355\316\363*****\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "\015\012****\275\370\310\353\316\264\266\250\322\345\326\320\266\317,Interrupt Number %d*****\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_10:
        DATA
        DC8 "\012K10-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_11:
        DATA
        DC8 "\012K20-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_12:
        DATA
        DC8 "\012K30-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_13:
        DATA
        DC8 "\012K40-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_14:
        DATA
        DC8 "\012K60-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_15:
        DATA
        DC8 "\012K70-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_16:
        DATA
        DC8 "\012K50-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_17:
        DATA
        DC8 "\012K53-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_18:
        DATA
        DC8 "\012\262\273\304\334\312\266\261\360\265\245\306\254\273\372\320\315\272\305-"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_19:
        DATA
        DC8 "32pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_20:
        DATA
        DC8 "48pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_21:
        DATA
        DC8 "64pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_22:
        DATA
        DC8 "80pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_23:
        DATA
        DC8 "81pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_24:
        DATA
        DC8 "100pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_25:
        DATA
        DC8 "104pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_26:
        DATA
        DC8 "144pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_27:
        DATA
        DC8 "196pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_28:
        DATA
        DC8 "256pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_29:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372\267\342\327\260-."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_30:
        DATA
        DC8 "Silicon rev 1.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_31:
        DATA
        DC8 "512 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_32:
        DATA
        DC8 "1024 kBytes of P-flash\t"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_33:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 P-flash size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_34:
        DATA
        DC8 "128 kBytes of RAM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_35:
        DATA
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 RAM size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_36:
        DATA
        DC8 "Flash parameter version %d.%d.%d.%d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_37:
        DATA
        DC8 "Flash version ID %d.%d.%d.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_38:
        DATA
        DC8 "Stop Mode Acknowledge Error Reset\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_39:
        DATA
        DC8 "EzPort Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_40:
        DATA
        DC8 "MDM-AP Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_41:
        DATA
        DC8 "Software Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_42:
        DATA
        DC8 "Core Lockup Event Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_43:
        DATA
        DC8 "JTAG Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_44:
        DATA
        DC8 "Power-on Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_45:
        DATA
        DC8 "External Pin Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_46:
        DATA
        DC8 "Watchdog(COP) Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_47:
        DATA
        DC8 "Loss of Clock Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_48:
        DATA
        DC8 "Low-voltage Detect Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_49:
        DATA
        DC8 "[outSRS]Wakeup bit set from low power mode exit\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_50:
        DATA
        DC8 "[outSRS]SMC_PMPROT = %#02X "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_51:
        DATA
        DC8 "[outSRS]SMC_PMCTRL = %#02X "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_52:
        DATA
        DC8 "[outSRS]SMC_VLLSCTRL = %#02X "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_53:
        DATA
        DC8 "[outSRS]SMC_PMSTAT = %#02X \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_54:
        DATA
        DC8 "[outSRS] LLS exit \012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_55:
        DATA
        DC8 "[outSRS] VLLS1 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_56:
        DATA
        DC8 "[outSRS] VLLS2 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_57:
        DATA
        DC8 "[outSRS] VLLS3 exit \012"
        DC8 0, 0

        END
//  468 
// 
//     4 bytes in section .data
// 1 332 bytes in section .rodata
// 1 686 bytes in section .text
// 
// 1 686 bytes of CODE  memory
// 1 332 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
