void setup() {
  size(1000, 800); 
  rectMode(CENTER);
  background(0);  
}

void draw() {
  building(400, 800, 400, 100);
  building(700, 800, 500, 200);
}

void building(float xCenter, float Ybottom, float BuildingHeight, float w) {
  // height is 200
  rect(xCenter, Ybottom - 200 / 2, xCenter+ w/2, BuildingHeight);
  // door height 
  rect(xCenter, Ybottom- 50, xCenter+w, Ybottom);
}
