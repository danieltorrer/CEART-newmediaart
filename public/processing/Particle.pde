class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float r,g,b;

  Particle(PVector l,float red,float green,float blue) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    r=red;
    g=green;
    b=blue;
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(r, g, b,lifespan );
    fill(r,g,b,lifespan);
    ellipse(location.x,location.y,20,20);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
