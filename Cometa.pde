class Cometa {
  float x, y;
  float radius; 
  float velY, velX;

  Cometa() {
    x= random(width/8);
    y = random (height/6);
    radius =random(15, 30);
    velY=1;
    velX=1;
  }
  void move() {
    y+=velY;
    x+=velX;
    if (y>height) {
      //y=0;
      imageMode(CENTER);
      image(explostion, width/2, height/2);
      textSize(50);    
      fill(0, 125, 0);
      text("GAME OVER", width/2, height/2);
    }
  }

  void display() {
    image(cometaImage, x, y, radius*2, radius*2);
  }
  void colisao(Bullet ev) {
    float distance = dist(x, y, ev.posX, ev.posY);
    if (distance<30) {
      bala.remove(ev);
      evil.remove(this);
      evil.add(new Cometa());
      score++;
    }
  }
}