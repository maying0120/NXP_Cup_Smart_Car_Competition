///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       10/Jul/2017  21:37:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Keyboard.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Keyboard.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Keyboard.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_LPTMR_DelayMs

        PUBLIC Debug_Page_Slt
        PUBLIC Debug_Para_Slt
        PUBLIC Keyboard
        PUBLIC Parameter_Debug
        PUBLIC Parameter_Show
        PUBLIC ShowOrDebug
        PUBLIC Show_Or_Debug
        PUBLIC Show_Page_Slt
        PUBLIC text1
        PUBLIC text2

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Keyboard.c
//    1 #include "Includes.h"
//    2 
//    3 /*
//    4 函数功能：按键调节
//    5 按键：Key[0]--复位，Key[3]--返回上一步，Key[2]--自加，Key[1]--自减 Key[4]-- 返回菜单键 Key[5] -- 下一步
//    6 返回值：无
//    7 */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 ShowOrDebug = Show;
ShowOrDebug:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    9 int8  Show_Page_Slt = 1;
Show_Page_Slt:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   10 int8  Debug_Page_Slt = 1;
Debug_Page_Slt:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 int8  Debug_Para_Slt = 0;
Debug_Para_Slt:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   12 int text1 = 100;
text1:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 int text2 = 300;
text2:
        DATA
        DC32 300
//   14 
//   15 extern int  Limit_Distance_EnterCurve; 
//   16 extern int  Spd_UpLimit; 
//   17 extern int  Spd_DownLimit; 
//   18 extern int  Limit_Distance_EnterStrai; 
//   19 extern int  Spd_Straight;
//   20 
//   21 extern int Limit_Distance_EnterIsland; 
//   22 extern int Island_Spd_UpLimit; 
//   23 extern int Island_Spd_DownLimit;
//   24 
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void Keyboard()
//   27 {  
Keyboard:
        PUSH     {R7,LR}
//   28   //-------调参界面和不可调参界面之间的切换--------
//   29   Show_Or_Debug(); 
        BL       Show_Or_Debug
//   30   
//   31   //------------不可调参界面的参数----------------
//   32   if(ShowOrDebug == Show)
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Keyboard_0
//   33      Parameter_Show();
        BL       Parameter_Show
//   34   
//   35   //-------------可调参界面的参数----------------  
//   36   if(ShowOrDebug == Debug)
??Keyboard_0:
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Keyboard_1
//   37      Parameter_Debug();   
        BL       Parameter_Debug
//   38 }
??Keyboard_1:
        POP      {R0,PC}          ;; return
//   39 
//   40 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void Show_Or_Debug()
//   42 {
Show_Or_Debug:
        PUSH     {R7,LR}
//   43   if(Key_Select == Press)
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Show_Or_Debug_0
//   44   {
//   45      DisableInterrupts; 
        CPSID    I
