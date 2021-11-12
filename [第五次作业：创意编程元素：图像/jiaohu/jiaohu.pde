boolean flag1,flag2,flag3,flag4,flag5;
PImage paw;
int x,y;

void setup() {

  size(800, 700);
  background(#d6d9c5);
  paw=loadImage("paw.png");
  flag1=false;
  flag2=false;
  flag3=false;
  flag4=true;
  flag5=true;
}

void draw() {
  fill(#a9b6a4);
  noStroke();
  ellipse(50, 150, 60, 60);
  ellipse(50, 350, 60, 60);
  ellipse(50, 550, 60, 60);
  if(flag2&&flag4){
    stroke(#4f5d50);
    strokeWeight(4);
  line(pmouseX,pmouseY,mouseX,mouseY);
  }
  if(flag3&&flag5){
    stroke(#d6d9c5);
    strokeWeight(10);
  line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void mousePressed() {
  
  if (mouseX>20&&mouseX<80&&mouseY>120&&mouseY<180) {
    flag1=!flag1;
  }
  if (flag1) {
    image(paw, mouseX, mouseY, 20, 20);
  }
    if (mouseX>20&&mouseX<80&&mouseY>320&&mouseY<380) {
    flag2=!flag2;
  }
  if(flag2){
  flag4=!flag4;
  }

    if (mouseX>20&&mouseX<80&&mouseY>520&&mouseY<580) {
    flag3=!flag3;
  }
  if (flag3) {
    flag5=!flag5;
  }
}
