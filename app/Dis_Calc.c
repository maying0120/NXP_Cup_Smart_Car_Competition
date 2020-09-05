#include "Includes.h"


//变量定义与声明
uint8  Flag_Island = 0; //0:正常, 1:环岛内
uint8  Flag_Ramp = 0;   //0:正常，1:坡道
uint8  Flag_Island_Last = 0;
uint8  final_Last;
uint8  fang = 0;
uint8  Flag_ForceTurn = 0;
uint8  peak_real[8];
uint8  sensor[8][SampleNum] = {0}; //电感的多个采样值
int    peak[8] = {0}; //每个电感的峰峰值
int    E_Max[8] = {0};     //电感1，2，3最大电压值
int    start_peak[8][10] = {0};
int    RampIn_Distance=0;
int    RampAdmit_Distance = 0;
int    ForceTurn_Distance=0;
int    Pre_Error[ErrorNum] = {0};
int    Error = 0;
int    Turn_Distance;
int    Case3_Behind_PassDis;
extern long int IslandIn_Distance;
extern uint8 Island_Error_Turn;
extern uint8 Turn_Around;
extern uint8 Family_Status;
extern uint8 final;
extern uint8 Flag_Island_Confirm_Dir;
extern uint8 Dir_IslandTurn;
extern uint8 Flag_Island_Position;
extern uint8 OverTake_Straight;
extern uint8 Case2_Ahead_KeepSide;  
extern uint8 Case2_Behind_KeepSide;
extern uint8 OverTake_CrossRoad;
extern uint8 Case3_Ahead_Stop;
extern uint8 Case3_Behind_Pass;
extern uint8 Case3_Turn;
extern uint8 SendCommand;
extern int Count;
extern int Mixed_Distance;
extern int Ahead_TurnError; 
extern int Distance;
extern int Flag_Island_Confirm;
extern int Flag_Island_Confirm_Last;
extern long int Sum_Distance;
extern float  error_all;
extern struct Speed Spd;
extern int final_Distance;
extern uint8 Spd_Switch;
/*
function:解算车体中心到


跑道中心的距离
return:Null
*/
void Dis_Calc()
{
  //adc转换
  ad_convert();
  //每个电感的峰峰值解算
  peak_calc();
  //坡道处理
  Ramp_Handle();
  //和环岛相关的处理
  Island_Handle();
  //偏差计算
  error_calcu(); 
  //偏差赋值
  Error = (int)error_all;
  //防丢线
  Prevent_LostLine(); 
}

