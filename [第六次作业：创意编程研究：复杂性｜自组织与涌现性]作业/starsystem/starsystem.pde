import java.util.Iterator; 
ArrayList<StarMoveSystem> systems;

void setup() {
  size(800, 600);
  systems = new ArrayList<StarMoveSystem>();
}
void draw() {
  background(150);
  for (StarMoveSystem s : systems) {
    s.run();
    s.addStarMove();
  }
}

void mousePressed() {
  systems.add(new StarMoveSystem(new PVector(mouseX, mouseY)));
}
