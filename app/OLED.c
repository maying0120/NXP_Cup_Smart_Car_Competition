#include "Includes.h"


/************************************************************************
     OLED 一行可以显示16个字符，可以显示8行。
************************************************************************/

#define XLevelL		0x00
#define XLevelH		0x10
#define XLevel		((XLevelH&0x0F)*16+XLevelL)
#define Max_Column	128
#define Max_Row		64 
#define	Brightness	0xCF

/*
4线SPI使用说明：
VBT 供内部DC-DC电压，3.3~4.3V，如果使用5V电压，为保险起见串一个100~500欧的电阻
VCC 供内部逻辑电压 1.8~6V
GND 地

BS0 低电平
BS1 低电平
BS2 低电平

CS  片选管脚
DC  命令数据选择管脚
RES 模块复位管脚
D0（SCLK） ，时钟脚，由MCU控制
D1（MOSI） ，主输出从输入数据脚，由MCU控制

D2 悬空
D3-D7 ， 低电平 ， 也可悬空，但最好设为低电平
RD  低电平 ，也可悬空，但最好设为低电平
RW  低电平 ，也可悬空，但最好设为低电平
RD  低电平 ，也可悬空，但最好设为低电平
*/
//

extern uint8 Turn_Around;
extern uint8 Family_Status;
extern int peak[];
extern int E_Max[];
extern int Target,Feedback;
extern struct Rudder Angle;
extern int Error;
extern long int Sum_Distance;
extern int Mixed_Distance;
extern uint8 ShowOrDebug;
extern int8  Show_Page_Slt;
extern int8  Debug_Page_Slt;
extern int8  Debug_Para_Slt;
extern uint8 peak_real[];

#define X_WIDTH 128
#define Y_WIDTH 64
//======================================
const uint8 F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v     
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};