/*
function:Prevent the generation of the wrong Error
return:Null*/
void Prevent_LostLine()
{ 
  //---------环岛外路径防丢线--------//
   if(     Flag_Ramp==0
       && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
       //&& Flag_Island_Confirm_Last==0 && final_Last==0 && Flag_Island_Last==0
       && (peak[0]<60 && peak[4]<60 && peak[1]<50 && peak[3]<50)
       && Case2_Ahead_KeepSide==0 && Case2_Behind_KeepSide==0
     )    
     {
         if(fabs(Error-Pre_Error[ErrorNum-1]) > 25)
            Error = Pre_Error[ErrorNum-1]; 
     }
   
  //--------环岛内路径防丢线---------//
   //第一、二步防丢线
   if(Flag_Island_Confirm!=0 || final!=0)
     if(Turn_Around == 0)
      {
        //数值不能变小
        if(fabs(Error) < fabs(Pre_Error[ErrorNum-1]))
        {
           if(Error > 0)
             Error = (int)(fabs(Pre_Error[ErrorNum-1]));
           else
             Error = -(int)(fabs(Pre_Error[ErrorNum-1]));
        }
          
        //方向不能改变
        if(Flag_Island_Confirm_Dir == Turn_Left)
           Error = (int)(fabs(Error));  
        else
           Error = -(int)(fabs(Error));          
      }  
   
   //环岛内防丢线
   if(Flag_Island==1 && fabs(Error-Pre_Error[ErrorNum-1]) >= 30)
     {
        //还处于直道时，防止跳变
        if(peak[7]>55)
            Error = Pre_Error[ErrorNum-1];  
        
        //进入环岛时，需要条件
        else
          { 
            if(peak[1]+peak[3]<30 && peak[1]<20 && peak[3]<20)
                Error = Pre_Error[ErrorNum-1];  
          }
     }
     
   
  
  //-----------坡道防丢线------------//
  if(     Flag_Ramp==1  && Flag_Island_Confirm==0 && Flag_Island==0 && final==0
       && Flag_Island_Confirm_Last==0 && final_Last==0 && Flag_Island_Last==0 )    
     {
         if(fabs(Error-Pre_Error[ErrorNum-1]) > 50)
            Error = Pre_Error[ErrorNum-1]; 
     }
   
  //-----后车进入环岛的强制转向------//
  //进入环岛后，后车强行转向
     if(Turn_Around == 1)
         if(Flag_Island_Confirm>=Confirm_First*100 || final!=0)
            {        
               if(Dir_IslandTurn == Turn_Right)
                  Error = -(20+2*Spd_Switch);
               else if(Dir_IslandTurn == Turn_Left)
                  Error =  (20+2*Spd_Switch);
            }
  
  for(uint8 i=0; i<ErrorNum-1; i++)
     Pre_Error[i] = Pre_Error[i+1];
  Pre_Error[ErrorNum-1] = Error;
}


//开机采值
void Set_SensorPara(uint8 cnt)
{
  //采值
  for(uint8 i=0; i<SampleNum; i++)
   {
      sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
      sensor[7][i] = LPLD_ADC_Get(ADC1, AD9);
      sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
      sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
      sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
      sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
      sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
      sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
   } 
  
  for(uint8 i=0; i<8; i++)
  {
     peak[i] = CalcMaxToMin(sensor[i]);
  }
  
  for(uint8 i=0; i<8; i++)
     start_peak[i][cnt] = peak[i];
}


void  AveEmax_Calcu() 
{
   for(uint8 i=0; i<10; i++)
     {
       E_Max[0] += start_peak[0][i];
       E_Max[1] += start_peak[1][i];
       E_Max[2] += start_peak[2][i];
       E_Max[3] += start_peak[3][i];
       E_Max[4] += start_peak[4][i];
       E_Max[5] += start_peak[5][i];
       E_Max[6] += start_peak[6][i];
       E_Max[7] += start_peak[7][i];
     }
   
   for(uint8 i=0; i<8; i++)
      E_Max[i] /= 10;
   
   E_Max[1]  = (E_Max[1]+E_Max[3])/2;
   E_Max[3]  =  E_Max[1];
   E_Max[1] *= (Sensor_Height2*Sensor_Height2 + 7.5*7.5)/(Sensor_Height2*Sensor_Height2*1.0);
   E_Max[3]  =  E_Max[1];  
   E_Max[5] *= 2;
   E_Max[6] *= 2;
   
   for(uint8 i=0; i<8; i++)
     if(E_Max[i] < 5)
        E_Max[i] = 5;
}


void ad_convert()
{
  uint16 i;
  for(i=0; i<SampleNum; i++)
    {
      sensor[0][i] = LPLD_ADC_Get(ADC1, AD12);
      sensor[7][i] = LPLD_ADC_Get(ADC1, AD9);
      sensor[1][i] = LPLD_ADC_Get(ADC1, AD15);
      sensor[2][i] = LPLD_ADC_Get(ADC1, AD14); 
      sensor[3][i] = LPLD_ADC_Get(ADC1, AD10);
      sensor[4][i] = LPLD_ADC_Get(ADC1, AD11);
      sensor[5][i] = LPLD_ADC_Get(ADC1, AD13);
      sensor[6][i] = LPLD_ADC_Get(ADC1, AD8);
    }   
}


