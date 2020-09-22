class Ball {
  // egenskaber
  //new Ball(200,200,20,1)
  float xPos;
  float yPos;
  float radius;
  float speed;

  // konstruktør
  Ball(float x, float y, float r, float s) {
    xPos=x;
    yPos=y;
    radius=r;
    speed=s;
  }
  
  // metoder
  void display() {
    fill(123);
    ellipse(xPos,yPos,radius*2,radius*2); 
  }
  
  void move() {
    xPos = xPos + speed;
    yPos = yPos + speed;
  }
  
}
