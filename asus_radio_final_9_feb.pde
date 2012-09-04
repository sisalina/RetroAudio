#include <glcd.h>
#include "fonts/allFonts.h"  	
char Frase[300];
int val=0;
int estaciones=19;             //////////// si se agregan o quitan estaciones se debe modificar este número
int pos=0;
int pos_2=0;
int n=0;
int a=0;
int b=0;
int r=0;
int q=0;
int j=0;
int c=0;
int h=0;
int d=0;
int s=0;
int t=0;
int final=0;
int marca=0;
int final_2=0;
int marca_2=0;
int alfa=0;
int valor=0;
int valor2=0;

void setup() {
  
  Serial.begin(9600);
  GLCD.Init();
  GLCD.ClearScreen(); 
  GLCD.SelectFont(SystemFont5x7, BLACK); 	
  val = analogRead(5);
  pos = val*estaciones/1024+1;
  Serial.print("tuner: ");
  Serial.println(val);
    GLCD.CursorToXY(4,GLCD.Bottom-10);
    GLCD.print("Estacion: ");
    GLCD.CursorToXY(60,GLCD.Bottom-10);
    GLCD.print(pos);
    GLCD.CursorToXY(60+12,GLCD.Bottom-10);
    GLCD.print("/");
    GLCD.CursorToXY(60+18,GLCD.Bottom-10);
    GLCD.print(estaciones);
}