//======================================================
// 128X64I液晶底层驱动[8X16]字体库
// 设计者: powerint
// 描  述: [8X16]西文字符的字模数据 (纵向取模,字节倒序)
// !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
//======================================================
const uint8 F8X16[]=
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,// 0
  0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//!1
  0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//"2
  0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//#3
  0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$4
  0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//%5
  0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//&6
  0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//'7
  0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//(8
  0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//)9
  0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//*10
  0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+11
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//,12
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//-13
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//.14
  0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,///15
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//016
  0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//117
  0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//218
  0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//319
  0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//420
  0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//521
  0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//622
  0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//723
  0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//824
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//925
  0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//:26
  0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//;27
  0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//<28
  0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//=29
  0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//>30
  0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//?31
  0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@32
  0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A33
  0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B34
  0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C35
  0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D36
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E37
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F38
  0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G39
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H40
  0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I41
  0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J42
  0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K43
  0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L44
  0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M45
  0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N46
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O47
  0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P48
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q49
  0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R50
  0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S51
  0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T52
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U53
  0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V54
  0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W55
  0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X56
  0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y57
  0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z58
  0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[59
  0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\60
  0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//]61
  0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^62
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_63
  0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//`64
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a65
  0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b66
  0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c67
  0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d68
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e69
  0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f70
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g71
  0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h72
  0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i73
  0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j74
  0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k75
  0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l76
  0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m77
  0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n78
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o79
  0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p80
  0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q81
  0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r82
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s83
  0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t84
  0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//uint85
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v86
  0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w87
  0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x88
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y89
  0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z90
  0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{91
  0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//|92
  0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//}93
  0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~94

};
//数据水平，字节垂直

const uint8 LIBLOGO60x58[480] = {
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0XC0,0XE0,0XF8,0XFC,0XFE,0X7F,0X3F,0X0F,0X0F,0X07,0X07,0X07,0X87,0XC7,
  0XC7,0XC7,0XE7,0XEF,0XFF,0XFF,0XFF,0XEF,0XE7,0XE7,0XE7,0XE7,0XE7,0XEF,0XFF,0XFF,
  0XFF,0XEF,0XE7,0XE7,0XE7,0XE7,0XE7,0XF7,0X07,0X0F,0X3F,0X7F,0XFF,0XFE,0XFC,0XF0,
  0XC0,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0XD8,0XDC,0XDF,0XDF,0XDF,
  0XDF,0XD7,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X3E,0X7F,0XFF,0XFF,0XE3,0XE1,0XE1,
  0XFF,0XFF,0XFF,0XE0,0XE0,0XE0,0XE0,0XE0,0XE0,0XE0,0XFF,0XFF,0XFF,0XE0,0XE0,0XE0,
  0XE0,0XC1,0X83,0X07,0X00,0X00,0X00,0X00,0X01,0XD7,0XDF,0XDF,0XDF,0XDF,0XDC,0XD8,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X03,0X0F,0X1F,0X3F,0XFF,0XFF,0XFE,0XF8,
  0XF0,0XE0,0XC0,0X80,0X00,0X00,0XF8,0XF0,0XE0,0XC0,0XC0,0XC0,0XFF,0XFF,0XFF,0XC0,
  0XC0,0XC0,0XC0,0XC0,0XC0,0XC0,0XFF,0XFF,0XFF,0XC0,0XE0,0XE1,0XF3,0XFF,0X7F,0X3F,
  0X00,0XC0,0XE0,0XF8,0XFE,0XFF,0XFF,0XFF,0X3F,0X1F,0X07,0X01,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X07,0X0F,0X3F,0X7F,0XFF,
  0XFE,0XFC,0XF9,0XF3,0XC1,0X81,0X01,0X01,0XFF,0XFF,0XFF,0X01,0X01,0X01,0X01,0X01,
  0X01,0X01,0XFF,0XFF,0XFF,0X03,0X01,0X81,0XC0,0XF0,0XFC,0XFE,0XFF,0XFF,0X7F,0X3F,
  0X0F,0X07,0X03,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X03,0X07,0X0F,0X3F,
  0X7F,0XFF,0XFF,0XFF,0XFB,0XF3,0XE3,0XC3,0X03,0X03,0X03,0X03,0X03,0X83,0XC3,0XF3,
  0XF3,0XFB,0XFF,0XFF,0XFF,0X7F,0X3F,0X0F,0X03,0X01,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X03,0X07,
  0X07,0X1F,0X3F,0X7F,0XFF,0XFE,0XFC,0XFC,0XFE,0XFF,0XFF,0X7F,0X3F,0X0F,0X07,0X03,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X03,0X07,0X0F,0X0F,0X07,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
  0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
};


void OLED_WrDat(uint8 data)
{
	uint8 i=8;
	//LCD_CS=0;;
	OLED_DC(1);
  OLED_SCL(0);
  //asm("nop");
  while(i--)
  {
    if(data&0x80){OLED_SDA(1);}
    else{OLED_SDA(0);}
    OLED_SCL(1);
    asm("nop");;
		//asm("nop");
    OLED_SCL(0);;
    data<<=1;
  }
}

void OLED_WrCmd(uint8 cmd)
{
	uint8 i=8;

	//LCD_CS=0;;
	OLED_DC(0);;
  OLED_SCL(0);;
  //asm("nop");
  while(i--)
  {
    if(cmd&0x80){OLED_SDA(1);}
    else{OLED_SDA(0);;}
    OLED_SCL(1);;
    asm("nop");;
    OLED_SCL(0);;
    cmd<<=1;;
  }
}

void OLED_Set_Pos(uint8 x, uint8 y)
{
  OLED_WrCmd(0xb0+y);
  OLED_WrCmd(((x&0xf0)>>4)|0x10);
  OLED_WrCmd((x&0x0f)|0x01);
}

//清屏
void OLED_Fill(uint8 bmp_data)
{
	uint8 y,x;

	for(y=0;y<8;y++)
	{
		OLED_WrCmd(0xb0+y);
		OLED_WrCmd(0x01);
		OLED_WrCmd(0x10);
		for(x=0;x<X_WIDTH;x++)
			OLED_WrDat(bmp_data);
	}
}
void OLED_CLS(void)
{
	uint8 y,x;
	for(y=0;y<8;y++)
	{
		OLED_WrCmd(0xb0+y);
		OLED_WrCmd(0x01);
		OLED_WrCmd(0x10);
		for(x=0;x<X_WIDTH;x++)
			OLED_WrDat(0);
	}
}


//==============================================================
//函数名： void LCD_PutPixel(uint8 x,uint8 y)
//功能描述：绘制一个点（x,y）
//参数：真实坐标值(x,y),x的范围0～127，y的范围0～64
//返回：无
//==============================================================
void OLED_PutPixel(uint8 x,uint8 y)
{
	uint8 data1;  //data1当前点的数据

        OLED_Set_Pos(x,y);
	data1 = 0x01<<(y%8);
	OLED_WrCmd(0xb0+(y>>3));
	OLED_WrCmd(((x&0xf0)>>4)|0x10);
	OLED_WrCmd((x&0x0f)|0x00);
	OLED_WrDat(data1);
}

//==============================================================
//函数名： void LCD_Rectangle(uint8 x1,uint8 y1,
//                   uint8 x2,uint8 y2,uint8 color,uint8 gif)
//功能描述：绘制一个实心矩形
//参数：左上角坐标（x1,y1）,右下角坐标（x2，y2）
   //      其中x1、x2的范围0～127，y1，y2的范围0～63，即真实坐标值
//返回：无
//==============================================================
void OLED_Rectangle(uint8 x1,uint8 y1,uint8 x2,uint8 y2,uint8 gif)
{
	uint8 n;

	OLED_Set_Pos(x1,y1>>3);
	for(n=x1;n<=x2;n++)
	{
		OLED_WrDat(0x01<<(y1%8));
		if(gif == 1) 	LPLD_LPTMR_DelayMs(50);
	}
	OLED_Set_Pos(x1,y2>>3);
  for(n=x1;n<=x2;n++)
	{
		OLED_WrDat(0x01<<(y2%8));
		if(gif == 1) 	LPLD_LPTMR_DelayMs(5);
	}
}

//==============================================================
//函数名：LCD_P6x8Str(uint8 x,uint8 y,uint8 *p)
//功能描述：写入一组标准ASCII字符串
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//==============================================================
void OLED_P6x8Str(uint8 x,uint8 y,uint8 ch[])
{
  uint8 c=0,i=0,j=0;
  while (ch[j]!='\0')
  {
    c =ch[j]-32;
    if(x>126){x=0;y++;}
    OLED_Set_Pos(x,y);
  	for(i=0;i<6;i++)
  	  OLED_WrDat(F6x8[c][i]);
  	x+=6;
  	j++;
  }
}

//==============================================================
//功能描述：显示6X8的字符                      
//==============================================================
void OLED_6x8Char(uint8 X1, uint8 Y1, uint8 Data1)
{
    uint8 xx, temp;     
       
    temp = Data1-32;
    if(X1 > 122)
    {
        X1 = 0;
        Y1++;
    } 
    OLED_Set_Pos(X1, Y1);
    
    for(xx = 0; xx < 6; xx++)
    {     
        OLED_WrDat(F6x8[temp][xx]);  
    }
}


//==============================================================
//函数名：LCD_P8x16Str(uint8 x,uint8 y,uint8 *p)
//功能描述：写入一组标准ASCII字符串
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//==============================================================
void OLED_P8x16Str(uint8 x,uint8 y,uint8 ch[])
{
  uint8 c=0,i=0,j=0;

  while (ch[j]!='\0')
  {
    c =ch[j]-32;
    if(x>120){x=0;y++;}
    OLED_Set_Pos(x,y);
  	for(i=0;i<8;i++)
  	  OLED_WrDat(F8X16[c*16+i]);
  	OLED_Set_Pos(x,y+1);
  	for(i=0;i<8;i++)
  	  OLED_WrDat(F8X16[c*16+i+8]);
  	x+=8;
  	j++;
  }
}


//输出汉字和字符混合字符串
void OLED_Print(uint8 x, uint8 y, uint8 ch[])
{
	uint8 ch2[3];
	uint8 ii=0;
	while(ch[ii] != '\0')
	{
		if(ch[ii] > 127)
		{
			ch2[0] = ch[ii];
	 		ch2[1] = ch[ii + 1];
			ch2[2] = '\0';			//汉字为两个字节
			OLED_P14x16Str(x , y, ch2);	//显示汉字
			x += 14;
			ii += 2;
		}
		else
		{
			ch2[0] = ch[ii];
			ch2[1] = '\0';			//字母占一个字节
			OLED_P8x16Str(x , y , ch2);	//显示字母
			x += 8;
			ii+= 1;
		}
	}
}

//==============================================================
//函数名： void Draw_BMP(uint8 x,uint8 y)
//功能描述：显示BMP图片128×64
//参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//返回：无
//==============================================================
void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 bmp[])
{
  uint16 ii=0;
  uint8 x,y;

  if(y1%8==0) y=y1/8;
  else y=y1/8+1;
	for(y=y0;y<=y1;y++)
	{
		OLED_Set_Pos(x0,y);
    for(x=x0;x<x1;x++)
	    {
	    	OLED_WrDat(bmp[ii++]);
	    }
	}
}



