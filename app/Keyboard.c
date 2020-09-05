#include "Includes.h"

/*
�������ܣ���������
������Key[0]--��λ��Key[3]--������һ����Key[2]--�Լӣ�Key[1]--�Լ� Key[4]-- ���ز˵��� Key[5] -- ��һ��
����ֵ����
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
  //-------���ν���Ͳ��ɵ��ν���֮����л�--------
  Show_Or_Debug(); 
  
  //------------���ɵ��ν���Ĳ���----------------
  if(ShowOrDebug == Show)
     Parameter_Show();
  
  //-------------�ɵ��ν���Ĳ���----------------  
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
        //-----��1ҳ-------
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
        
        //-----��1ҳ-------
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
        //-------------ҳ���л�--------------
        if(Debug_Para_Slt == 0)
        {
            //--------------��1ҳ----------------
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
            
            //--------------��1ҳ----------------
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
        
        //-------------�������--------------
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
        
        //------------ѡ�����---------------
        if(Debug_Para_Slt != 0)
        {
            //����λ��+
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

            //����λ��-            
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

        //------------��������---------------
        if(Debug_Para_Slt != 0)
        {
          //--------������----------
          if(Key_Plus == Press)
          {
              DisableInterrupts;
              
              LPLD_LPTMR_DelayMs(10);
              
              switch(Debug_Page_Slt)
              {
                 //------��һҳ����---------
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

                 //------�ڶ�ҳ����---------               
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

                 //------����ҳ����---------                              
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

                 //------����ҳ����---------                                             
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

          //--------������----------
          if(Key_Minus == Press)
          {
              DisableInterrupts;
              
              LPLD_LPTMR_DelayMs(10);
              
              switch(Debug_Page_Slt)
              {
                 //------��һҳ����---------
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

                 //------�ڶ�ҳ����---------               
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

                 //------����ҳ����---------                              
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

                 //------����ҳ����---------                                             
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



