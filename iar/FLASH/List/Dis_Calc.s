///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Jul/2017  13:16:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Dis_Calc.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Dis_Calc.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\Dis_Calc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Case2_Ahead_KeepSide
        EXTERN Case2_Behind_KeepSide
        EXTERN Dir_IslandTurn
        EXTERN Flag_Island_Confirm
        EXTERN Flag_Island_Confirm_Dir
        EXTERN Flag_Island_Confirm_Last
        EXTERN Island_Handle
        EXTERN LPLD_ADC_Get
        EXTERN OverTake_Straight
        EXTERN Ramp_Handle
        EXTERN Spd_Switch
        EXTERN Turn_Around
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memclr4
        EXTERN final
        EXTERN sqrt

        PUBLIC AveEmax_Calcu
        PUBLIC CalcMaxToMin
        PUBLIC Case3_Behind_PassDis
        PUBLIC Dis_Calc
        PUBLIC E_Max
        PUBLIC Error
        PUBLIC Flag_Direction
        PUBLIC Flag_ForceTurn
        PUBLIC Flag_Island
        PUBLIC Flag_Island_Last
        PUBLIC Flag_Ramp
        PUBLIC ForceTurn_Distance
        PUBLIC Pre_Error
        PUBLIC Prevent_LostLine
        PUBLIC RampAdmit_Distance
        PUBLIC RampIn_Distance
        PUBLIC Set_SensorPara
        PUBLIC Turn_Distance
        PUBLIC ad_convert
        PUBLIC error2_all
        PUBLIC error7_all
        PUBLIC error_all
        PUBLIC error_calcu
        PUBLIC fang
        PUBLIC final_Last
        PUBLIC peak
        PUBLIC peak_calc
        PUBLIC peak_real
        PUBLIC sensor
        PUBLIC start_peak

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\Dis_Calc.c
//    1 #include "Includes.h"
//    2 
//    3 
//    4 //变量定义与声明

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8  Flag_Island = 0; //0:正常, 1:环岛内
Flag_Island:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8  Flag_Ramp = 0;   //0:正常，1:坡道
Flag_Ramp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    7 uint8  Flag_Island_Last = 0;
Flag_Island_Last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8  final_Last;
final_Last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8  fang = 0;
fang:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8  Flag_ForceTurn = 0;
Flag_ForceTurn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 uint8  peak_real[8];
peak_real:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 uint8  sensor[8][SampleNum] = {0}; //电感的多个采样值
sensor:
        DS8 800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 int    peak[8] = {0}; //每个电感的峰峰值
peak:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 int    E_Max[8] = {0};     //电感1，2，3最大电压值
E_Max:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int    start_peak[8][10] = {0};
start_peak:
        DS8 320

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int    RampIn_Distance=0;
RampIn_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int    RampAdmit_Distance = 0;
RampAdmit_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int    ForceTurn_Distance=0;
ForceTurn_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int    Pre_Error[ErrorNum] = {0};
Pre_Error:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int    Error = 0;
Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int    Turn_Distance;
Turn_Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int    Case3_Behind_PassDis;
Case3_Behind_PassDis:
        DS8 4
//   23 extern long int IslandIn_Distance;
//   24 extern uint8 Island_Error_Turn;
//   25 extern uint8 Turn_Around;
//   26 extern uint8 Family_Status;
//   27 extern uint8 final;
//   28 extern uint8 Flag_Island_Confirm_Dir;
//   29 extern uint8 Dir_IslandTurn;
//   30 extern uint8 Flag_Island_Position;
//   31 extern uint8 OverTake_Straight;
//   32 extern uint8 Case2_Ahead_KeepSide;  
//   33 extern uint8 Case2_Behind_KeepSide;
//   34 extern uint8 OverTake_CrossRoad;
//   35 extern uint8 Case3_Ahead_Stop;
//   36 extern uint8 Case3_Behind_Pass;
//   37 extern uint8 Case3_Turn;
//   38 extern uint8 SendCommand;
//   39 extern int Count;
//   40 extern int Mixed_Distance;
//   41 extern int Ahead_TurnError; 
//   42 extern int Distance;
//   43 extern int Flag_Island_Confirm;
//   44 extern int Flag_Island_Confirm_Last;
//   45 extern long int Sum_Distance;
//   46 extern float  error_all;
//   47 extern struct Speed Spd;
//   48 extern int final_Distance;
//   49 extern uint8 Spd_Switch;
//   50 /*
//   51 function:解算车体中心到
//   52 
//   53 
//   54 跑道中心的距离
//   55 return:Null
//   56 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void Dis_Calc()
//   58 {
Dis_Calc:
        PUSH     {R7,LR}
