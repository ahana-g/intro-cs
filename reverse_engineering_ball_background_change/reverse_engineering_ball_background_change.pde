int y=550;
int x=50;
int dy= 3;
int dx= 2;
int r= 0;
int g=0;
int b=0;

void setup() {
  size(600, 600);
}

void draw() {
  background(r, g, b);
  circle(x, y, 40);
  y= y-dy;
  x= x+dx;
  println("x is " + x);

  if (x>=560) {
    r=127;
    g=255;
    b=212;
    dx=-2;
  }

  if (y<40) {
    r= 222;
    g= 49;
    b= 99;
    dy= -2;
  }

  if (x<=40) {
    r=8;
    g= 143;
    b=143;
    dx=2;
  }

  if (y>=560) {
    r=0;
    g=0;
    b=0;
    dy=3;
  }
}
