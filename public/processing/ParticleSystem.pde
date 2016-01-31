class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  float r,g,b;

  ParticleSystem(PVector location,float red,float green,float blue) {
    origin = location.get();
    r=red;
    g=green;
    b=blue;
    particles = new ArrayList<Particle>();
  }
  void addParticles(int cantidad) {
    for(int i=1;i<=cantidad;i++){
    particles.add(new Particle(origin,r,g,b));
    }
  }
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}