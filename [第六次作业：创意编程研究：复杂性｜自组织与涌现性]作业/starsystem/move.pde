class StarMove{ 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

    StarMove(PVector loc) {  
    location = loc.get();  
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    lifespan = 255;
  }
 void run() {  
    update();
    display();
  }

  void update() { 
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }

  void display() { 
    noStroke();
    fill(#EDE7BB);
    Star star = new Star(location); 
    star.display();
  }
  
  Boolean isDead(){
    if(lifespan < 0.0){
      return true;
    }else{
      return false;
    }
  }
}
