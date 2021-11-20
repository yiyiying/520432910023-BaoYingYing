boolean flag1, flag2, flag3, flag4, flag5, flag6;
PImage delete, tag, check, happy, sad, write;
int x, y;

void setup() {

  size(900, 700);
  background(#e1dccd);
  delete=loadImage("delete.png");
  tag=loadImage("tag.png");
  check=loadImage("check.png");
  happy=loadImage("happy.png");
  sad=loadImage("sad.png");
  write=loadImage("write.png");
  flag1=false;
  flag2=false;
  flag3=false;
  flag4=false;
  flag5=false;
  flag6=false;
}

void draw() {
  fill(#968a89);
  noStroke();
  ellipse(50, 100, 50, 50);
  ellipse(50, 200, 50, 50);
  ellipse(50, 300, 50, 50);
  ellipse(50, 400, 50, 50);
  ellipse(50, 500, 50, 50);
  ellipse(50, 600, 50, 50);
  textSize(17);
  fill(0);
  text("delete", 30, 140);
  text("tag", 35, 240);
  text("check", 30, 340);
  text("happy", 30, 440);
  text("sad", 35, 540);
  text("write", 30, 640);
}

void mousePressed() {

  if (mouseX>25&&mouseX<75&&mouseY>75&&mouseY<125) {
    flag1=!flag1;
  }
  if (flag1) {
    image(delete, mouseX, mouseY, 25, 25);
  }
  if (mouseX>25&&mouseX<75&&mouseY>175&&mouseY<225) {
    flag2=!flag2;
  }
  if (flag2) {
    image(tag, mouseX, mouseY, 25, 25);
  }

  if (mouseX>25&&mouseX<75&&mouseY>275&&mouseY<325) {
    flag3=!flag3;
  }
  if (flag3) {
    image(check, mouseX, mouseY, 25, 25);
  }

  if (mouseX>25&&mouseX<75&&mouseY>375&&mouseY<425) {
    flag4=!flag4;
  }
  if (flag4) {
    image(happy, mouseX, mouseY, 25, 25);
  }
  if (mouseX>25&&mouseX<75&&mouseY>475&&mouseY<525) {
    flag5=!flag5;
  }
  if (flag5) {
    image(sad, mouseX, mouseY, 25, 25);
  }

  if (mouseX>25&&mouseX<75&&mouseY>575&&mouseY<625) {
    flag6=!flag6;
  }
  if (flag6) {
    image(write, mouseX, mouseY, 25, 25);
  }
}

void keyPressed()  //save the frame
{
  if (key == 's' || key =='S')
  {
    saveFrame("planlist-###.png");
  }
}
