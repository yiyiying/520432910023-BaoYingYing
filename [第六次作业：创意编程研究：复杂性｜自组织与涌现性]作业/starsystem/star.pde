class Star {  
  PVector star;  
  Star(PVector starLocation) {
    star = starLocation.get();
  }
  
  void display() {
    beginShape();
    vertex(star.x, star.y);
    vertex(star.x + 2, star.y + 8);
    vertex(star.x + 10, star.y + 8);
    vertex(star.x + 4, star.y + 12);
    vertex(star.x + 7, star.y + 20);
    vertex(star.x, star.y + 15);
    vertex(star.x - 7, star.y + 20);
    vertex(star.x - 4, star.y + 12);
    vertex(star.x - 10, star.y + 8);
    vertex(star.x - 2, star.y + 8);
    endShape(CLOSE);
  }
}
