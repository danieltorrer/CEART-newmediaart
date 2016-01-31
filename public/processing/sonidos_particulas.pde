ParticleSystem p0,p1,p2,p3,p4,p5;
float numero;

//Cliente
String notas;

void setup() {
  size(600, 600);

  background(255,0,64);
  //soundsarray=new SoundFile[6];
  //for(int i=0;i<6;i++){
  //    soundsarray[i] = new SoundFile(this, "beat"+(i+1)+".mp3");
  //}
  p0 = new ParticleSystem(new PVector(100, random(0, height/2) ),57,192,186);
  p1 = new ParticleSystem(new PVector(200, random(0, height/2) ),45,44,65);
  p2 = new ParticleSystem(new PVector(300, random(0, height/2) ),107,141,124);
  p3 = new ParticleSystem(new PVector(400, random(0, height/2) ),216,193,159);
  p4 = new ParticleSystem(new PVector(500, random(0, height/2) ),244,234,195);
  p5 = new ParticleSystem(new PVector(600, random(0, height/2) ),116,46,70);

  getProcessingObject();
}

void draw() {
    background(255,0,64);

    p0.run();
    p1.run();
    p2.run();
    p3.run();
    p4.run();
    p5.run();
}

void animateParticle(String notas){ // Para que se ejecute necesita un String
    switch(notas.code) {
      case 49:
        //soundsarray[0].play();
        p0.addParticles(10);
      break;
      case 50:
        //soundsarray[1].play();
        p1.addParticles(10);
      break;
      case 51:
        //soundsarray[2].play();
        p2.addParticles(10);
      break;
      case 52:
        //soundsarray[3].play();
        p3.addParticles(10);
      break;
      case 53:
        //soundsarray[4].play();
        p4.addParticles(10);
      break;
      case 54:
        //soundsarray[5].play();
        p5.addParticles(10);
      break;
      default:
        println('Default: ' + nota);
      break;
     }

}

void keyPressed(){
  switch(key) {
    case '1':
      //soundsarray[0].play();
      p0.addParticles(10);
      //c.write("1\n");
    break;
    case '2':
      //soundsarray[1].play();
      p1.addParticles(10);
      //c.write("2\n");
    break;
    case '3':
      //soundsarray[2].play();
      p2.addParticles(10);
      //c.write("3\n");
    break;
    case '4':
      //soundsarray[3].play();
      p3.addParticles(10);
      //c.write("4\n");
    break;
    case '5':
      //soundsarray[4].play();
      p4.addParticles(10);
      //c.write("5\n");
    break;
    case '6':
      //soundsarray[5].play();
      p5.addParticles(10);
      //c.write("6\n");
    break;
    default:
    break;
    }
    keyPressedClient(key);
}