/*
函数功能：OLED显示一行CCD图像
形参：y0为起始行数(0～63)，y0为结束行数(0～63)，CCD_Data[]为CCD二值化后的数组
返回值：无
*/
void OLED_Print_RowPic(uint8 y0, uint8 CCD_Data[])
 { 
    uint8 i=0;
     for(i=0; i<128; i++) 
       if(CCD_Data[i]==0)
        OLED_PutPixel(i,y0); 
 }


/*
函数功能：OLED显示四位int数据，可显示正负
形参：
返回值：无
*/
void OLED_Print_Int(uint8 x0, uint8 y0, int Data)
{
  uint8 ge,shi,bai,qian;
  if( Data<0 )
   {
     OLED_P6x8Str(x0,y0,"-");
     Data = -Data;
   }
  else
    OLED_P6x8Str(x0,y0,"+");
  
  ge = Data%10;
  shi = (Data%100)/10;
  bai = (Data%1000)/100;
  qian = (Data%10000)/1000;
  
  if(qian!=0)
   {
     OLED_6x8Char(x0+6,y0,qian+48); OLED_6x8Char(x0+12,y0,bai+48);
     OLED_6x8Char(x0+18,y0,shi+48); OLED_6x8Char(x0+24,y0,ge+48);
   }
  else if(bai!=0)
   {
     OLED_6x8Char(x0+6,y0,bai+48);  OLED_6x8Char(x0+12,y0,shi+48);
     OLED_6x8Char(x0+18,y0,ge+48);
   }
  else if(shi!=0)
   {
     OLED_6x8Char(x0+6,y0,shi+48); OLED_6x8Char(x0+12,y0,ge+48);
   }
  else if(ge!=0)
     OLED_6x8Char(x0+6,y0,ge+48);
  else
     OLED_6x8Char(x0+6,y0,48);
}


