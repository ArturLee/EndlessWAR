class Ship { 
  float posX, posY;
  float velX, velY;
  float radius;

  Ship() {
    posX = mouseX; 
    posY = mouseY; 
  }
  void move() {
    posX = mouseX; 
    posY = mouseY; 
  }

  void display() {
    fill(0, 255, 130);
    imageMode(CENTER);
    image(shipImage, posX, posY, 70, 70);
  }
}