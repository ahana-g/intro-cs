void setup() {
  size(1000, 1000);
}

void draw() {
  fill(0,0);
  translate(525, 300);
  star();
  translate(-25, 200);
  cat();
  translate(100, -280);
  scale(.2);
  star();
  translate(-900, 0);
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

void cat() { //from samantha's github
// <https://github.com/sfullerton26/introcs/tree/main/functions_exercise>
  push();
  translate(-500, -500);
   fill(227, 202, 59);
   triangle(420,294, 478, 250, 405, 208); // cat ear 1 left
   triangle(554, 252, 613, 290, 608, 203); // cat ear 2 right
   fill(245, 232, 59);
   circle(515, 365, 250); // main cat face
   fill(5,5,5);
   circle(471, 327, 30); // left cat eye
   circle(541, 327, 30); // right cat eye
   circle(506, 390, 17); // cat nose
   //wiskers
   line(425, 362, 487, 376); 
   line(427, 387, 487, 388);
   line(435, 408, 487, 400);
   line(521, 377, 577 ,366);
   line(523, 389, 580, 383);
   line(523,400, 575, 405);
  pop();
}
