class Fang{
 //声明变量
  float FX,FY,FD;
 
 //构造函数
 Fang(float FX,float FY,float FD){
 this.FX = FX;
 this.FY = FY;
 this.FD = FD;
 
 }
 
 void move(){
 FX = FX+1;
 FY = FY+1;
  }
 
 void display(){
   fill(96);
   rect(FX,FY,FD,FD);
 
 
 }

}