//   59   //adc转换
//   60   ad_convert();
        BL       ad_convert
//   61   //每个电感的峰峰值解算
//   62   peak_calc();
        BL       peak_calc
//   63   //坡道处理
//   64   Ramp_Handle();
        BL       Ramp_Handle
//   65   //和环岛相关的处理
//   66   Island_Handle();
        BL       Island_Handle
//   67   //偏差计算
//   68   error_calcu(); 
        BL       error_calcu
//   69   //偏差赋值
//   70   Error = (int)error_all;
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//   71   //防丢线
//   72   Prevent_LostLine(); 
        BL       Prevent_LostLine
//   73 }
        POP      {R0,PC}          ;; return
//   74 
//   75 /*
//   76 function:Prevent the generation of the wrong Error
//   77 return:Null*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void Prevent_LostLine()
//   79 { 
Prevent_LostLine:
        PUSH     {R3-R5,LR}
//   80   //---------环岛外路径防丢线--------//
//   81    if(     Flag_Ramp==0
//   82        && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
//   83        //&& Flag_Island_Confirm_Last==0 && final_Last==0 && Flag_Island_Last==0
//   84        && (peak[0]<60 && peak[4]<60 && peak[1]<50 && peak[3]<50)
//   85        && Case2_Ahead_KeepSide==0 && Case2_Behind_KeepSide==0
//   86      )    
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_3
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+16]
        CMP      R0,#+60
        BGE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        CMP      R0,#+50
        BGE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        CMP      R0,#+50
        BGE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
        LDR.W    R0,??DataTable6_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_0
//   87      {
//   88          if(fabs(Error-Pre_Error[ErrorNum-1]) > 25)
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+396]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable6_10  ;; 0x40390000
        BL       __aeabi_cdrcmple
        BHI.N    ??Prevent_LostLine_0
//   89             Error = Pre_Error[ErrorNum-1]; 
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//   90      }
//   91    
//   92   //--------环岛内路径防丢线---------//
//   93    //第一、二步防丢线
//   94    if(Flag_Island_Confirm!=0 || final!=0)
??Prevent_LostLine_0:
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_1
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Prevent_LostLine_2
//   95      if(Turn_Around == 0)
??Prevent_LostLine_1:
        LDR.W    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_2
//   96       {
//   97         //数值不能变小
//   98         if(fabs(Error) < fabs(Pre_Error[ErrorNum-1]))
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_cdcmple
        BCS.N    ??Prevent_LostLine_3
//   99         {
//  100            if(Error > 0)
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Prevent_LostLine_4
//  101              Error = (int)(fabs(Pre_Error[ErrorNum-1]));
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Prevent_LostLine_3
//  102            else
//  103              Error = -(int)(fabs(Pre_Error[ErrorNum-1]));
??Prevent_LostLine_4:
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  104         }
//  105           
//  106         //方向不能改变
//  107         if(Flag_Island_Confirm_Dir == Turn_Left)
??Prevent_LostLine_3:
        LDR.W    R0,??DataTable6_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+107
        BNE.N    ??Prevent_LostLine_5
//  108            Error = (int)(fabs(Error));  
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Prevent_LostLine_2
//  109         else
//  110            Error = -(int)(fabs(Error));          
??Prevent_LostLine_5:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        BL       __aeabi_d2iz
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  111       }  
//  112    
//  113    //环岛内防丢线
//  114    if(Flag_Island==1 && fabs(Error-Pre_Error[ErrorNum-1]) >= 30)
??Prevent_LostLine_2:
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Prevent_LostLine_6
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+396]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_13  ;; 0x403e0000
        BL       __aeabi_cdrcmple
        BHI.N    ??Prevent_LostLine_6
