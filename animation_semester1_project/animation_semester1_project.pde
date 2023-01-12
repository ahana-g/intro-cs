/* Ahana Gadiyaram
 1/11/2023
 My code shows how a ball starts at any random location but always goes back to a set point
 (unless randomly swayed off it's course by adding extra coordinates). If the ball is not
 randomly swayed off it's course, the person's hand goes to catch it and the text says
 "You Caught the Ball!" The color of the ball, the person's eyes, and the text are all
 random but corresponding to each other.
 3. I tried to make the person move to catch the ball but thta didn't work so I made the ball 
 fly to the person's hand
 4. I didn't have any specific inspiration; I came up with the idea myself
 */
float x= 150;
float y=535;
float dy=5;
float dx=5;
int r;
int g;
int b;
boolean caught;
int addx;
int addy;
float army;
int mouthx=450;
int mouthy=525;
int mouthr=216;
int mouthg=177;
int mouthb=123;
String text= "Not Chosen";

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  strokeWeight(4);

  fill(#D8B17B);
  stroke(#D8B17B);
  rect(425, 525, 50, 70); //neck
  circle(450, 450, 200); //head
  stroke(#DF1515);
  line(mouthx, mouthy, 475, 500); //mouth
  if (caught==true) { //trying to make mouth smile if caught==true
    mouthx= 450;
    mouthy=525;
    mouthr=223;
    mouthg=21;
    mouthb=21;
  } else { //trying to make mouth not smile if caught==false
    mouthx=425;
    mouthy=500;
    //hiding the color so that the other line (involved in making the smile) is invisible
    mouthr=216;
    mouthg=177;
    mouthb=123;
  }
  stroke(mouthr, mouthg, mouthb); //color of mouth
  line(425, 500, 450, 525);//smiling mouth
  fill(255);
  stroke(255);
  circle(400, 425, 60); //eyes
  circle(500, 425, 60); //eyes
  fill(r, g, b);
  circle(400, 425, 25); //pupils
  circle(500, 425, 25); //pupils
  fill(255);

  fill(#DC9072);
  stroke(#DC9072);
  square(375, 575, 150); //top
  triangle(325, 725, 575, 725, 450, 600); //skirt
  strokeWeight(50);

  push();
  translate(375, 600); // point of origin
  rotate(army);
  translate(-375, -600); /* just translate back so we don't have to
   shift arm and hand numbers*/
  line(375, 600, 300, 700); //arm
  strokeWeight(4);
  fill(#D8B17B);
  circle(300, 700, 60); //hand
  if (caught==false) {
    army= radians(60); //the y axis of the arm rotates, and the arm misses the ball)
  } else {
    army = radians(27); //the y axis of the arm rotates in order to catch the ball)
  }
  pop();

  line(525, 600, 675, 635); //arm
  fill(#D8B17B);
  line(400, 725, 400, 825); //leg
  line(500, 725, 500, 825); //leg
  strokeWeight(4);
  circle(400, 825, 60); //foot
  circle(500, 825, 60); //foot
  circle(675, 635, 60); //hand
  fill(0);

  textSize(20);
  if (caught==true) {
    text= "You Caught the Ball!";
  } else {
    text="You Didn't Catch the Ball";
  }

  stroke(255);
  fill(r, g, b);
  circle(x, y, 100);
  x= x + dx;
  y= y+ dy;
  if (x>=250&& y>=635) {
    //setting up the variables that should be random so that the starting point of the ball is always random
    x= random(50, 250);
    y= random(50, 635);

    addx= (int) random(2); /*what you're adding to x (if addx= 0, then the code will work because it will be
     accurate but if addx=1, then the ball will be swayed off it's course*/
    addy= (int) random(2); /*what you're adding to y (if addy= 0, then the code will work because it will be
     accurate but if addy=1, then the ball will be swayed off it's course*/

    //making the colors of the ball, text, and eyes all random values
    r= (int) random(255);
    g= (int) random(255);
    b= (int) random(255);

    //formula to ensure if addx=0 and addy= 0, then the ball will always go to the set coordinate of the hand
    dx= (250- x+addx*80)/80;
    dy= (635-y+addy*80)/80;
  }

  text(text, 700, 200);

  if (addx==0&&addy==0) {
    caught= true;
  } else {
    caught = false;
  }

  text(text, 700, 200);
}
