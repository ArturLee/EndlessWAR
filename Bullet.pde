class Bullet { 
  float posX, posY;
  float velX, velY;
  float radius;

  Bullet() {
    posX = mouseX; //mousepressed?
    posY = mouseY; //mousepressed?

    //velX=10;
    velY=-10;
    radius =10;
  }
  void move() {
    //posX+= velX;
    posY+= velY;
  }

  void display() {
    imageMode(CENTER);
    image(bulletImage, posX, posY, 30, 50);
  }
}