void loop() {
  
  val = analogRead(5);
  pos = val*estaciones/1024+1;
  pos_2=pos;
 
 if (Serial.available() > 0) {    
        Frase[n]=Serial.read();
        n++;  
      }
   
 
 ////////////////////// Revision
  val = analogRead(5);
  pos = val*estaciones/1024+1;
 if(pos!=pos_2){
 pos_2=pos;
   Serial.print("tuner: ");
  Serial.println(val);
  delay(100);
  Serial.print("tuner: ");
  Serial.println(val);
 n=0;
     GLCD.CursorToXY(4,GLCD.Bottom-10);
    GLCD.print("Estacion: ");
    GLCD.CursorToXY(60,GLCD.Bottom-10);
    GLCD.print(pos);
    GLCD.CursorToXY(60+12,GLCD.Bottom-10);
    GLCD.print("/");
    GLCD.CursorToXY(60+18,GLCD.Bottom-10);
    GLCD.print(estaciones);
 }
 ////////////////////////
       
 if(n==300){
        q=50;
             while(a==0){
                if(Frase[q]==13 && Frase[q+1]==10 && Frase[q+2]==78 && Frase[q+3]==97 && Frase[q+4]==109 && Frase[q+5]==101 && Frase[q+6]==58){ // Name:
                    marca=q+7; 
                    a=1; 
                  }
                q++;
              }
    q=50;
    a=0;
    r=marca;
    
       while(b==0){
          if(Frase[r]==13){
             final=r; 
             b=1;  
             }
          r++;
          }
    r=0;
    b=0;
    s=50; 
    
while(c==0){
  if(Frase[s]==13 && Frase[s+1]==10 && Frase[s+2]==84 && Frase[s+3]==105 && Frase[s+4]==116 && Frase[s+5]==108 && Frase[s+6]==101 && Frase[s+7]==58 ){
      marca_2=s+8;
      c=1;
     }
    s++;
   }
  s=50;
  c=0;
  h=marca_2;
  while(d==0){
   if(Frase[h]==13){
     final_2=h;
     d=1;
   }
  h++;
  }
  h=0;
  d=0;

  //////////////////////////////////////////////////////// Crear arreglos
  int largo_Name = final-marca;
  char Name[largo_Name];
    for(int x=0; x <= largo_Name-1; x = x+1){
      Name[x]=Frase[marca+x];
    }
  int largo_Title= final_2-marca_2;
  char Title[largo_Title];
  for(int y=0; y <= largo_Title-1; y = y+1){
      Title[y]=Frase[marca_2+y];
    }       

///////////////////////////////////////----------------2° corte-----------------------
  val = analogRead(5);
  pos = val*estaciones/1024+1;
 if(pos!=pos_2){
 pos_2=pos;
   Serial.print("tuner: ");
  Serial.println(val);
  delay(100);
  Serial.print("tuner: ");
  Serial.println(val);
 largo_Name=0;
 largo_Title=0;
     GLCD.CursorToXY(4,GLCD.Bottom-10);
    GLCD.print("Estacion: ");
    GLCD.CursorToXY(60,GLCD.Bottom-10);
    GLCD.print(pos);
    GLCD.CursorToXY(60+12,GLCD.Bottom-10);
    GLCD.print("/");
    GLCD.CursorToXY(60+18,GLCD.Bottom-10);
    GLCD.print(estaciones);
 }
 
 //////////////////////////////////////-----------------------------------------------
 
//////////////////////////////////////////////LCD pre-imagen    
    if(valor==0){
      
    GLCD.ClearScreen();
    GLCD.CursorToXY(4,35);
   GLCD.print(Title[0]);
   GLCD.CursorToXY(10,35);  
   GLCD.print(Title[1]);
   GLCD.CursorToXY(16,35);  
   GLCD.print(Title[2]);
   GLCD.CursorToXY(22,35);  
   GLCD.print(Title[3]);
   GLCD.CursorToXY(28,35);  
   GLCD.print(Title[4]);
   GLCD.CursorToXY(34,35);  
   GLCD.print(Title[5]);
   GLCD.CursorToXY(40,35);  
   GLCD.print(Title[6]);
   GLCD.CursorToXY(46,35);  
   GLCD.print(Title[7]);
   GLCD.CursorToXY(52,35);  
   GLCD.print(Title[8]);
   GLCD.CursorToXY(58,35);  
   GLCD.print(Title[9]);
   GLCD.CursorToXY(64,35);  
   GLCD.print(Title[10]);
   GLCD.CursorToXY(70,35);  
   GLCD.print(Title[11]);
   GLCD.CursorToXY(76,35);  
   GLCD.print(Title[12]);
   GLCD.CursorToXY(82,35);  
   GLCD.print(Title[13]);
   GLCD.CursorToXY(88,35);  
   GLCD.print(Title[14]);
   GLCD.CursorToXY(94,35);  
   GLCD.print(Title[15]);
   GLCD.CursorToXY(100,35);  
   GLCD.print(Title[r+16]);
   GLCD.CursorToXY(106,35);  
   GLCD.print(Title[r+17]);
   GLCD.CursorToXY(112,35);  
   GLCD.print(Title[r+18]);
   GLCD.CursorToXY(118,35);  
   GLCD.print(Title[r+19]);
    }
    valor=0;
 ///////////////////////////////////////////// LCD Display



   if(largo_Name>20){
   for(int r=0; r<=largo_Name-20;r=r+1){   
   GLCD.CursorToXY(4,15);
   GLCD.print(Name[r]);
   GLCD.CursorToXY(10,15);  
   GLCD.print(Name[r+1]);
   GLCD.CursorToXY(16,15);  
   GLCD.print(Name[r+2]);
   GLCD.CursorToXY(22,15);  
   GLCD.print(Name[r+3]);
   GLCD.CursorToXY(28,15);  
   GLCD.print(Name[r+4]);
   GLCD.CursorToXY(34,15);  
   GLCD.print(Name[r+5]);
   GLCD.CursorToXY(40,15);  
   GLCD.print(Name[r+6]);
   GLCD.CursorToXY(46,15);  
   GLCD.print(Name[r+7]);
   GLCD.CursorToXY(52,15);  
   GLCD.print(Name[r+8]);
   GLCD.CursorToXY(58,15);  
   GLCD.print(Name[r+9]);
   GLCD.CursorToXY(64,15);  
   GLCD.print(Name[r+10]);
   GLCD.CursorToXY(70,15);  
   GLCD.print(Name[r+11]);
   GLCD.CursorToXY(76,15);  
   GLCD.print(Name[r+12]);
   GLCD.CursorToXY(82,15);  
   GLCD.print(Name[r+13]);
   GLCD.CursorToXY(88,15);  
   GLCD.print(Name[r+14]);
   GLCD.CursorToXY(94,15);  
   GLCD.print(Name[r+15]);
   GLCD.CursorToXY(100,15);  
   GLCD.print(Name[r+16]);
   GLCD.CursorToXY(106,15);  
   GLCD.print(Name[r+17]);
   GLCD.CursorToXY(112,15);  
   GLCD.print(Name[r+18]);
   GLCD.CursorToXY(118,15);  
   GLCD.print(Name[r+19]);
      ///////////////////////////////////////////////////////////////////corte en scrolling NAME  
  val = analogRead(5);
  pos = val*estaciones/1024+1;
  if(pos!=pos_2){
  pos_2=pos;
  Serial.print("tuner: ");
  Serial.println(val);
  delay(100);
  Serial.print("tuner: ");
  Serial.println(val);
  r=largo_Name-20+100;
  valor2=1;
  largo_Title=0;
  GLCD.ClearScreen();
      GLCD.CursorToXY(4,GLCD.Bottom-10);
    GLCD.print("Estacion: ");
    GLCD.CursorToXY(60,GLCD.Bottom-10);
    GLCD.print(pos);
    GLCD.CursorToXY(60+12,GLCD.Bottom-10);
    GLCD.print("/");
    GLCD.CursorToXY(60+18,GLCD.Bottom-10);
    GLCD.print(estaciones);
}     
   //////////////////////////////////////////////////////////////////////////////////////////
   delay(150);
   if(j==0){
     delay(1200);
     }
   j=1;
     }  
   }
 j=0;
 
////////////////////////////////////////////////////////////////////////////////// 
   if(largo_Title>20){
   for(int r=0; r<=largo_Title-20;r=r+1){ 
   GLCD.CursorToXY(4,35);
   GLCD.print(Title[r]);
   GLCD.CursorToXY(10,35);  
   GLCD.print(Title[r+1]);
   GLCD.CursorToXY(16,35);  
   GLCD.print(Title[r+2]);
   GLCD.CursorToXY(22,35);  
   GLCD.print(Title[r+3]);
   GLCD.CursorToXY(28,35);  
   GLCD.print(Title[r+4]);
   GLCD.CursorToXY(34,35);  
   GLCD.print(Title[r+5]);
   GLCD.CursorToXY(40,35);  
   GLCD.print(Title[r+6]);
   GLCD.CursorToXY(46,35);  
   GLCD.print(Title[r+7]);
   GLCD.CursorToXY(52,35);  
   GLCD.print(Title[r+8]);
   GLCD.CursorToXY(58,35);  
   GLCD.print(Title[r+9]);
   GLCD.CursorToXY(64,35);  
   GLCD.print(Title[r+10]);
   GLCD.CursorToXY(70,35);  
   GLCD.print(Title[r+11]);
   GLCD.CursorToXY(76,35);  
   GLCD.print(Title[r+12]);
   GLCD.CursorToXY(82,35);  
   GLCD.print(Title[r+13]);
   GLCD.CursorToXY(88,35);  
   GLCD.print(Title[r+14]);
   GLCD.CursorToXY(94,35);  
   GLCD.print(Title[r+15]);
   GLCD.CursorToXY(100,35);  
   GLCD.print(Title[r+16]);
   GLCD.CursorToXY(106,35);  
   GLCD.print(Title[r+17]);
   GLCD.CursorToXY(112,35);  
   GLCD.print(Title[r+18]);
   GLCD.CursorToXY(118,35);  
   GLCD.print(Title[r+19]);
     /////////////////////////////////////////////////// Corte en slide TITLE
   val = analogRead(5);
   pos = val*estaciones/1024+1;
   if(pos!=pos_2){
   pos_2=pos;
   Serial.print("tuner: ");
   Serial.println(val);
   delay(100);
   Serial.print("tuner: ");
   Serial.println(val);
   r=largo_Title+100;
   GLCD.ClearScreen();
       GLCD.CursorToXY(4,GLCD.Bottom-10);
    GLCD.print("Estacion: ");
    GLCD.CursorToXY(60,GLCD.Bottom-10);
    GLCD.print(pos);
    GLCD.CursorToXY(60+12,GLCD.Bottom-10);
    GLCD.print("/");
    GLCD.CursorToXY(60+18,GLCD.Bottom-10);
    GLCD.print(estaciones);
 }
   /////////////////////////////////////////////////////////////////////     

   delay(150);
   if(j==0){
     delay(1200);
     }
   j=1;
     }  
   }
 j=0;

  /////////////////////////////////////////////////////////////////////////////////// 
      n=1;   
  Serial.flush();   
  }
}
