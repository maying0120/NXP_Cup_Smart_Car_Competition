///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       18/Jun/2017  15:42:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\飞思卡尔\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c
//    Command line =  
//        E:\飞思卡尔\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c -D LPLD_K60 -D
//        USE_K60F12 -lCN
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\FLASH\List\
//        -lB
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\FLASH\List\
//        -o
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "D:\新建文件夹
//        (软件)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\app\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\CPU\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\common\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\LPLD\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\LPLD\HW\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\FatFs\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\FatFs\option\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\USB\common\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\USB\driver\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\USB\descriptor\
//        -I
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\..\..\..\lib\USB\class\
//        -Ol -I "D:\新建文件夹 (软件)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        E:\飞思卡尔\LPLD_OSKinetis_V3\project\chase_after0615（环岛跟随+环岛超车+直道超车get）备份\iar\FLASH\List\HW_FLASH.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_Flash_ByteProgram
        PUBLIC LPLD_Flash_Init
        PUBLIC LPLD_Flash_SectorErase
        PUBLIC flash_read

// E:\飞思卡尔\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c
//    1 /**
//    2  * @file HW_FLASH.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTFL底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"
//   23 #include "HW_FLASH.h"
//   24 
//   25 /*
//   26  * LPLD_Flash_Init
//   27  * Flash模块初始化
//   28  * 
//   29  * 参数:
//   30  *    无
//   31  *
//   32  * 输出:
//   33  *    无
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void LPLD_Flash_Init(void)
//   36 {
//   37 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   38   //检查Flash访问错误
//   39   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//   40   {
//   41     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //清除错误标志
//   42   }
//   43   //检查保护错误
//   44   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//   45   {
//   46     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//   47   }
//   48   //检查读冲突错误
//   49   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//   50   {
//   51     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//   52   }
//   53   
//   54   //禁用Flash模块的数据缓存
//   55   FMC->PFB0CR &= ~FMC_PFB0CR_B0DCE_MASK;
//   56   FMC->PFB1CR &= ~FMC_PFB1CR_B1DCE_MASK;
//   57 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)  
//   58   //检查Flash访问错误
//   59   if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
LPLD_Flash_Init:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_Flash_Init_0
//   60   {
//   61     FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK;//清除错误标志
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??LPLD_Flash_Init_1
//   62   }
//   63   //检查保护错误
//   64   else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??LPLD_Flash_Init_0:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??LPLD_Flash_Init_2
//   65   {
//   66     FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??LPLD_Flash_Init_1
//   67   }
//   68   else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_Init_2:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_Flash_Init_1
//   69   {
//   70   //检查读冲突错误
//   71     FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   72   } /* EndIf */
//   73   //禁用Flash模块的数据缓存
//   74   FMC->PFB01CR &= ~FMC_PFB01CR_B01DCE_MASK;
??LPLD_Flash_Init_1:
        LDR.N    R0,??DataTable2_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//   75   FMC->PFB23CR &= ~FMC_PFB23CR_B23DCE_MASK;
        LDR.N    R0,??DataTable2_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//   76 #endif
//   77 } 
        BX       LR               ;; return
//   78 
//   79 
//   80 /*
//   81  * LPLD_Flash_SectorErase
//   82  * 擦除Flash扇区
//   83  * 
//   84  * 参数:
//   85  *    FlashPtr--扇区地址指针，即扇区号乘以2048
//   86  *
//   87  * 输出:
//   88  *    错误代码
//   89  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 uint8 LPLD_Flash_SectorErase(uint32 FlashPtr)
//   91 {
LPLD_Flash_SectorErase:
        MOVS     R1,R0
//   92   uint8 Return = FLASH_OK;
        MOVS     R0,#+0