//   46      LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   47      
//   48      if(Key_Select == Press)
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Show_Or_Debug_1
//   49      {
//   50         while(Key_Select == Press);
??Show_Or_Debug_2:
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Show_Or_Debug_2
//   51         
//   52         if(ShowOrDebug == Show)
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Show_Or_Debug_3
//   53         {
//   54           ShowOrDebug = Debug;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3
        STRB     R0,[R1, #+0]
//   55           Debug_Page_Slt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//   56           Show_Page_Slt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
        B.N      ??Show_Or_Debug_1
//   57         }
//   58         
//   59         else
//   60         {
//   61           ShowOrDebug = Show;
??Show_Or_Debug_3:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRB     R0,[R1, #+0]
//   62           Debug_Para_Slt = 0;          
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//   63           Debug_Page_Slt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//   64           Show_Page_Slt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
//   65         }
//   66      }
//   67      EnableInterrupts;
??Show_Or_Debug_1:
        CPSIE    I
//   68   }
//   69 }
??Show_Or_Debug_0:
        POP      {R0,PC}          ;; return
//   70 
//   71 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 void Parameter_Show()
//   73 {
Parameter_Show:
        PUSH     {R7,LR}
//   74         //-----加1页-------
//   75         if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Show_0
//   76         {
//   77            DisableInterrupts;
        CPSID    I
//   78            
//   79            LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   80            
//   81            if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Show_1
//   82              {
//   83                 while(Key_Up == Press);
??Parameter_Show_2:
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Show_2
//   84                 
//   85                 if(Show_Page_Slt <= Show_Page_Numlimit)
        LDR.W    R0,??DataTable3_3
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BGE.N    ??Parameter_Show_3
//   86                   Show_Page_Slt++;
        LDR.W    R0,??DataTable3_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
//   87                 
//   88                 if(Show_Page_Slt > Show_Page_Numlimit)
??Parameter_Show_3:
        LDR.W    R0,??DataTable3_3
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??Parameter_Show_1
//   89                   Show_Page_Slt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
//   90              }
//   91            
//   92            EnableInterrupts;
??Parameter_Show_1:
        CPSIE    I
//   93         }
//   94         
//   95         //-----减1页-------
//   96         if(Key_Down == Press)
??Parameter_Show_0:
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Show_4
//   97         {
//   98            DisableInterrupts;
        CPSID    I
//   99            
//  100            LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  101            
//  102            if(Key_Down == Press)
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Show_5
//  103              {
//  104                 while(Key_Down == Press);
??Parameter_Show_6:
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Show_6
//  105                 
//  106                 if(Show_Page_Slt > 1)
        LDR.W    R0,??DataTable3_3
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Parameter_Show_5
//  107                   Show_Page_Slt--;                
        LDR.W    R0,??DataTable3_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable3_3
        STRB     R0,[R1, #+0]
//  108              }
//  109            
//  110            EnableInterrupts;
??Parameter_Show_5:
        CPSIE    I
//  111         }
//  112 }
??Parameter_Show_4:
        POP      {R0,PC}          ;; return
//  113 
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void Parameter_Debug()
//  116 {  
Parameter_Debug:
        PUSH     {R7,LR}
//  117         //-------------页面切换--------------
//  118         if(Debug_Para_Slt == 0)
        LDR.W    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_0
//  119         {
//  120             //--------------加1页----------------
//  121             if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_1
//  122             {
//  123                DisableInterrupts;
        CPSID    I
//  124                
//  125                LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  126                
//  127                if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_2
//  128                  {
//  129                     while(Key_Up == Press);
??Parameter_Debug_3:
        MOVS     R1,#+15
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_3
//  130                     
//  131                     if(Debug_Page_Slt <= Debug_Page_Numlimit)
        LDR.W    R0,??DataTable3_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BGE.N    ??Parameter_Debug_2
//  132                       Debug_Page_Slt++;
        LDR.W    R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//  133                  }
//  134                
//  135                EnableInterrupts;
??Parameter_Debug_2:
        CPSIE    I
//  136             }
//  137             
//  138             //--------------减1页----------------
//  139             if(Key_Down == Press)
??Parameter_Debug_1:
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_0
//  140             {
//  141                DisableInterrupts;
        CPSID    I
//  142                
//  143                LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  144                
//  145                if(Key_Down == Press)
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_4
//  146                  {
//  147                     while(Key_Down == Press);
??Parameter_Debug_5:
        MOVS     R1,#+14
        LDR.W    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_5
//  148                     
//  149                     if(Debug_Page_Slt > 1)
        LDR.W    R0,??DataTable3_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Parameter_Debug_4
//  150                       Debug_Page_Slt--;
        LDR.W    R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//  151                  }
//  152                
//  153                EnableInterrupts;
??Parameter_Debug_4:
        CPSIE    I
//  154             }
//  155         
//  156         }
//  157         
//  158         //-------------进入调参--------------
//  159         if(Debug_Para_Slt == 0)
??Parameter_Debug_0:
        LDR.W    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_6
//  160         if(Key_Plus==Press || Key_Minus==Press)
        MOVS     R1,#+1
        LDR.W    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_7
        MOVS     R1,#+3
        LDR.W    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_6
//  161         {
//  162            DisableInterrupts;
??Parameter_Debug_7:
        CPSID    I
//  163            
//  164            LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  165            
//  166            if(Key_Plus==Press || Key_Minus==Press)
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_8
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_9
//  167              {
//  168                 while(Key_Plus==Press || Key_Minus==Press);
??Parameter_Debug_8:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_8
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_8
//  169                 
//  170                 if(Debug_Para_Slt == 0)
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_9
//  171                   Debug_Para_Slt = 1;                
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//  172              }
//  173            EnableInterrupts;
??Parameter_Debug_9:
        CPSIE    I
//  174         }
//  175         
//  176         //------------选择参数---------------
//  177         if(Debug_Para_Slt != 0)
??Parameter_Debug_6:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_10
//  178         {
//  179             //参数位置+
//  180             if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_11
//  181             {
//  182                DisableInterrupts;
        CPSID    I
//  183                
//  184                LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  185                
//  186                if(Key_Up == Press)
        MOVS     R1,#+15
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_12
//  187                  {
//  188                     if(Debug_Para_Slt < Para_NumLimit)
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+6
        BGE.N    ??Parameter_Debug_13
//  189                       Debug_Para_Slt++;                
        LDR.N    R0,??DataTable3_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//  190 
//  191                     while(Key_Up == Press);                    
??Parameter_Debug_13:
        MOVS     R1,#+15
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_13
//  192                  }  
//  193                EnableInterrupts;
??Parameter_Debug_12:
        CPSIE    I
//  194             }
//  195 
//  196             //参数位置-            
//  197             if(Key_Down == Press)
??Parameter_Debug_11:
        MOVS     R1,#+14
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_10
//  198             {
//  199                DisableInterrupts;
        CPSID    I
//  200                
//  201                LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  202                
//  203                if(Key_Down == Press)
        MOVS     R1,#+14
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_14
//  204                  {
//  205                     if(Debug_Para_Slt > 1)
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??Parameter_Debug_15
//  206                       Debug_Para_Slt--;      
        LDR.N    R0,??DataTable3_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//  207                     
//  208                     while(Key_Down == Press);
??Parameter_Debug_15:
        MOVS     R1,#+14
        LDR.N    R0,??DataTable3_5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_15
//  209                  }  
//  210                EnableInterrupts;
??Parameter_Debug_14:
        CPSIE    I
//  211             }
//  212            
//  213         }
//  214 
//  215         //------------参数调节---------------
//  216         if(Debug_Para_Slt != 0)
??Parameter_Debug_10:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Parameter_Debug_16
//  217         {
//  218           //--------参数加----------
//  219           if(Key_Plus == Press)
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_17
//  220           {
//  221               DisableInterrupts;
        CPSID    I
//  222               
//  223               LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  224               
//  225               switch(Debug_Page_Slt)
        LDR.N    R0,??DataTable3_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_18
        BCC.N    ??Parameter_Debug_19
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_20
        BCC.N    ??Parameter_Debug_21
        CMP      R0,#+4
        BEQ.N    ??Parameter_Debug_22
        B.N      ??Parameter_Debug_19
//  226               {
//  227                  //------第一页参数---------
//  228                  case 1:
//  229                  {
//  230                     switch(Debug_Para_Slt)
??Parameter_Debug_18:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_23
        BCC.N    ??Parameter_Debug_24
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_25
        BCC.N    ??Parameter_Debug_26
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_27
        BCC.N    ??Parameter_Debug_28
        B.N      ??Parameter_Debug_24
//  231                     { 
//  232                        case 1:  
//  233                        {
//  234                        }
//  235                        
//  236                        break; 
??Parameter_Debug_23:
        B.N      ??Parameter_Debug_29
//  237                        
//  238                        case 2:      break;
??Parameter_Debug_26:
        B.N      ??Parameter_Debug_29
//  239                        
//  240                        case 3:      break;  
??Parameter_Debug_25:
        B.N      ??Parameter_Debug_29
//  241                        
//  242                        case 4:      break;
??Parameter_Debug_28:
        B.N      ??Parameter_Debug_29
//  243                      
//  244                        case 5:      break;                
??Parameter_Debug_27:
        B.N      ??Parameter_Debug_29
//  245                        
//  246                        default:     break; 
//  247                     }
//  248                  }
//  249                  break;
??Parameter_Debug_24:
??Parameter_Debug_29:
        B.N      ??Parameter_Debug_30
//  250 
//  251                  //------第二页参数---------               
//  252                  case 2:
//  253                  {
//  254                     switch(Debug_Para_Slt)
??Parameter_Debug_21:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_31
        BCC.N    ??Parameter_Debug_32
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_33
        BCC.N    ??Parameter_Debug_34
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_35
        BCC.N    ??Parameter_Debug_36
        B.N      ??Parameter_Debug_32
//  255                     {
//  256                        case 1:      break;     
??Parameter_Debug_31:
        B.N      ??Parameter_Debug_37
//  257                        case 2:      break;
??Parameter_Debug_34:
        B.N      ??Parameter_Debug_37
//  258                        case 3:      break;     
??Parameter_Debug_33:
        B.N      ??Parameter_Debug_37
//  259                        case 4:      break;     
??Parameter_Debug_36:
        B.N      ??Parameter_Debug_37
//  260                        case 5:      break;     
??Parameter_Debug_35:
        B.N      ??Parameter_Debug_37
//  261                        default:     break; 
//  262                     }
//  263                  }
//  264                  break;
??Parameter_Debug_32:
??Parameter_Debug_37:
        B.N      ??Parameter_Debug_30
//  265 
//  266                  //------第三页参数---------                              
//  267                  case 3:
//  268                  {
//  269                     switch(Debug_Para_Slt)
??Parameter_Debug_20:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_38
        BCC.N    ??Parameter_Debug_39
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_40
        BCC.N    ??Parameter_Debug_41
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_42
        BCC.N    ??Parameter_Debug_43
        B.N      ??Parameter_Debug_39
//  270                     {
//  271                        case 1:      break;     
??Parameter_Debug_38:
        B.N      ??Parameter_Debug_44
//  272                        case 2:      break;
??Parameter_Debug_41:
        B.N      ??Parameter_Debug_44
//  273                        case 3:      break;     
??Parameter_Debug_40:
        B.N      ??Parameter_Debug_44
//  274                        case 4:      break;     
??Parameter_Debug_43:
        B.N      ??Parameter_Debug_44
//  275                        case 5:      break;     
??Parameter_Debug_42:
        B.N      ??Parameter_Debug_44
//  276                        default:     break; 
//  277                     }
//  278                  }
//  279                  break;
??Parameter_Debug_39:
??Parameter_Debug_44:
        B.N      ??Parameter_Debug_30
//  280 
//  281                  //------第四页参数---------                                             
//  282                  case 4:
//  283                  {
//  284                     switch(Debug_Para_Slt)
??Parameter_Debug_22:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_45
        BCC.N    ??Parameter_Debug_46
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_47
        BCC.N    ??Parameter_Debug_48
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_49
        BCC.N    ??Parameter_Debug_50
        B.N      ??Parameter_Debug_46
//  285                     {
//  286                        case 1:      break;     
??Parameter_Debug_45:
        B.N      ??Parameter_Debug_51
//  287                        case 2:      break;
??Parameter_Debug_48:
        B.N      ??Parameter_Debug_51
//  288                        case 3:      break;     
??Parameter_Debug_47:
        B.N      ??Parameter_Debug_51
//  289                        case 4:      break;     
??Parameter_Debug_50:
        B.N      ??Parameter_Debug_51
//  290                        case 5:      break;     
??Parameter_Debug_49:
        B.N      ??Parameter_Debug_51
//  291                        default:     break; 
//  292                     }
//  293                  }
//  294                  break;
??Parameter_Debug_46:
??Parameter_Debug_51:
        B.N      ??Parameter_Debug_30
//  295                                   
//  296                  default:
//  297                  break;
//  298               }    
//  299              
//  300               while(Key_Plus == Press);                 
??Parameter_Debug_19:
??Parameter_Debug_30:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_30
//  301              
//  302               EnableInterrupts;
        CPSIE    I
//  303           }
//  304 
//  305           //--------参数减----------
//  306           if(Key_Minus == Press)
??Parameter_Debug_17:
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BNE.N    ??Parameter_Debug_16
//  307           {
//  308               DisableInterrupts;
        CPSID    I
//  309               
//  310               LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//  311               
//  312               switch(Debug_Page_Slt)
        LDR.N    R0,??DataTable3_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_52
        BCC.N    ??Parameter_Debug_53
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_54
        BCC.N    ??Parameter_Debug_55
        CMP      R0,#+4
        BEQ.N    ??Parameter_Debug_56
        B.N      ??Parameter_Debug_53
//  313               {
//  314                  //------第一页参数---------
//  315                  case 1:
//  316                  {
//  317                     switch(Debug_Para_Slt)
??Parameter_Debug_52:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_57
        BCC.N    ??Parameter_Debug_58
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_59
        BCC.N    ??Parameter_Debug_60
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_61
        BCC.N    ??Parameter_Debug_62
        B.N      ??Parameter_Debug_58
//  318                     { 
//  319                        case 1:   text1 -= 10;   break;     
??Parameter_Debug_57:
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.N    R1,??DataTable3_6
        STR      R0,[R1, #+0]
        B.N      ??Parameter_Debug_63
//  320                        case 2:      break;
??Parameter_Debug_60:
        B.N      ??Parameter_Debug_63
//  321                        case 3:      break;     
??Parameter_Debug_59:
        B.N      ??Parameter_Debug_63
//  322                        case 4:      break;     
??Parameter_Debug_62:
        B.N      ??Parameter_Debug_63
//  323                        case 5:      break;     
??Parameter_Debug_61:
        B.N      ??Parameter_Debug_63
//  324                        default:     break; 
//  325                     }
//  326                  }
//  327                  break;
??Parameter_Debug_58:
??Parameter_Debug_63:
        B.N      ??Parameter_Debug_64
//  328 
//  329                  //------第二页参数---------               
//  330                  case 2:
//  331                  {
//  332                     switch(Debug_Para_Slt)
??Parameter_Debug_55:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_65
        BCC.N    ??Parameter_Debug_66
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_67
        BCC.N    ??Parameter_Debug_68
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_69
        BCC.N    ??Parameter_Debug_70
        B.N      ??Parameter_Debug_66
//  333                     {
//  334                        case 1:      break;     
??Parameter_Debug_65:
        B.N      ??Parameter_Debug_71
//  335                        case 2:      break;
??Parameter_Debug_68:
        B.N      ??Parameter_Debug_71
//  336                        case 3:      break;     
??Parameter_Debug_67:
        B.N      ??Parameter_Debug_71
//  337                        case 4:      break;     
??Parameter_Debug_70:
        B.N      ??Parameter_Debug_71
//  338                        case 5:      break;     
??Parameter_Debug_69:
        B.N      ??Parameter_Debug_71
//  339                        default:     break; 
//  340                     }
//  341                  }
//  342                  break;
??Parameter_Debug_66:
??Parameter_Debug_71:
        B.N      ??Parameter_Debug_64
//  343 
//  344                  //------第三页参数---------                              
//  345                  case 3:
//  346                  {
//  347                     switch(Debug_Para_Slt)
??Parameter_Debug_54:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_72
        BCC.N    ??Parameter_Debug_73
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_74
        BCC.N    ??Parameter_Debug_75
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_76
        BCC.N    ??Parameter_Debug_77
        B.N      ??Parameter_Debug_73
//  348                     {
//  349                        case 1:      break;     
??Parameter_Debug_72:
        B.N      ??Parameter_Debug_78
//  350                        case 2:      break;
??Parameter_Debug_75:
        B.N      ??Parameter_Debug_78
//  351                        case 3:      break;     
??Parameter_Debug_74:
        B.N      ??Parameter_Debug_78
//  352                        case 4:      break;     
??Parameter_Debug_77:
        B.N      ??Parameter_Debug_78
//  353                        case 5:      break;     
??Parameter_Debug_76:
        B.N      ??Parameter_Debug_78
//  354                        default:     break; 
//  355                     }
//  356                  }
//  357                  break;
??Parameter_Debug_73:
??Parameter_Debug_78:
        B.N      ??Parameter_Debug_64
//  358 
//  359                  //------第四页参数---------                                             
//  360                  case 4:
//  361                  {
//  362                     switch(Debug_Para_Slt)
??Parameter_Debug_56:
        LDR.N    R0,??DataTable3_4
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Debug_79
        BCC.N    ??Parameter_Debug_80
        CMP      R0,#+3
        BEQ.N    ??Parameter_Debug_81
        BCC.N    ??Parameter_Debug_82
        CMP      R0,#+5
        BEQ.N    ??Parameter_Debug_83
        BCC.N    ??Parameter_Debug_84
        B.N      ??Parameter_Debug_80
//  363                     {
//  364                        case 1:      break;     
??Parameter_Debug_79:
        B.N      ??Parameter_Debug_85
//  365                        case 2:      break;
??Parameter_Debug_82:
        B.N      ??Parameter_Debug_85
//  366                        case 3:      break;     
??Parameter_Debug_81:
        B.N      ??Parameter_Debug_85
//  367                        case 4:      break;     
??Parameter_Debug_84:
        B.N      ??Parameter_Debug_85
//  368                        case 5:      break;     
??Parameter_Debug_83:
        B.N      ??Parameter_Debug_85
//  369                        default:     break; 
//  370                     }
//  371                  }
//  372                  break;
??Parameter_Debug_80:
??Parameter_Debug_85:
        B.N      ??Parameter_Debug_64
//  373                                   
//  374                  default:
//  375                  break;
//  376               }    
//  377              
//  378               while(Key_Minus == Press);                 
??Parameter_Debug_53:
??Parameter_Debug_64:
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff0c0
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??Parameter_Debug_64
//  379              
//  380               EnableInterrupts;
        CPSIE    I
//  381           }
//  382 
//  383         }
//  384 }
??Parameter_Debug_16:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ShowOrDebug

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     Debug_Page_Slt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     Show_Page_Slt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     Debug_Para_Slt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     text1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  385 
//  386 
//  387 
// 
//     2 bytes in section .bss
//    10 bytes in section .data
// 1 238 bytes in section .text
// 
// 1 238 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
