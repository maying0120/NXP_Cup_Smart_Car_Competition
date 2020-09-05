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
LCD_init          : OLED��ʼ��

��д����          ��2012-11-01
����޸�����      ��2012-11-01
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
  //���� 
 void OLED_Fill(uint8 dat);
 //��ʾBMPͼƬ128��64
 void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 bmp[]);
 //��ӡһ�����ص�
 void OLED_PutPixel(uint8 x,uint8 y);
 //��ʾһ��6X8���ַ���ASCIIֵ                      
 void OLED_6x8Char(uint8 X1, uint8 Y1, uint8 Data1);
 //OLED��ʾһ��CCDͼ��
 void OLED_Print_RowPic(uint8 y0, uint8 CCD_Data[]);
 //OLED��ʾ��λint���ݣ�����ʾ����
 void OLED_Print_Int(uint8 x0, uint8 y0, int Data);
 //OLED��ʾһλ��������
 void OLED_Print_Float(uint8 x0, uint8 y0, float Data);
 //��ѭ������ʾ������
 void OLED_while(uint8 Page_Slt); 
 //OLED������ʾ
 void OLED_Key1();
 //ͣ����ʾ
 void OLED_Stop();
 void OLED_Key2(uint8 Pame_Slt);
 void OLED_Key3(uint8 Pame_Slt);
/********************************************************************/

#endif
