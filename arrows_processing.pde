void setup() {
  size(900, 900);
}

/*void draw() {
  beginShape();
  vertex(50, 800);
  vertex(50, 700);
  vertex(100, 400);
  vertex(300, 400);
  vertex(400, 700);
  vertex(450, 800);
  vertex(50, 900);
  endShape(); 
} */

void draw() {
  fill(#B533FF);
  beginShape();
  vertex(636, 159);
  vertex(450, 339);
  vertex(586, 339);
  vertex(586, 339);
  vertex(804, 684);
  vertex(787, 355);
  vertex(889, 351);
  endShape();
  
  beginShape();
  vertex(90, 343);
  vertex(221, 149);
  vertex(381, 331);
  vertex(277, 340);
  vertex(297, 680);
  vertex(145, 688);
  vertex(147, 343);
  endShape();
  fill(0, 0, 0);
  beginShape();
  vertex(252, 258);
  vertex(406, 113);
  vertex(577, 281);
  vertex(480, 290);
  vertex(501, 661);
  vertex(345, 677);
  vertex(354, 293);
  endShape();
}

void mousePressed() {
  println("mouse coordinates are:" + mouseX + "," +mouseY);
  circle(mouseX, mouseY, 10);
}
