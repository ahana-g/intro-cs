int x=20;
int y=20;
int dy=2;
int dx=0;

void setup() {
  size(500, 500);
}

void draw() {
  background(20, 14, 200);
  circle(x, y, 20);
  //if hit bottom left, move right
  y=y+dy;
  x=x+dx;
  if (y== 480 && x==20) {
    dx= 2;
    dy=0;
  }
  //if hit botton right, move up
  if(x==480 && y==480) {
    dy=-2;
    dx=0;
  }
  //if top right move, move left
  if(x==480 && y==20) {
    dx=-2;
    dy=0;
  }
  if(x==20 &&y==20) {
    dx=0;
    dy=2;
  }
}
