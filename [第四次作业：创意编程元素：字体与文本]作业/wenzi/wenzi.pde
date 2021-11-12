PImage mm;
int x, y, c, all;

void setup() {
  frameRate(500);
  size(600, 600);
  background(#B9AD92);
  noStroke();
  mm=loadImage("mm.jpg");
  colorMode(HSB, 360, 100, 100);
}
void draw() {
  x=int(random(mm.width));
  y=int(random(mm.height));
  all=x+y*mm.width;
  loadPixels();
  float r=red(mm.pixels[all]);
  if (r<240) {
    c=int(random(360));
    fill(c, 30, 50);
    circle(x, y, 6);
  }
}