//   93 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//   94   //等待CCIF置1
//   95   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
//   96   //写入命令道FCCOB寄存器
//   97   FTFL->FCCOB0 = FLASH_CMD_ERSSCR;
//   98   FTFL->FCCOB1 = (uint8) (FlashPtr >> 16);
//   99   FTFL->FCCOB2 = (uint8)((FlashPtr >> 8 ) & 0xFF);
//  100   FTFL->FCCOB3 = (uint8)( FlashPtr & 0xFF);
//  101   
//  102   //执行命令
//  103   FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
//  104   //等待命令完成
//  105   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
//  106   
//  107   //检查Flash访问错误
//  108   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//  109   {
//  110     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //清除错误标志
//  111     Return |= FLASH_FACCERR;                    //更新返回值
//  112   }
//  113   //检查Flash保护标志
//  114   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//  115   {
//  116     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//  117     Return |= FLASH_FPVIOL;
//  118   }
//  119   //检查Flash读冲突错误
//  120   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//  121   {
//  122     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//  123     Return |= FLASH_RDCOLERR;
//  124   }
//  125   //检查MGSTAT0非可纠正错误
//  126   else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
//  127   {
//  128     Return |= FLASH_MGSTAT0;
//  129   } 
//  130 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  131   //等待CCIF置1
//  132   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)){};
??LPLD_Flash_SectorErase_0:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_Flash_SectorErase_0
//  133   //写入命令道FCCOB寄存器
//  134   FTFE->FCCOB0 = FlashCmd_SectorErase;
        MOVS     R2,#+9
        LDR.N    R3,??DataTable2_3  ;; 0x40020007
        STRB     R2,[R3, #+0]
//  135   FTFE->FCCOB1 = (uint8_t) (FlashPtr >> 16);
        LSRS     R2,R1,#+16
        LDR.N    R3,??DataTable2_4  ;; 0x40020006
        STRB     R2,[R3, #+0]
//  136   FTFE->FCCOB2 = (uint8_t)((FlashPtr >> 8 ) & 0xFF);
        LSRS     R2,R1,#+8
        LDR.N    R3,??DataTable2_5  ;; 0x40020005
        STRB     R2,[R3, #+0]
//  137   FTFE->FCCOB3 = (uint8_t)( FlashPtr & 0xFF);
        LDR.N    R2,??DataTable2_6  ;; 0x40020004
        STRB     R1,[R2, #+0]
//  138 
//  139   //执行命令
//  140   FTFE->FSTAT |= FTFE_FSTAT_CCIF_MASK;    
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x80
        LDR.N    R2,??DataTable2  ;; 0x40020000
        STRB     R1,[R2, #+0]
//  141   //等待命令完成
//  142   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)) {};
??LPLD_Flash_SectorErase_1:
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_Flash_SectorErase_1
//  143   //检查Flash访问错误
//  144   if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??LPLD_Flash_SectorErase_2
//  145   {
//  146     FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK; //清除错误标志
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x20
        LDR.N    R2,??DataTable2  ;; 0x40020000
        STRB     R1,[R2, #+0]
//  147     Return |= FLASH_FACCERR;              //更新返回值
        ORRS     R0,R0,#0x1
        B.N      ??LPLD_Flash_SectorErase_3
//  148   }
//  149   //检查Flash保护标志
//  150   else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??LPLD_Flash_SectorErase_2:
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??LPLD_Flash_SectorErase_4
//  151   {
//  152     FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x10
        LDR.N    R2,??DataTable2  ;; 0x40020000
        STRB     R1,[R2, #+0]
//  153     Return |= FLASH_FPVIOL;
        ORRS     R0,R0,#0x2
        B.N      ??LPLD_Flash_SectorErase_3
//  154   }
//  155   else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_SectorErase_4:
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+25
        BPL.N    ??LPLD_Flash_SectorErase_5
//  156   {
//  157     FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x40
        LDR.N    R2,??DataTable2  ;; 0x40020000
        STRB     R1,[R2, #+0]
//  158     Return |= FLASH_RDCOLERR;
        ORRS     R0,R0,#0x8
        B.N      ??LPLD_Flash_SectorErase_3
//  159   }
//  160   //检查Flash读冲突错误
//  161   else if (FTFE->FSTAT & FTFE_FSTAT_MGSTAT0_MASK)
??LPLD_Flash_SectorErase_5:
        LDR.N    R1,??DataTable2  ;; 0x40020000
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_Flash_SectorErase_3
//  162   {
//  163     Return |= FLASH_MGSTAT0;
        ORRS     R0,R0,#0x4
//  164   } 
//  165 #endif
//  166   return  Return;
??LPLD_Flash_SectorErase_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  167 }
//  168 
//  169 /*
//  170  * LPLD_Flash_ByteProgram
//  171  * 编程Flash
//  172  * 
//  173  * 参数:
//  174  *    FlashStartAdd--Flash编程起始地址
//  175  *    *DataSrcPtr--数据源指针
//  176  *    NumberOfBytes--数据字节长度
//  177  *
//  178  * 输出:
//  179  *    错误代码
//  180  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 uint8 LPLD_Flash_ByteProgram(uint32 FlashStartAdd, uint32 *DataSrcPtr, uint32 NumberOfBytes)
//  182 {
LPLD_Flash_ByteProgram:
        PUSH     {R4,R5}
        MOVS     R3,R2
//  183   uint8 Return = FLASH_OK;
        MOVS     R2,#+0
//  184   
//  185   uint32 size_buffer;
//  186   
//  187   if (NumberOfBytes == 0)
        CMP      R3,#+0
        BNE.N    ??LPLD_Flash_ByteProgram_0
//  188   {
//  189     return FLASH_CONTENTERR;
        MOVS     R0,#+17
        B.N      ??LPLD_Flash_ByteProgram_1
//  190   }
//  191   else
//  192   {
//  193     size_buffer = (NumberOfBytes - 1)/BYTE_DIV + 1;
??LPLD_Flash_ByteProgram_0:
        SUBS     R3,R3,#+1
        LSRS     R3,R3,#+3
        ADDS     R3,R3,#+1
//  194   }
//  195 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)
//  196   //等待直到CCIF设置
//  197   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
//  198 
//  199   while ((size_buffer) && (Return == FLASH_OK))
//  200   {
//  201     //写FLASH命令到FCCOB
//  202     FTFL->FCCOB0 = FLASH_CMD_PGM4;
//  203     FTFL->FCCOB1 = (uint8)(FlashStartAdd >> 16);
//  204     FTFL->FCCOB2 = (uint8)((FlashStartAdd >> 8) & 0xFF);
//  205     FTFL->FCCOB3 = (uint8)(FlashStartAdd & 0xFF);
//  206     //如果K60设置成为小端格式，进行如下操作
//  207     FTFL->FCCOB4 = (uint8)(*((uint8*)DataSrcPtr+3));
//  208     FTFL->FCCOB5 = (uint8)(*((uint8*)DataSrcPtr+2));
//  209     FTFL->FCCOB6 = (uint8)(*((uint8*)DataSrcPtr+1));
//  210     FTFL->FCCOB7 = (uint8)(*((uint8*)DataSrcPtr+0));
//  211     //如果K60设置成为大端格式，进行如下操作
//  212     //FTFL_FCCOB4 = (uint8)(*((uint_8*)DataSrcPtr+0));
//  213     //FTFL_FCCOB5 = (uint8)(*((uint_8*)DataSrcPtr+1));
//  214     //FTFL_FCCOB6 = (uint8)(*((uint_8*)DataSrcPtr+2));
//  215     //FTFL_FCCOB7 = (uint8)(*((uint_8*)DataSrcPtr+3));
//  216     //设置FLASH加载命令
//  217     FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
//  218     //等待命令完成
//  219     while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
//  220     
//  221     //检测FLASH访问错误
//  222     if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//  223     {
//  224         
//  225         FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;
//  226     
//  227         Return |= FLASH_FACCERR;
//  228     }
//  229     //检测FLASH保护错误
//  230     else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//  231     {
//  232         FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//  233     
//  234         Return |= FLASH_FPVIOL;
//  235     }
//  236     
//  237     else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//  238     {
//  239         FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//  240     
//  241         Return |= FLASH_RDCOLERR;
//  242     }
//  243     else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
//  244     {
//  245         Return |= FLASH_MGSTAT0;
//  246     } 
//  247     size_buffer --;
//  248     (uint32*)DataSrcPtr++;
//  249     FlashStartAdd +=4;
//  250   }
//  251 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15) 
//  252   //等待直到CCIF设置
//  253   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)){};
??LPLD_Flash_ByteProgram_2:
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+24
        BPL.N    ??LPLD_Flash_ByteProgram_2
//  254 
//  255   while ((size_buffer) && (Return == FLASH_OK))
??LPLD_Flash_ByteProgram_3:
        CMP      R3,#+0
        BEQ.N    ??LPLD_Flash_ByteProgram_4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_Flash_ByteProgram_4
//  256   {
//  257     //写FLASH命令到FCCOB
//  258     FTFE->FCCOB0 = FlashCmd_ProgramPhrase;
        MOVS     R4,#+7
        LDR.N    R5,??DataTable2_3  ;; 0x40020007
        STRB     R4,[R5, #+0]
//  259     FTFE->FCCOB1 = (uint8_t)( FlashStartAdd >> 16);
        LSRS     R4,R0,#+16
        LDR.N    R5,??DataTable2_4  ;; 0x40020006
        STRB     R4,[R5, #+0]
//  260     FTFE->FCCOB2 = (uint8_t)((FlashStartAdd >>  8) & 0xFF);
        LSRS     R4,R0,#+8
        LDR.N    R5,??DataTable2_5  ;; 0x40020005
        STRB     R4,[R5, #+0]
//  261     FTFE->FCCOB3 = (uint8_t)( FlashStartAdd & 0xFF);
        LDR.N    R4,??DataTable2_6  ;; 0x40020004
        STRB     R0,[R4, #+0]
//  262     //如果K60设置成为小端格式，进行如下操作
//  263     FTFE->FCCOB4 = (uint8_t)(*((uint8_t*)DataSrcPtr+3));
        LDRB     R4,[R1, #+3]
        LDR.N    R5,??DataTable2_7  ;; 0x4002000b
        STRB     R4,[R5, #+0]
//  264     FTFE->FCCOB5 = (uint8_t)(*((uint8_t*)DataSrcPtr+2));
        LDRB     R4,[R1, #+2]
        LDR.N    R5,??DataTable2_8  ;; 0x4002000a
        STRB     R4,[R5, #+0]
//  265     FTFE->FCCOB6 = (uint8_t)(*((uint8_t*)DataSrcPtr+1));
        LDRB     R4,[R1, #+1]
        LDR.N    R5,??DataTable2_9  ;; 0x40020009
        STRB     R4,[R5, #+0]
//  266     FTFE->FCCOB7 = (uint8_t)(*((uint8_t*)DataSrcPtr+0));
        LDRB     R4,[R1, #+0]
        LDR.N    R5,??DataTable2_10  ;; 0x40020008
        STRB     R4,[R5, #+0]
//  267     FTFE->FCCOB8 = (uint8_t)(*((uint8_t*)DataSrcPtr+7));
        LDRB     R4,[R1, #+7]
        LDR.N    R5,??DataTable2_11  ;; 0x4002000f
        STRB     R4,[R5, #+0]
//  268     FTFE->FCCOB9 = (uint8_t)(*((uint8_t*)DataSrcPtr+6));
        LDRB     R4,[R1, #+6]
        LDR.N    R5,??DataTable2_12  ;; 0x4002000e
        STRB     R4,[R5, #+0]
//  269     FTFE->FCCOBA = (uint8_t)(*((uint8_t*)DataSrcPtr+5));
        LDRB     R4,[R1, #+5]
        LDR.N    R5,??DataTable2_13  ;; 0x4002000d
        STRB     R4,[R5, #+0]
//  270     FTFE->FCCOBB = (uint8_t)(*((uint8_t*)DataSrcPtr+4));
        LDRB     R4,[R1, #+4]
        LDR.N    R5,??DataTable2_14  ;; 0x4002000c
        STRB     R4,[R5, #+0]
//  271     //如果K60设置成为大端格式，进行如下操作
//  272     //FTFE_FCCOB4 = (uint8_t)(*((uint_8*)DataSrcPtr+0));
//  273     //FTFE_FCCOB5 = (uint8_t)(*((uint_8*)DataSrcPtr+1));
//  274     //FTFE_FCCOB6 = (uint8_t)(*((uint_8*)DataSrcPtr+2));
//  275     //FTFE_FCCOB7 = (uint8_t)(*((uint_8*)DataSrcPtr+3));
//  276     //设置FLASH加载命令
//  277     FTFE->FSTAT |= FTFE_FSTAT_CCIF_MASK;    
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x80
        LDR.N    R5,??DataTable2  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  278     //等待命令完成
//  279     while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)) {};
??LPLD_Flash_ByteProgram_5:
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+24
        BPL.N    ??LPLD_Flash_ByteProgram_5
//  280 
//  281     //检测FLASH访问错误
//  282     if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+26
        BPL.N    ??LPLD_Flash_ByteProgram_6
//  283     {
//  284       FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK;
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x20
        LDR.N    R5,??DataTable2  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  285       Return |= FLASH_FACCERR;
        ORRS     R2,R2,#0x1
        B.N      ??LPLD_Flash_ByteProgram_7
//  286     }
//  287     //检测FLASH保护错误
//  288     else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??LPLD_Flash_ByteProgram_6:
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+27
        BPL.N    ??LPLD_Flash_ByteProgram_8
//  289     {
//  290       FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x10
        LDR.N    R5,??DataTable2  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  291       Return |= FLASH_FPVIOL;
        ORRS     R2,R2,#0x2
        B.N      ??LPLD_Flash_ByteProgram_7
//  292     }
//  293     else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_ByteProgram_8:
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+25
        BPL.N    ??LPLD_Flash_ByteProgram_9
//  294     {
//  295       FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x40
        LDR.N    R5,??DataTable2  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  296       Return |= FLASH_RDCOLERR;
        ORRS     R2,R2,#0x8
        B.N      ??LPLD_Flash_ByteProgram_7
//  297     }
//  298     else if (FTFE->FSTAT & FTFE_FSTAT_MGSTAT0_MASK)
??LPLD_Flash_ByteProgram_9:
        LDR.N    R4,??DataTable2  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BPL.N    ??LPLD_Flash_ByteProgram_7
//  299     {
//  300         Return |= FLASH_MGSTAT0;
        ORRS     R2,R2,#0x4
//  301     } 
//  302     //计算偏移量
//  303     size_buffer --;
??LPLD_Flash_ByteProgram_7:
        SUBS     R3,R3,#+1
//  304     DataSrcPtr += 2;     
        ADDS     R1,R1,#+8
//  305     FlashStartAdd +=BYTE_DIV;
        ADDS     R0,R0,#+8
        B.N      ??LPLD_Flash_ByteProgram_3
//  306   }
//  307 #endif
//  308   return  Return;
??LPLD_Flash_ByteProgram_4:
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_Flash_ByteProgram_1:
        POP      {R4,R5}
        BX       LR               ;; return
//  309 } 

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4001f004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4001f008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x4002000e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x4002000d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x4002000c
//  310 
//  311 
//  312 /*
//  313  * flash_read
//  314  * 读取flash
//  315  * 
//  316  * 参数:
//  317  *    sector-扇区号，0~127
//  318  *    offset--偏移数
//  319  *
//  320  * 输出:
//  321  *    数据
//  322  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 uint32 flash_read(uint8 sector,uint32 offset)
//  324 {
flash_read:
        PUSH     {R0-R4}
//  325    int result[4];
//  326    for(uint8 i=0; i<4; i++)
        MOVS     R2,#+0
        B.N      ??flash_read_0
//  327       result[i] = *((int*)(sector*0x0800 + 4*offset+i));                  
??flash_read_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R3,#+2048
        LSLS     R4,R1,#+2
        MLA      R3,R3,R0,R4
        UXTAB    R3,R3,R2
        LDR      R3,[R3, #+0]
        ADD      R4,SP,#+0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R3,[R4, R2, LSL #+2]
        ADDS     R2,R2,#+1
??flash_read_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BLT.N    ??flash_read_1
//  328 
//  329    return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+16
        POP      {R4}
        BX       LR               ;; return
//  330 }

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
// 580 bytes in section .text
// 
// 580 bytes of CODE memory
//
//Errors: none
//Warnings: 1