/*
函数功能：OLED显示四位int数据，可显示正负,以及一位浮点
形参：
返回值：无
*/
void OLED_Print_Float(uint8 x0, uint8 y0, float Data)
{
  uint8 ge,shi,bai,qian,decimus,hundth;
  if( Data<0 )
   {
     OLED_P6x8Str(x0,y0,"-");
     Data = -Data;
   }
  else
    OLED_P6x8Str(x0,y0,"+");
  
  ge = ( (uint8) (Data) )%10;
  shi =( (uint8) (Data) ) %100/10;
  bai =( (uint8) (Data) ) %1000/100;
  qian = ( (uint8) (Data) ) %10000/1000;
  decimus = ( (uint8) (Data*10) )%10;
  hundth = (uint8) (Data*100)%10;
  if(qian!=0)
   {
     OLED_6x8Char(x0+6,y0,qian+48); OLED_6x8Char(x0+12,y0,bai+48);
     OLED_6x8Char(x0+18,y0,shi+48); OLED_6x8Char(x0+24,y0,ge+48);
     OLED_P6x8Str(x0+30,y0,".");    OLED_6x8Char(x0+36,y0,decimus+48);
     OLED_6x8Char(x0+42,y0,hundth+48);
   }
  else if(bai!=0)
   {
     OLED_6x8Char(x0+6,y0,bai+48);  OLED_6x8Char(x0+12,y0,shi+48);
     OLED_6x8Char(x0+18,y0,ge+48);   
     OLED_P6x8Str(x0+24,y0,".");    OLED_6x8Char(x0+30,y0,decimus+48);
     OLED_6x8Char(x0+36,y0,hundth+48);
   }
  else if(shi!=0)
   {
     OLED_6x8Char(x0+6,y0,shi+48);  OLED_6x8Char(x0+12,y0,ge+48);
     OLED_P6x8Str(x0+18,y0,".");    OLED_6x8Char(x0+24,y0,decimus+48);
     OLED_6x8Char(x0+30,y0,hundth+48);
   }
  else if(ge!=0)
   {
     OLED_6x8Char(x0+6,y0,ge+48);   OLED_P6x8Str(x0+12,y0,".");   
     OLED_6x8Char(x0+18,y0,decimus+48); OLED_6x8Char(x0+24,y0,hundth+48);
   }
  else if(decimus!=0)
   {
     OLED_6x8Char(x0+6,y0,48);
     OLED_P6x8Str(x0+12,y0,".");    OLED_6x8Char(x0+18,y0,decimus+48);
     OLED_6x8Char(x0+24,y0,hundth+48);     
   }
  else if(hundth!=0)
   {
     OLED_6x8Char(x0+6,y0,48);
     OLED_P6x8Str(x0+12,y0,".");    OLED_6x8Char(x0+18,y0,decimus+48);
     OLED_6x8Char(x0+24,y0,hundth+48);     
   }
  else  
    OLED_6x8Char(x0+6,y0,48);
}


