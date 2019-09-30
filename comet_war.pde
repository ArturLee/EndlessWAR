ArrayList<Bullet> bala;
Ship nave;
ArrayList<Cometa> evil;
PImage cometaImage;
PImage shipImage;
PImage bulletImage;
PImage background;
int score;
PImage explostion;

void setup() {
  size(640, 427);
  background= loadImage("background.jpg");
  explostion= loadImage("earth_explode.jpg");
  shipImage= loadImage("ship.png");
  bulletImage= loadImage("bullet.png");
  cometaImage= loadImage("cometa.png");
  bala = new ArrayList<Bullet>();
  nave = new Ship();
  evil = new ArrayList<Cometa>();
  for (int i=0; i<10; i++) {
    evil.add(new Cometa());
  }
}
void draw() {
  background(background);
  fill(255);
  textSize(26); 
  text("score:"+ score, 500, 400);
  textSize(10);
  text("ArturLee_homework3", 495, 420);
  for (int i=0; i<bala.size(); i++) {
    bala.get(i).move();
    bala.get(i).display();
  }
  for (int i=0; i<evil.size(); i++) {
    evil.get(i).move();
    evil.get(i).display();
  }
  nave.move();
  nave.display();
  booom();
}


void mousePressed() {
  bala.add(new Bullet());
}

void booom() {
  for (int i=0; i<bala.size(); i++) {
    Bullet b=bala.get(i);
    for ( int j=0; j<evil.size(); j++) {
      Cometa c=evil.get(j);
      c.colisao(b);
    }
  }
}