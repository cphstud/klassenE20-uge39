Ball b1;
Ball b2;

void setup() {
  size(800,600);
  
  b1 = new Ball(200,200,20,1);
  b2 = new Ball(300,300,20,1);
}

void draw() {
  background(255);
  b1.move();
  b2.move();
  b1.display();
  b2.display();
}
