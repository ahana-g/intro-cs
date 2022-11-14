/*Ahana Gadiyaram
 10/10/2022
 the name of my robot is Mean Karen Robot. She is the robot that people use
 when they are annoyed. She fights with people about petty things and follows
 them until she gets her way. People use her to get what they want without
 putting effort in by themselves*/


int y=0;
int dy= 1;
int arm= 0;
int eyes= 25;
int da=1;
int de=1;


void setup() {
  size(1000, 1000);
}




void draw() {
  background(#6fa8dc);
  fill(#cb8946); //skin
  strokeWeight(50);
  stroke(#cb8946);


  push();
  translate(370, 370);
  arm=arm+da;
  rotate(radians(arm));
  line(0, 0, -170, 80);//arm

  pop();

  push();
  translate(630, 370);
  rotate(radians(-arm));
  line(0, 0, 190, 120);//arm
  pop();

  strokeWeight(4);
  rect(350, 350, 300, 300); //body


  push();
  translate(0, y);
  y=y-dy;


  if (arm==130) {
    da=-1;
  }

  if (da==-1) {
    dy=-1;
  }

  if (arm==0) {
    da=1;
  }

  if (da==1) {
    dy= 1;
  }

  rect(400, 150, 200, 200); //face
  stroke(#f2d686);
  fill(#f2d686);
  triangle(400, 150, 500, 150, 300, 300); //hair
  triangle(600, 150, 500, 150, 700, 300); //hair
  stroke(#ffffff);
  fill(#ffffff);
  circle(440, 200, eyes); //eyes
  circle(550, 200, eyes); //eyes
  eyes= eyes+de;
  if (eyes==70) {
    de=-1;
  }
  if (eyes==25) {
    de=1;
  }

  stroke(0, 0, 0);
  fill(#000000);
  circle(440, 200, 25); //eyeballs
  circle(550, 200, 25); //eyeballs
  stroke(#f2d686);
  fill(#f2d686);
  stroke(#f44336);
  line(450, 275, 550, 275); //mouth
  stroke(0, 0, 0);
  line(475, 235, 500, 250); //nose
  line(500, 250, 525, 235); //nose
  pop();



  stroke(#cf9bb1);
  fill(#cf9bb1);
  triangle(500, 450, 50, 800, 950, 800);//skirt
  rect(350, 400, 300, 200); //top
  rect(375, 350, 25, 50); //straps
  rect(600, 350, 25, 50); //straps
}
