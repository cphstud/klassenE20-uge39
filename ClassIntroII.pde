int x;
int y=30;
int[] kurtVerner;

void setup() {
  String navn = "Verner";
  kurtVerner = new int[7];
  int[] kurtVernerCounter = new int[21];
  size(800,600);
  int y=0;
  println(once());
  int kurt = once();
  println("Kurt " + kurt);
  int i = 0;
  boolean knud=true;
  while(knud) {
    //i skal løbe fra 0 til 6
    
    if(i>=7) {
      knud=false;
    } else {   
    print(" " + kurtVerner[i] + " ");
    i++;
    }
  }
}

void draw() {
 
}


int once() {
  
  int retVal = 0;
  // gør et eller andet
  retVal = y * 2;
  for(int i=0;i<kurtVerner.length;i++) {
    // 0,1,2,3,4
    // gem værdi i variabel
    int bent = (int) random(1,20);
   // put værdi i array
   kurtVerner[i]=bent;
  }
  
  return retVal;
}
