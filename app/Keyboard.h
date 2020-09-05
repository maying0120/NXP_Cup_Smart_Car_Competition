#ifndef KEYBOARD_H
#define KEYBOARD_H

#define  Key_Select     LPLD_GPIO_Input_b(PTD, 0)
#define  Key_Up         LPLD_GPIO_Input_b(PTC,15)
#define  Key_Down       LPLD_GPIO_Input_b(PTC,14)
#define  Key_Minus      LPLD_GPIO_Input_b(PTD, 3)
#define  Key_Plus       LPLD_GPIO_Input_b(PTD, 1)

#define  Press                0
#define  Loose                1

#define  Show                 0
#define  Debug                1

#define  Debug_Page_Numlimit  5
#define  Show_Page_Numlimit   5
#define  Para_NumLimit        6

void  Keyboard(void);
void  Show_Or_Debug(void); 
void  Parameter_Show(void);
void  Parameter_Debug(void);


#endif