//  115      {
//  116         //还处于直道时，防止跳变
//  117         if(peak[7]>55)
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+28]
        CMP      R0,#+56
        BLT.N    ??Prevent_LostLine_7
//  118             Error = Pre_Error[ErrorNum-1];  
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Prevent_LostLine_6
//  119         
//  120         //进入环岛时，需要条件
//  121         else
//  122           { 
//  123             if(peak[1]+peak[3]<30 && peak[1]<20 && peak[3]<20)
??Prevent_LostLine_7:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_6
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        CMP      R0,#+30
        BGE.N    ??Prevent_LostLine_6
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        CMP      R0,#+20
        BGE.N    ??Prevent_LostLine_6
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        CMP      R0,#+20
        BGE.N    ??Prevent_LostLine_6
//  124                 Error = Pre_Error[ErrorNum-1];  
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  125           }
//  126      }
//  127      
//  128    
//  129   
//  130   //-----------坡道防丢线------------//
//  131   if(     Flag_Ramp==1  && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
//  132        && Flag_Island_Confirm_Last==0 && final_Last==0 && Flag_Island_Last==0 )    
??Prevent_LostLine_6:
        LDR.W    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Prevent_LostLine_8
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_8
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_8
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_14
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_8
        LDR.W    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_8
        LDR.W    R0,??DataTable6_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Prevent_LostLine_8
//  133      {
//  134          if(fabs(Error-Pre_Error[ErrorNum-1]) > 50)
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        LDR      R1,[R1, #+396]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+1
        LDR.W    R3,??DataTable6_17  ;; 0x40490000
        BL       __aeabi_cdrcmple
        BHI.N    ??Prevent_LostLine_8
//  135             Error = Pre_Error[ErrorNum-1]; 
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+396]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  136      }
//  137    
//  138   //-----后车进入环岛的强制转向------//
//  139   //进入环岛后，后车强行转向
//  140      if(Turn_Around == 1)
??Prevent_LostLine_8:
        LDR.W    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Prevent_LostLine_9
//  141          if(Flag_Island_Confirm>=Confirm_First*100 || final!=0)
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??Prevent_LostLine_10
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Prevent_LostLine_9
//  142             {        
//  143                if(Dir_IslandTurn == Turn_Right)
??Prevent_LostLine_10:
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+106
        BNE.N    ??Prevent_LostLine_11
//  144                   Error = -(20+2*Spd_Switch);
        LDR.W    R0,??DataTable6_19
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+20
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??Prevent_LostLine_9
//  145                else if(Dir_IslandTurn == Turn_Left)
??Prevent_LostLine_11:
        LDR.W    R0,??DataTable6_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+107
        BNE.N    ??Prevent_LostLine_9
//  146                   Error =  (20+2*Spd_Switch);
        LDR.W    R0,??DataTable6_19
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+20
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  147             }
//  148   
//  149   for(uint8 i=0; i<ErrorNum-1; i++)
??Prevent_LostLine_9:
        MOVS     R0,#+0
        B.N      ??Prevent_LostLine_12
//  150      Pre_Error[i] = Pre_Error[i+1];
??Prevent_LostLine_13:
        LDR.W    R1,??DataTable6_9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??Prevent_LostLine_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+99
        BLT.N    ??Prevent_LostLine_13