void peak_calc()
{
   uint8 i;
  
   for(i=0; i<8; i++)
   {
      peak[i] = CalcMaxToMin(sensor[i]);
      peak_real[i] = peak[i];
   }
  
  // peak1, peak2, peak3归一化 
   peak[1] = (int)( (peak[1]* 100)/(E_Max[1]*1.0) );   
   peak[3] = (int)( (peak[3]* 100)/(E_Max[3]*1.0) );   
   peak[2] = (int)( (peak[2]* 100)/(E_Max[2]*1.0) );   
   
   //peak0, peak4归一化
   peak[0] = (int)(peak[0]/(E_Max[2]*1.0) * 120);   
   peak[4] = (int)(peak[4]/(E_Max[2]*1.0) * 120);  
   
   //peak5, peak6，peak7归一化 
   peak[5] = (int)( (peak[5]* 100)/(E_Max[5]*1.0) );   
   peak[6] = (int)( (peak[6]* 100)/(E_Max[6]*1.0) );   
   peak[7] = (int)( (peak[7]* 100)/(E_Max[7]*1.0) );   
} 


uint8 CalcMaxToMin(uint8 data[SampleNum]) 
{
    uint8 Max = 0;
    uint8 Min = 0;
    Max = data[0];
    Min = data[0];
    
    for(uint8 i=0; i<SampleNum; i++) 
       {
         if(data[i] > Max)   Max = data[i];
         if(data[i] < Min)   Min = data[i];
       }
    return Max-Min;
} 
  

float  error_all;
float  error2_all;  
float  error7_all;  
uint8   Flag_Direction = 0;
void  error_calcu()
{
   float  error_sensor[8] = {0};  //每个电感到跑道中心的距离
   int peak2;
   int peak7;
   
   peak2 = peak[2];
   if(peak2 > 100)    peak2 = 100;
   error_sensor[2] = (float)( 100/(peak2*1.0) -1);
   error2_all = Sensor_Height2*sqrt(error_sensor[2]);

     
   //环岛处理   
   if(Flag_Island==1 || Flag_Island_Confirm!=0 || final!=0)
    {
      peak2 = 2*peak[2];
      if(peak2 > 100)    peak2 = 100;
      error_sensor[2] = (float)( 100/(peak2*1.0) -1);
      error2_all = Sensor_Height2*sqrt(error_sensor[2]);     
    }

   //正常距离正负判断
   if(Flag_Island==0)
      {
         if(peak[1]>30 || peak[3]>30)
          {
            if(peak[1] > peak[3])
              {
                error_all = error2_all;
                Flag_Direction = 1;     
              }
            else if(peak[1] < peak[3])
              {
                error_all = -error2_all;
                Flag_Direction = 2;     
              }
          }
         else
          { 
            if(Flag_Direction == 1)
                error_all = error2_all;
            else              
                error_all = -error2_all;
          }        
      }
   
   //环岛方向判断
   else
     {
         if((peak[1]>25 || peak[3]>25))
          {
            if(peak[1] > peak[3])
              {
                error_all = error2_all;
                Flag_Direction = 1;     
              }
            else if(peak[1] < peak[3])
              {
                error_all = -error2_all;
                Flag_Direction = 2;     
              }
          }
         else
          { 
            if(Flag_Direction == 1)
                error_all = error2_all;
            else              
                error_all = -error2_all;
          }        
    
     }

   //-----直道超车偏差修正------------//
   if(OverTake_Straight == Yes)
     {
        //前车右边停车
        if(Turn_Around == 0)
          {
            if(Case2_Ahead_KeepSide == 1)
               error_all = error_all - 14;      
          }
        //后车左边超车
        else if(Turn_Around == 1) 
          {
            if(Case2_Behind_KeepSide == 1)
               error_all = error_all + 12;                 
          }
     }
   
   
   
    //Error限幅
    if(error_all > Error_Limit)
       error_all = Error_Limit;
    else if(error_all < -Error_Limit)
       error_all = -Error_Limit; 
}


