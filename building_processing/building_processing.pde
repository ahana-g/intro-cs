int r= 0;
int g= 0;
int b=0;

void setup() {
  size(1000, 800);
  rectMode(CENTER);
  background(0);

  for (float row= 300; row<= 800; row=row+250) {
    for (float b=-50; b<= 1000; b=b+100) {
      building(b, row, random(200, 300), 100, random(1, 3));
    }
  }
}

void draw() {
}

void building(float xCenter, float Ybottom, float BuildingHeight,
  float w, float numWindows) {
  // height is 200
  fill(random(255), random(255), random(255));
  rect(xCenter, Ybottom - BuildingHeight/2, w, BuildingHeight);
  // door height
  rect(xCenter, Ybottom- 50, w/4, 100);
  float yCenter= Ybottom- BuildingHeight/2;
  //windows
  float spacing= w/(numWindows+1);
  float xLeft= xCenter-w/2;

  for (int x=1; x<= numWindows; x=x+1) {
    rect(xLeft+ x*spacing, yCenter, 30, 30);
  }
}
