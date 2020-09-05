#include "Includes.h"

/*
函数功能：按键调节
按键：Key[0]--复位，Key[3]--返回上一步，Key[2]--自加，Key[1]--自减 Key[4]-- 返回菜单键 Key[5] -- 下一步
返回值：无
*/
uint8 ShowOrDebug = Show;
int8  Show_Page_Slt = 1;
int8  Debug_Page_Slt = 1;
int8  Debug_Para_Slt = 0;
int text1 = 100;
int text2 = 300;

extern int  Limit_Distance_EnterCurve; 
extern int  Spd_UpLimit; 
extern int  Spd_DownLimit; 
extern int  Limit_Distance_EnterStrai; 
extern int  Spd_Straight;

extern int Limit_Distance_EnterIsland; 
extern int Island_Spd_UpLimit; 
extern int Island_Spd_DownLimit;


void Keyboard()
{  
  //-------调参界面和不可调参界面之间的切换--------
  Show_Or_Debug(); 
  
  //------------不可调参界面的参数----------------
  if(ShowOrDebug == Show)
     Parameter_Show();
  
  //-------------可调参界面的参数----------------  
  if(ShowOrDebug == Debug)
     Parameter_Debug();   
}


void Show_Or_Debug()
{
  if(Key_Select == Press)
  {
     DisableInterrupts; 
     LPLD_LPTMR_DelayMs(10);
     
     if(Key_Select == Press)
     {
        while(Key_Select == Press);
        
        if(ShowOrDebug == Show)
        {
          ShowOrDebug = Debug;
          Debug_Page_Slt = 1;
          Show_Page_Slt = 0;
        }
        
        else
        {
          ShowOrDebug = Show;
          Debug_Para_Slt = 0;          
          Debug_Page_Slt = 0;
          Show_Page_Slt = 1;
        }
     }
     EnableInterrupts;
  }
}


void Parameter_Show()
{
        //-----加1页-------
        if(Key_Up == Press)
        {
           DisableInterrupts;
           
           LPLD_LPTMR_DelayMs(10);
           
           if(Key_Up == Press)
             {
                while(Key_Up == Press);
                
                if(Show_Page_Slt <= Show_Page_Numlimit)
                  Show_Page_Slt++;
                
                if(Show_Page_Slt > Show_Page_Numlimit)
                  Show_Page_Slt = 1;
             }
           
           EnableInterrupts;
        }
        
        //-----减1页-------
        if(Key_Down == Press)
        {
           DisableInterrupts;
           
           LPLD_LPTMR_DelayMs(10);
           
           if(Key_Down == Press)
             {
                while(Key_Down == Press);
                
                if(Show_Page_Slt > 1)
                  Show_Page_Slt--;                
             }
           
           EnableInterrupts;
        }
}


void Parameter_Debug()
{  
        //-------------页面切换--------------
        if(Debug_Para_Slt == 0)
        {
            //--------------加1页----------------
            if(Key_Up == Press)
            {
               DisableInterrupts;
               
               LPLD_LPTMR_DelayMs(10);
               
               if(Key_Up == Press)
                 {
                    while(Key_Up == Press);
                    
                    if(Debug_Page_Slt <= Debug_Page_Numlimit)
                      Debug_Page_Slt++;
                 }
               
               EnableInterrupts;
            }
            
            //--------------减1页----------------
            if(Key_Down == Press)
            {
               DisableInterrupts;
               
               LPLD_LPTMR_DelayMs(10);
               
               if(Key_Down == Press)
                 {
                    while(Key_Down == Press);
                    
                    if(Debug_Page_Slt > 1)
                      Debug_Page_Slt--;
                 }
               
               EnableInterrupts;
            }
        
        }
        
        //-------------进入调参--------------
        if(Debug_Para_Slt == 0)
        if(Key_Plus==Press || Key_Minus==Press)
        {
           DisableInterrupts;
           
           LPLD_LPTMR_DelayMs(10);
           
           if(Key_Plus==Press || Key_Minus==Press)
             {
                while(Key_Plus==Press || Key_Minus==Press);
                
                if(Debug_Para_Slt == 0)
                  Debug_Para_Slt = 1;                
             }
           EnableInterrupts;
        }
        
        //------------选择参数---------------
        if(Debug_Para_Slt != 0)
        {
            //参数位置+
            if(Key_Up == Press)
            {
               DisableInterrupts;
               
               LPLD_LPTMR_DelayMs(10);
               
               if(Key_Up == Press)
                 {
                    if(Debug_Para_Slt < Para_NumLimit)
                      Debug_Para_Slt++;                

                    while(Key_Up == Press);                    
                 }  
               EnableInterrupts;
            }

            //参数位置-            
            if(Key_Down == Press)
            {
               DisableInterrupts;
               
               LPLD_LPTMR_DelayMs(10);
               
               if(Key_Down == Press)
                 {
                    if(Debug_Para_Slt > 1)
                      Debug_Para_Slt--;      
                    
                    while(Key_Down == Press);
                 }  
               EnableInterrupts;
            }
           
        }

        //------------参数调节---------------
        if(Debug_Para_Slt != 0)
        {
          //--------参数加----------
          if(Key_Plus == Press)
          {
              DisableInterrupts;
              
              LPLD_LPTMR_DelayMs(10);
              
              switch(Debug_Page_Slt)
              {
                 //------第一页参数---------
                 case 1:
                 {
                    switch(Debug_Para_Slt)
                    { 
                       case 1:  
                       {
                       }
                       
                       break; 
                       
                       case 2:      break;
                       
                       case 3:      break;  
                       
                       case 4:      break;
                     
                       case 5:      break;                
                       
                       default:     break; 
                    }
                 }
                 break;

                 //------第二页参数---------               
                 case 2:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;

                 //------第三页参数---------                              
                 case 3:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;

                 //------第四页参数---------                                             
                 case 4:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;
                                  
                 default:
                 break;
              }    
             
              while(Key_Plus == Press);                 
             
              EnableInterrupts;
          }

          //--------参数减----------
          if(Key_Minus == Press)
          {
              DisableInterrupts;
              
              LPLD_LPTMR_DelayMs(10);
              
              switch(Debug_Page_Slt)
              {
                 //------第一页参数---------
                 case 1:
                 {
                    switch(Debug_Para_Slt)
                    { 
                       case 1:   text1 -= 10;   break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;

                 //------第二页参数---------               
                 case 2:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;

                 //------第三页参数---------                              
                 case 3:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;

                 //------第四页参数---------                                             
                 case 4:
                 {
                    switch(Debug_Para_Slt)
                    {
                       case 1:      break;     
                       case 2:      break;
                       case 3:      break;     
                       case 4:      break;     
                       case 5:      break;     
                       default:     break; 
                    }
                 }
                 break;
                                  
                 default:
                 break;
              }    
             
              while(Key_Minus == Press);                 
             
              EnableInterrupts;
          }

        }
}