//  151   Pre_Error[ErrorNum-1] = Error;
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        STR      R0,[R1, #+396]
//  152 }
        POP      {R0,R4,R5,PC}    ;; return
//  153 
//  154 
//  155 //开机采值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 void Set_SensorPara(uint8 cnt)
//  157 {
Set_SensorPara:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  158   //采值
//  159   for(uint8 i=0; i<SampleNum; i++)
        MOVS     R5,#+0
        B.N      ??Set_SensorPara_0
//  160    {
//  161       sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
??Set_SensorPara_1:
        MOVS     R1,#+12
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  162       sensor[7][i] = LPLD_ADC_Get(ADC1, AD9);
        MOVS     R1,#+9
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+700]
//  163       sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
        MOVS     R1,#+15
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+100]
//  164       sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
        MOVS     R1,#+14
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+200]
//  165       sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
        MOVS     R1,#+10
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+300]
//  166       sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
        MOVS     R1,#+11
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+400]
//  167       sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
        MOVS     R1,#+13
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+500]
//  168       sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,R1
        STRB     R0,[R1, #+600]
//  169    } 
        ADDS     R5,R5,#+1
??Set_SensorPara_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+100
        BLT.N    ??Set_SensorPara_1
//  170   
//  171   for(uint8 i=0; i<8; i++)
        MOVS     R5,#+0
        B.N      ??Set_SensorPara_2
//  172   {
//  173      peak[i] = CalcMaxToMin(sensor[i]);
??Set_SensorPara_3:
        LDR.W    R0,??DataTable6_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+100
        MLA      R0,R1,R5,R0
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable6_6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//  174   }
        ADDS     R5,R5,#+1
??Set_SensorPara_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BLT.N    ??Set_SensorPara_3
//  175   
//  176   for(uint8 i=0; i<8; i++)
        MOVS     R0,#+0
        B.N      ??Set_SensorPara_4
//  177      start_peak[i][cnt] = peak[i];
??Set_SensorPara_5:
        LDR.W    R1,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+40
        MLA      R1,R2,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R2,??DataTable6_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STR      R2,[R1, R4, LSL #+2]
        ADDS     R0,R0,#+1
??Set_SensorPara_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??Set_SensorPara_5
//  178 }
        POP      {R0,R4,R5,PC}    ;; return
//  179 
//  180 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 void  AveEmax_Calcu() 
//  182 {
AveEmax_Calcu:
        PUSH     {R7,LR}
//  183    for(uint8 i=0; i<10; i++)
        MOVS     R0,#+0
        B.N      ??AveEmax_Calcu_0
//  184      {
//  185        E_Max[0] += start_peak[0][i];
??AveEmax_Calcu_1:
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+0]
//  186        E_Max[1] += start_peak[1][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+4]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+40]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+4]
//  187        E_Max[2] += start_peak[2][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+8]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+80]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+8]
//  188        E_Max[3] += start_peak[3][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+12]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+120]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+12]
//  189        E_Max[4] += start_peak[4][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+16]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+160]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+16]
//  190        E_Max[5] += start_peak[5][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+200]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+20]
//  191        E_Max[6] += start_peak[6][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+240]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+24]
//  192        E_Max[7] += start_peak[7][i];
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+28]
        LDR.W    R2,??DataTable6_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+280]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable6_23
        STR      R1,[R2, #+28]
//  193      }
        ADDS     R0,R0,#+1
??AveEmax_Calcu_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??AveEmax_Calcu_1
//  194    
//  195    for(uint8 i=0; i<8; i++)
        MOVS     R0,#+0
        B.N      ??AveEmax_Calcu_2
//  196       E_Max[i] /= 10;
??AveEmax_Calcu_3:
        LDR.W    R1,??DataTable6_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        LDR.W    R2,??DataTable6_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??AveEmax_Calcu_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??AveEmax_Calcu_3
//  197    
//  198    E_Max[1]  = (E_Max[1]+E_Max[3])/2;
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_23
        LDR      R1,[R1, #+12]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+4]
//  199    E_Max[3]  =  E_Max[1];
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+12]
//  200    E_Max[1] *= (Sensor_Height2*Sensor_Height2 + 7.5*7.5)/(Sensor_Height2*Sensor_Height2*1.0);
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable6_24  ;; 0x9161f9ae
        LDR.W    R3,??DataTable6_25  ;; 0x3ff4f032
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+4]
//  201    E_Max[3]  =  E_Max[1];  
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+12]
//  202    E_Max[5] *= 2;
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+20]
//  203    E_Max[6] *= 2;
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+24]
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable6_23
        STR      R0,[R1, #+24]
//  204    
//  205    for(uint8 i=0; i<8; i++)
        MOVS     R0,#+0
        B.N      ??AveEmax_Calcu_4
//  206      if(E_Max[i] < 5)
??AveEmax_Calcu_5:
        LDR.W    R1,??DataTable6_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+5
        BGE.N    ??AveEmax_Calcu_6
//  207         E_Max[i] = 5;
        MOVS     R1,#+5
        LDR.W    R2,??DataTable6_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
??AveEmax_Calcu_6:
        ADDS     R0,R0,#+1
??AveEmax_Calcu_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??AveEmax_Calcu_5
//  208 }
        POP      {R0,PC}          ;; return
//  209 
//  210 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void ad_convert()
//  212 {
ad_convert:
        PUSH     {R4,LR}
//  213   uint16 i;
//  214   for(i=0; i<SampleNum; i++)
        MOVS     R4,#+0
        B.N      ??ad_convert_0
//  215     {
//  216       sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
??ad_convert_1:
        MOVS     R1,#+12
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
//  217       sensor[7][i] = LPLD_ADC_Get(ADC1, AD9);
        MOVS     R1,#+9
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+700]
//  218       sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
        MOVS     R1,#+15
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+100]
//  219       sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
        MOVS     R1,#+14
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+200]
//  220       sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
        MOVS     R1,#+10
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+300]
//  221       sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
        MOVS     R1,#+11
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+400]
//  222       sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
        MOVS     R1,#+13
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+500]
//  223       sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable6_20  ;; 0x400bb000
        BL       LPLD_ADC_Get
        LDR.W    R1,??DataTable6_21
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+600]
//  224     }   
        ADDS     R4,R4,#+1
