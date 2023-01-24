void setup() {
  size(1000, 1000);
  background(255);
}

void draw() {
  fill(0);
  
  translate(500, 500);
  star();
  
  translate(100, 100);
  star();
  
  translate(-200, -200);
  star();
  
}
 
void star() {
 push();
 translate(-600, -400);
 beginShape();
  vertex(500, 200);
  vertex(500, 700);
  vertex(850, 300);
  vertex(300, 500);
  vertex(850, 550);
  endShape(CLOSE); 
  pop();
}
