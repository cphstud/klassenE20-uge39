int pixSize;
PFont f;
int margen;
int factor;

void setup() {
  size(1000, 800);
  pixSize=width/15;
  margen=width/20;
  factor=10;
  f = loadFont("Serif-28.vlw");
}

void draw() {
  textFont(f, 12);
  background(255);
  
  int y=0;
  for (int x=0; x<=factor; x++) {
    fill(0);
    textSize(18);
    textAlign(RIGHT);
    text(x + " tabel", margen+margen/4, x*pixSize);

    fill(80,220,20);
    rect(4, x*pixSize, pixSize, pixSize); 

    for (y=0; y<=factor; y++) {
      textAlign(LEFT);
      strokeWeight(1);
      fill(255);
      text(y*(x+1), ((x+1)*pixSize)+factor, y*pixSize);
      fill(120, 10, 0);
      rect((x+1)*pixSize, y*pixSize, pixSize, pixSize); 
    }
  }
}
