
int diameter=100;
float len= 100;
boolean b= true;

void setup() { //called once
  size(600, 1000);
}

void draw() { //called in a loop
background(#8986CF);
fill(#E6E6FA);
  circle(300, 300, diameter);
  if(b==true) {
  diameter= diameter +1;
  len= len + 0.5;
  }
  fill(#A7C7E7);
  square(0, 0, len);
  fill(0, 0, 0);
  textSize(30);
  text(text, 400, 100);

}

String text= "Hi";

void mousePressed() {
text= "you";
}

void mouseReleased() {
  text= "are";
}

void keyPressed() {
if (key=='k') {
text= "so";
b= false;
} else {
  text= "awesome";
  b=true;
}
}
