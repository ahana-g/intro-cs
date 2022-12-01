float x;
float y;
float a;
float b;
float c;
float d;
float e;
float f;

void setup() {
  size(600, 600);
}

void draw() {
  fill(200, 0, 0);
  circle(x, y, 30);
  x= random(301);
  y= random(301);
  
  fill(0, 200, 0); 
  circle(a, b, 30);
  a= random(301, 600);
  b= random(300, 600);
  
  fill(0, 0, 200);
  circle(c, d, 30);
  c= random(301, 600);
  d= random(301);
  
  fill(#FFFF00);
  circle(e, f, 30);
  e= random(301);
  f= random(300, 600);
}
  
