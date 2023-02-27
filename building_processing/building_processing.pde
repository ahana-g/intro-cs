void setup() {
  size(1000, 800);
  rectMode(CENTER);
  background(0);
}

void draw() {
  building(400, 800, 700, 200, 3);
  building(600, 800, 600, 300, 4);
}

void building(float xCenter, float Ybottom, float BuildingHeight, 
float w, int numWindows) {
  // height is 200
  rect(xCenter, Ybottom - 200 / 2, w, BuildingHeight);
  // door height
  rect(xCenter, Ybottom- 50, w/4, 100);
    float yCenter= Ybottom- BuildingHeight/2;
  //windows
  float spacing= w/(numWindows+1);
  float xLeft= xCenter-w/2;
  int x=1;
  while(x<= numWindows) {
  rect(xLeft+ x*spacing, yCenter, 30, 30); 
  x=x+1;
  }
 
 
  
}
