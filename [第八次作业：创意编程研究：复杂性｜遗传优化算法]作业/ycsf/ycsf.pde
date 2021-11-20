creatpoint[]tri;

void setup(){
 size(800,600);
 background(255);
 noStroke();
 tri=new creatpoint[12];
 for(int i=0;i<12;i++){
 tri[i]=new creatpoint();
 }
 for(int i=0;i<6;i++){
 translate(300*(i%3),300*(i-i%3)/3);
  tri[i].show();
translate(-300*(i%3),-300*(i-i%3)/3);
 }

}
void draw(){
  fill(95);
  noStroke();
  rect(360,520,80,40);
  
  
}

void mousePressed(){
  if(mouseY<500){
tri[(mouseX-mouseX%300)/300+(mouseY-mouseY%300)/300*3].power= tri[(mouseX-mouseX%300)/300+(mouseY-mouseY%300)/300*3].power  +1;
stroke(0);
strokeWeight(3);
line(mouseX-mouseX%300,mouseY-mouseY%300,mouseX-mouseX%300,mouseY-mouseY%300+tri[(mouseX-mouseX%300)/300+(mouseY-mouseY%300)/300*3].power*5);
  }
  else if(mouseX>360&&mouseX<440&&mouseY>520&&mouseY<560){
  yc();
  }
}

class creatpoint{
PVector []points=new PVector[9];
int power;
color col[]=new color[3];

creatpoint(){
for(int i=0;i<9;i++){
points[i]=new PVector(random(200),random(200));
}
power=1;
for(int i=0;i<3;i++){
col[i]=color(int(random(255)),int(random(255)),int(random(255)),180);
}

}

void show(){
  fill(col[0]);
triangle(points[0].x,points[0].y,points[1].x,points[1].y,points[2].x,points[2].y);
  fill(col[1]);
triangle(points[3].x,points[3].y,points[4].x,points[4].y,points[5].x,points[5].y);
  fill(col[2]);
triangle(points[6].x,points[6].y,points[7].x,points[7].y,points[8].x,points[8].y);
}
}

void yc(){
  int sum=0;
  int tempx=0;
  for(int i=0;i<6;i++){
    sum=sum+tri[i].power;
  }
for(int i=0;i<9;i++){
  for(int j=0;j<6;j++){
    tempx=int(tempx+tri[j].points[i].x*tri[j].power/sum);
  }
    for(int j=0;j<6;j++){
    tri[j+6].points[i].x=int(tempx*0.5+random(200)*0.5);
    }
    tempx=0;
}
fill(255);
noStroke();
rect(0,0,800,500);
  for(int j=0;j<6;j++){
    tri[j]=tri[j+6];
     translate(300*(j%3),300*(j-j%3)/3);
  tri[j].show();
translate(-300*(j%3),-300*(j-j%3)/3);
  }
  sum=0;

}
