int x= 30;
int y= 30;
int r= 255;
int g= 0;
int b= 0;
int dx= 7;
int dy= 8;

void setup() {
  size(600, 600);
}

void draw() {
  background(0, 0, 0);
  fill(r, g, b);
  circle(x, y, 30);
  x=x+dx;
  y=y+dy;
  
  if(x>=586) {
    dx=-dx;
  r= 0;
  g=0;
  b= 255;
} 
if(y>=585) {
  dy=-dy;
  r=255;
  g=255;
  b=255;
  
} 
if(x<=15) {
  dx=-dx;
  r=0;
  g=255;
  b=0;
}
 
 if(y<=15) {
   dy=-dy;
   r=255;
   g=0;
   b=0;
 }
  
}
