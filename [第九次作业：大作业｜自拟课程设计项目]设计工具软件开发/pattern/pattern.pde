int row = 10; 
int col = 10; 
int unitSize = 100; 
float unitAngle = PI/4; 
int cellSize;
int cellStroke;

void setup() {
  size(800, 800);
  background(#4f5d50);
  cellSize = width/row;
  cellStroke = cellSize/8;
  drawPattern();
}

void reset() {
  background(#4f5d50);
  drawPattern();
}

void draw(){
}

void drawPattern() {
  for (int i = 0; i < row; i ++) {
    for (int j = 0; j < col; j ++) {
      pushMatrix();
      translate(i*cellSize+cellSize/2, j*cellSize+cellSize/2);
      rotate(PI/2*floor(random(4)));
      int choice = floor(random(5));
      int rancol= floor(random(3));
      drawrect();
      switch(rancol){
      case 0:
        colA();
        break;
      case 1:
        colB();
        break;
      case 2:
        colC();
        break;
      }
      strokeWeight(cellStroke);
      strokeCap(SQUARE);
      switch(choice) {
      case 0:
        shapeA();
        break;
      case 1:
        shapeB();
        break;
      case 2:
        shapeC();
        break;
      case 3:
        shapeD();
        break;
      case 4:
        shapeE();
        break;
      }
      popMatrix();
    }
  }
}

void colA(){
stroke(#d6d9c5);
}

void colB(){
stroke(#a9b6a4);
}

void colC(){
stroke(#dadad8);
}

void shapeA() {
  line(-cellSize/2, 0, cellSize/2, 0);
}

void shapeB() {
  line(0, -cellSize/2, 0, cellSize/2);
}

void shapeC() {
  arc(-cellSize/2, -cellSize/2, cellSize, cellSize, 0, PI/2);
}

void shapeD(){
  circle(0,0,cellSize-12);
}

void shapeE(){
  strokeWeight(cellSize);
  line(0,-cellSize/2,0,cellSize/2);
}

void mousePressed(){
reset();
}

void drawrect(){
  stroke(102);
  strokeWeight(0.5);
  noFill();
  rectMode(CENTER);
  rect(0, 0, cellSize, cellSize);

}
void keyPressed()  //save the frame
{
  if (key == 's' || key =='S')
  {
    saveFrame("planlist-###.png");
  }
}