extern int Flag_Island_Confirm;
extern uint8 final;
extern uint8 Flag_Island;
extern int Ahead_TurnError; 
extern uint8 Dir_IslandTurn;
extern uint8 SendCommand;
/*
函数功能：主循环OLED显示
返回值：无
*/
 void OLED_while(uint8 Page_Slt)
 {
      
    //清屏
    OLED_Fill(0x00);
    
    //----不可调参界面显示------
    if(ShowOrDebug == Show)
    {
        OLED_P6x8Str(6,0,"Show:"); 

        switch(Show_Page_Slt)
        {
          
          //------第一页显示---------
           case 1:
           {
               OLED_P6x8Str(6,1,"Peak_Normal:"); 

               OLED_P6x8Str(15,3,"pk0=");     OLED_Print_Int(40,3,peak[0]); 
               OLED_P6x8Str(70,3,"pk1=");     OLED_Print_Int(95,3,peak[1]); 
               OLED_P6x8Str(15,4,"pk2=");     OLED_Print_Int(40,4,peak[2]); 
               OLED_P6x8Str(70,4,"pk3=");     OLED_Print_Int(95,4,peak[3]); 
               OLED_P6x8Str(15,5,"pk4=");     OLED_Print_Int(40,5,peak[4]); 
               OLED_P6x8Str(70,5,"pk5=");     OLED_Print_Int(95,5,peak[5]); 
               OLED_P6x8Str(15,6,"pk6=");     OLED_Print_Int(40,6,peak[6]); 
               OLED_P6x8Str(70,6,"pk7=");     OLED_Print_Int(95,6,peak[7]);
           }
           break;

           //------第二页显示---------               
           case 2:
           {
               OLED_P6x8Str(6,1,"Peak_Real:"); 

               OLED_P6x8Str(15,3,"pk0=");     OLED_Print_Int(40,3,peak_real[0]); 
               OLED_P6x8Str(70,3,"pk1=");     OLED_Print_Int(95,3,peak_real[1]); 
               OLED_P6x8Str(15,4,"pk2=");     OLED_Print_Int(40,4,peak_real[2]); 
               OLED_P6x8Str(70,4,"pk3=");     OLED_Print_Int(95,4,peak_real[3]); 
               OLED_P6x8Str(15,5,"pk4=");     OLED_Print_Int(40,5,peak_real[4]); 
               OLED_P6x8Str(70,5,"pk5=");     OLED_Print_Int(95,5,peak_real[5]); 
               OLED_P6x8Str(15,6,"pk6=");     OLED_Print_Int(40,6,peak_real[6]); 
               OLED_P6x8Str(70,6,"pk7=");     OLED_Print_Int(95,6,peak_real[7]);
           }
           break;

           //------第三页显示---------                              
           case 3:
           {
               OLED_P6x8Str(6,1,"Island:"); 
               
               OLED_P6x8Str(15,2,"Command=");   OLED_Print_Int(70,2,SendCommand);
               
               OLED_P6x8Str(15,3,"Err=");      OLED_Print_Int(40,3,Error); 

               OLED_P6x8Str(15,4,"Confirm=");  
               if(Flag_Island_Confirm != 0)   OLED_Print_Int(67,4,Flag_Island_Confirm/100); 
               else                           OLED_P6x8Str(67,4,"No");
               
               OLED_P6x8Str(15,5,"final=");   
               if(final != 0)                 OLED_P6x8Str(55,5,"Yes");  
               else                           OLED_P6x8Str(55,5,"No");

               OLED_P6x8Str(15,6,"Island=");   
               if(Flag_Island != 0)           OLED_P6x8Str(63,6,"Yes");  
               else                           OLED_P6x8Str(63,6,"No");


               if(Turn_Around == 0)
               {
                  OLED_P6x8Str(15,7,"Ad_Turn=");   
                  if(Ahead_TurnError > 0)                   OLED_P6x8Str(70,7,"Left");      
                  else if(Ahead_TurnError < 0)              OLED_P6x8Str(70,7,"Right"); 
                  else                                      OLED_P6x8Str(70,7,"No");
               }
               else
               {
                  OLED_P6x8Str(15,7,"Bd_Turn=");   
                  if(Dir_IslandTurn == Turn_Left)          OLED_P6x8Str(70,7,"Left");      
                  else if(Dir_IslandTurn == Turn_Right)    OLED_P6x8Str(70,7,"Right"); 
                  else                                      OLED_P6x8Str(70,7,"No");
               }
           }
           break;

           //------第四页参数---------                                             
           case 4:
           {
          
               
               OLED_P6x8Str(15,2,"Sum_Dis");   OLED_Print_Int(70,2,Sum_Distance/100);
               
               OLED_P6x8Str(15,3,"Err=");      OLED_Print_Int(40,3,Error); 

          
          
           }
           break;
                            
           default:
           break;
        }        

    }
    
    //----调参界面显示------   
    else
    {
        OLED_P6x8Str(6,0,"Debug:"); 
        OLED_P6x8Str(0,Debug_Para_Slt+1,"->"); 

        
        switch(Debug_Page_Slt)
        {
           //------第一页显示---------
           case 1:
           {
               
           }
           break;

           //------第二页显示---------               
           case 2:
           {
           }
           break;

           //------第三页显示---------                              
           case 3:
           {
           }
           break;

           //------第四页参数---------                                             
           case 4:
           {
           }
           break;
                            
           default:
           break;
        }        
    }
 }
   

void OLED_Stop()
 {
     OLED_P6x8Str(20, 3,"STOP!!");
 }


