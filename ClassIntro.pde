int[] randomNums;
int[] statArr;
int[] sortedStatArr;
int numOfRands=200;
int randRange=20;


void setup() {
  size(800,600);
  randomNums = new int[numOfRands];
  statArr = new int[randRange];
  sortedStatArr = new int[randRange];
  // fyld arrayet med tal
  fillArrayWithRandoms();
  // loop gennem arrayet
  
  for(int i=0;i<randomNums.length;i++) {
    //increment index med 1
    statArr[randomNums[i]]+=1;
  }
}

void draw() {
  background(255);
  int factor=70;
  int sum=0;
  for(int i=0;i<randomNums.length;i++) {
    //increment index med 1
    sum += randomNums[i]; 
  }
  float avg = sum/(randomNums.length*1.0);
  println("AVG: " + avg);
  
  sortedStatArr=sort(statArr);
  for(int i=0;i<sortedStatArr.length;i++) {
    println(statArr[i]);
    // xpos = xpos + 10, height, 10, height = statArr[i] *(factor), 
    rect(i*10,height-10,10,height-sortedStatArr[i] *(factor));
  }
  noLoop();

}

void fillArrayWithRandoms() {
  for(int i=0;i<randomNums.length;i++) {
    // fyld med random tal mellem 0 og 20
    randomNums[i]=(int) random(randRange);  
  }  
}
