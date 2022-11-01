int l=100;
float sq=0;
int a=0;
int q= 25;

void setup() {
  size(1000, 1000);  
}


void draw() {
  background (0, 0, 0);
  fill(255, 0, 0, l);
  l=l+1;
  circle(400, 400, 400);
  fill(#ADD8E6);
  square(sq, sq, 300);
  sq= sq-5;
  square(500, a, 50);
  a= a+2;
  if(a==1000) {
    a=0;
  }
  
  
  triangle(0, 0, 0, 100, q, 50);
  q= q+2;
}