??ad_convert_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+100
        BLT.N    ??ad_convert_1
//  225 }
        POP      {R4,PC}          ;; return
//  226 
//  227 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void peak_calc()
//  229 {
peak_calc:
        PUSH     {R3-R5,LR}
//  230    uint8 i;
//  231   
//  232    for(i=0; i<8; i++)
        MOVS     R4,#+0
        B.N      ??peak_calc_0
//  233    {
//  234       peak[i] = CalcMaxToMin(sensor[i]);
??peak_calc_1:
        LDR.W    R0,??DataTable6_21
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+100
        MLA      R0,R1,R4,R0
        BL       CalcMaxToMin
        LDR.W    R1,??DataTable6_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//  235       peak_real[i] = peak[i];
        LDR.W    R0,??DataTable6_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable6_26
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
//  236    }
        ADDS     R4,R4,#+1
??peak_calc_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??peak_calc_1
//  237   
//  238   // peak1, peak2, peak3归一化 
//  239    peak[1] = (int)( (peak[1]* 100)/(E_Max[1]*1.0) );   
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+4]
//  240    peak[3] = (int)( (peak[3]* 100)/(E_Max[3]*1.0) );   
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+12]
//  241    peak[2] = (int)( (peak[2]* 100)/(E_Max[2]*1.0) );   
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+8]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+8]
//  242    
//  243    //peak0, peak4归一化
//  244    peak[0] = (int)(peak[0]/(E_Max[2]*1.0) * 120);   
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_28  ;; 0x405e0000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  245    peak[4] = (int)(peak[4]/(E_Max[2]*1.0) * 120);  
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+16]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_28  ;; 0x405e0000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+16]
//  246    
//  247    //peak5, peak6，peak7归一化 
//  248    peak[5] = (int)( (peak[5]* 100)/(E_Max[5]*1.0) );   
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+20]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable6_23
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+20]
//  249    peak[6] = (int)( (peak[6]* 100)/(E_Max[6]*1.0) );   
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+24]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable6_23
        LDR      R0,[R0, #+24]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+24]
//  250    peak[7] = (int)( (peak[7]* 100)/(E_Max[7]*1.0) );   
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+28]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable6_23
        LDR      R0,[R0, #+28]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+28]
//  251 } 
        POP      {R0,R4,R5,PC}    ;; return
//  252 
//  253 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 uint8 CalcMaxToMin(uint8 data[SampleNum]) 
//  255 {
CalcMaxToMin:
        PUSH     {R4}
//  256     uint8 Max = 0;
        MOVS     R1,#+0
//  257     uint8 Min = 0;
        MOVS     R2,#+0
//  258     Max = data[0];
        LDRB     R3,[R0, #+0]
        MOVS     R1,R3
//  259     Min = data[0];
        LDRB     R3,[R0, #+0]
        MOVS     R2,R3
//  260     
//  261     for(uint8 i=0; i<SampleNum; i++) 
        MOVS     R3,#+0
        B.N      ??CalcMaxToMin_0
//  262        {
//  263          if(data[i] > Max)   Max = data[i];
??CalcMaxToMin_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R4,[R3, R0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R4
        BCS.N    ??CalcMaxToMin_2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R1,[R3, R0]
//  264          if(data[i] < Min)   Min = data[i];
??CalcMaxToMin_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R4,[R3, R0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R4,R2
        BCS.N    ??CalcMaxToMin_3
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R2,[R3, R0]
//  265        }
??CalcMaxToMin_3:
        ADDS     R3,R3,#+1
??CalcMaxToMin_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+100
        BLT.N    ??CalcMaxToMin_1
//  266     return Max-Min;
        SUBS     R0,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  267 } 
//  268   
//  269 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  270 float  error_all;
error_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  271 float  error2_all;  
error2_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  272 float  error7_all;  
error7_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  273 uint8   Flag_Direction = 0;
Flag_Direction:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  274 void  error_calcu()
//  275 {
error_calcu:
        PUSH     {LR}
        SUB      SP,SP,#+36
//  276    float  error_sensor[8] = {0};  //每个电感到跑道中心的距离
        ADD      R0,SP,#+0
        MOVS     R1,#+32
        BL       __aeabi_memclr4
//  277    int peak2;
//  278    int peak7;
//  279    
//  280    peak2 = peak[2];
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+8]
//  281    if(peak2 > 100)    peak2 = 100;
        CMP      R0,#+101
        BLT.N    ??error_calcu_0
        MOVS     R0,#+100
//  282    error_sensor[2] = (float)( 100/(peak2*1.0) -1);
??error_calcu_0:
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_29  ;; 0x40590000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_30  ;; 0xbff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[SP, #+8]
//  283    error2_all = Sensor_Height2*sqrt(error_sensor[2]);
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sqrt
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_31  ;; 0x402b0000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable6_32
        STR      R0,[R1, #+0]
//  284 
//  285      
//  286    //环岛处理   
//  287    if(Flag_Island==1 || Flag_Island_Confirm!=0 || final!=0)
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??error_calcu_1
        LDR.N    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??error_calcu_1
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??error_calcu_2
//  288     {
//  289       peak2 = 2*peak[2];
??error_calcu_1:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+8]
        LSLS     R0,R0,#+1
//  290       if(peak2 > 100)    peak2 = 100;
        CMP      R0,#+101
        BLT.N    ??error_calcu_3
        MOVS     R0,#+100
//  291       error_sensor[2] = (float)( 100/(peak2*1.0) -1);
??error_calcu_3:
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_27  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_29  ;; 0x40590000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_30  ;; 0xbff00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[SP, #+8]
//  292       error2_all = Sensor_Height2*sqrt(error_sensor[2]);     
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sqrt
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_31  ;; 0x402b0000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable6_32
        STR      R0,[R1, #+0]
//  293     }
//  294 
//  295    //正常距离正负判断
//  296    if(Flag_Island==0)
??error_calcu_2:
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??error_calcu_4
//  297       {
//  298          if(peak[1]>30 || peak[3]>30)
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        CMP      R0,#+31
        BGE.N    ??error_calcu_5
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        CMP      R0,#+31
        BLT.N    ??error_calcu_6
//  299           {
//  300             if(peak[1] > peak[3])
??error_calcu_5:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable6_6
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??error_calcu_7
//  301               {
//  302                 error_all = error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  303                 Flag_Direction = 1;     
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
        B.N      ??error_calcu_8
//  304               }
//  305             else if(peak[1] < peak[3])
??error_calcu_7:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_6
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BGE.N    ??error_calcu_8
//  306               {
//  307                 error_all = -error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  308                 Flag_Direction = 2;     
        MOVS     R0,#+2
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
        B.N      ??error_calcu_8
//  309               }
//  310           }
//  311          else
//  312           { 
//  313             if(Flag_Direction == 1)
??error_calcu_6:
        LDR.N    R0,??DataTable6_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_9
//  314                 error_all = error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        B.N      ??error_calcu_8
//  315             else              
//  316                 error_all = -error2_all;
??error_calcu_9:
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        B.N      ??error_calcu_8
//  317           }        
//  318       }
//  319    
//  320    //环岛方向判断
//  321    else
//  322      {
//  323          if((peak[1]>25 || peak[3]>25))
??error_calcu_4:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        CMP      R0,#+26
        BGE.N    ??error_calcu_10
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        CMP      R0,#+26
        BLT.N    ??error_calcu_11
//  324           {
//  325             if(peak[1] > peak[3])
??error_calcu_10:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable6_6
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??error_calcu_12
//  326               {
//  327                 error_all = error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  328                 Flag_Direction = 1;     
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
        B.N      ??error_calcu_8
//  329               }
//  330             else if(peak[1] < peak[3])
??error_calcu_12:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_6
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BGE.N    ??error_calcu_8
//  331               {
//  332                 error_all = -error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  333                 Flag_Direction = 2;     
        MOVS     R0,#+2
        LDR.N    R1,??DataTable6_33
        STRB     R0,[R1, #+0]
        B.N      ??error_calcu_8
//  334               }
//  335           }
//  336          else
//  337           { 
//  338             if(Flag_Direction == 1)
??error_calcu_11:
        LDR.N    R0,??DataTable6_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_13
//  339                 error_all = error2_all;
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        B.N      ??error_calcu_8
//  340             else              
//  341                 error_all = -error2_all;
??error_calcu_13:
        LDR.N    R0,??DataTable6_32
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  342           }        
//  343     
//  344      }
//  345 
//  346    //-----直道超车偏差修正------------//
//  347    if(OverTake_Straight == Yes)
??error_calcu_8:
        LDR.N    R0,??DataTable6_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_14
//  348      {
//  349         //前车右边停车
//  350         if(Turn_Around == 0)
        LDR.N    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??error_calcu_15
//  351           {
//  352             if(Case2_Ahead_KeepSide == 1)
        LDR.N    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_14
//  353                error_all = error_all - 14;      
        LDR.N    R0,??DataTable6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_35  ;; 0xc1600000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        B.N      ??error_calcu_14
//  354           }
//  355         //后车左边超车
//  356         else if(Turn_Around == 1) 
??error_calcu_15:
        LDR.N    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_14
//  357           {
//  358             if(Case2_Behind_KeepSide == 1)
        LDR.N    R0,??DataTable6_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??error_calcu_14
//  359                error_all = error_all + 12;                 
        LDR.N    R0,??DataTable6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_36  ;; 0x41400000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  360           }
//  361      }
//  362    
//  363    
//  364    
//  365     //Error限幅
//  366     if(error_all > Error_Limit)
??error_calcu_14:
        LDR.N    R0,??DataTable6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_37  ;; 0x41f00001
        BL       __aeabi_cfrcmple
        BHI.N    ??error_calcu_16
//  367        error_all = Error_Limit;
        LDR.N    R0,??DataTable6_38  ;; 0x41f00000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        B.N      ??error_calcu_17
//  368     else if(error_all < -Error_Limit)
??error_calcu_16:
        LDR.N    R0,??DataTable6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_39  ;; 0xc1f00000
        BL       __aeabi_cfcmple
        BCS.N    ??error_calcu_17
//  369        error_all = -Error_Limit; 
        LDR.N    R0,??DataTable6_39  ;; 0xc1f00000
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
//  370 }
??error_calcu_17:
        ADD      SP,SP,#+36
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     error_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     Flag_Ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Flag_Island_Confirm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     Flag_Island

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     final

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     Case2_Ahead_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     Case2_Behind_KeepSide

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     Pre_Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x40390000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     Turn_Around

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     Flag_Island_Confirm_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x403e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     Flag_Island_Confirm_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     final_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     Flag_Island_Last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x40490000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     Dir_IslandTurn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     Spd_Switch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     start_peak

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     E_Max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     0x9161f9ae

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     0x3ff4f032

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     peak_real

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     0x405e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     0xbff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     0x402b0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     error2_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     Flag_Direction

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     OverTake_Straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
        DC32     0xc1600000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_36:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_37:
        DC32     0x41f00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_38:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_39:
        DC32     0xc1f00000

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
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
//  371 
//  372 
// 
// 1 635 bytes in section .bss
//    32 bytes in section .rodata
// 2 928 bytes in section .text
// 
// 2 928 bytes of CODE  memory
//    32 bytes of CONST memory
// 1 635 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
