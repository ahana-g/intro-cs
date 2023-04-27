int y=70;
int [] dropYs= {};
int [] dropXs= {};
int[] speed= {(int) random(1, 5), (int) random(1, 5), (int) random(1,5)
, (int) random(1, 5), (int) random(1, 5)};
int c=500;
int d= 200;
void setup() {
  size(1000, 600);
}

void draw() {
  background(100);
  for (int x=1; x <= dropYs.length; x=x+1) {
    raindrop(dropXs[x-1], dropYs [x-1], 40);
    dropYs[x-1]= dropYs[x-1] + speed[x-1];
    if (dropYs[x-1]>500) {
      dropYs[x-1]=70; //resetting to top
    }
   if(dropYs[x-1]>=450) {
      c=c+1;
      d=d+ 1;
    } 
     ellipse(500, 550, c, 75 ); 
      
  }
  y=y+ 1; //copy this structure
}

void mousePressed() {
  dropYs=append(dropYs, mouseY); 
  speed= append(speed, (int) random(1,5));
  dropXs= append(dropXs, mouseX);
}



void raindrop(float CenterX, float CenterY, float size) {
  stroke(#89CFF0);
  fill(#89CFF0);
  triangle(CenterX, CenterY- size, CenterX- size/2,
    CenterY, CenterX+ size/2, CenterY);
  arc(CenterX, CenterY, size, size,
    radians(0), radians (180));
}
