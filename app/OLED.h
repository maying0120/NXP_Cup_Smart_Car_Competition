/*
 * File:		nokia.h
 * Purpose:		Serial Input/Output routines
 *
 */

#ifndef _OELD_H
#define _OELD_H

#define OLED_SCL(x)  LPLD_GPIO_Output_b(PTD,13, x); 
#define OLED_SDA(x)  LPLD_GPIO_Output_b(PTD,12, x);  
#define OLED_RST(x)  LPLD_GPIO_Output_b(PTD,15, x);  
#define OLED_DC(x)   LPLD_GPIO_Output_b(PTD,14, x);  
#define OLED_CS(x)   LPLD_GPIO_Output_b(PTD, 4, x);     

/********************************************************************/
/*-----------------------------------------------------------------------
LCD_init          : OLED初始化

编写日期          ：2012-11-01
最后修改日期      ：2012-11-01
-----------------------------------------------------------------------*/
 void OLED_CLS(void);
 void OLED_P6x8Str(uint8 x,uint8 y,uint8 ch[]);
 void OLED_P8x16Str(uint8 x,uint8 y,uint8 ch[]);
 void OLED_P14x16Str(uint8 x,uint8 y,uint8 ch[]);
 void OLED_Print(uint8 x, uint8 y, uint8 ch[]);
 void OLED_Rectangle(uint8 x1,uint8 y1,uint8 x2,uint8 y2,uint8 gif);
 void OLED_Set_Pos(uint8 x, uint8 y);
 void OLED_WrCmd(uint8 cmd); 
 void OLED_WrDat(uint8 data);
  //清屏 
 void OLED_Fill(uint8 dat);
 //显示BMP图片128×64
 void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 bmp[]);
 //打印一个像素点
 void OLED_PutPixel(uint8 x,uint8 y);
 //显示一个6X8的字符，ASCII值                      
 void OLED_6x8Char(uint8 X1, uint8 Y1, uint8 Data1);
 //OLED显示一行CCD图像
 void OLED_Print_RowPic(uint8 y0, uint8 CCD_Data[]);
 //OLED显示四位int数据，可显示正负
 void OLED_Print_Int(uint8 x0, uint8 y0, int Data);
 //OLED显示一位浮点数据
 void OLED_Print_Float(uint8 x0, uint8 y0, float Data);
 //主循环中显示的数据
 void OLED_while(uint8 Page_Slt); 
 //OLED按键显示
 void OLED_Key1();
 //停车显示
 void OLED_Stop();
 void OLED_Key2(uint8 Pame_Slt);
 void OLED_Key3(uint8 Pame_Slt);
/********************************************************************/

#endif
