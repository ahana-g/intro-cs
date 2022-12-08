String userChoice= "Not chosen";
int x= -1;
String ComputerChoice= "Not chosen";


void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background(255);
  if (userChoice=="Rock") {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  rect(width/3- 100, 100, 100, 50);

  if (userChoice=="Paper") {
    fill(0, 255, 0);
  } else {
    fill(255);
  }

  rect(width/3 + 50, 100, 100, 50);

  if (userChoice=="Scissors") {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  rect(width/3+ 200, 100, 100, 50);
  fill(0, 0, 0);
  text("Rock", width/3-80, 140);
  text("Paper", width/3+65, 140);
  text("Scissors", width/3+ 200, 140);

  if (x==0) {
    ComputerChoice= "Rock";
  } else if (x==1) {
    ComputerChoice= "Paper";
  } else if (x==2) {
    ComputerChoice= "Scissors";
  }
  text("Computer:", width/2-50, 300);
  text(ComputerChoice, width/2-50, 350);

  if ((ComputerChoice=="Rock" && userChoice=="Paper")||
    (ComputerChoice=="Scissors" && userChoice=="Rock")||
    (ComputerChoice=="Paper" && userChoice=="Scissors")) {
    text("You Win :)", width/2-50, 600);
  } else if ((ComputerChoice=="Rock" && userChoice=="Scissors")||
    (ComputerChoice=="Scissors" && userChoice=="Paper")||
    (ComputerChoice=="Paper" && userChoice=="Rock")) {
    text("You Lose :(", width/2-50, 600);
  } else if ((ComputerChoice=="Rock" && userChoice=="Rock")||
    (ComputerChoice=="Scissors" && userChoice=="Scissors")||
    (ComputerChoice=="Paper" && userChoice=="Paper")) {
    text("Draw", width/2-50, 600);
  }
}

  void mousePressed() {
    if (mouseX> width/3-100 &&
      mouseX< width/3 && mouseY> 100 && mouseY < 150) {
      userChoice= "Rock";
      x= (int) random(3);
    } else if (mouseX> width/3+50 &&
      mouseX< width/3+150 && mouseY> 100 && mouseY < 150) {
      userChoice= "Paper";
      x= (int) random(3);
    } else if (mouseX> width/3+200 &&
      mouseX< width/3+300 && mouseY> 100 && mouseY < 150) {
      userChoice= "Scissors";
      x= (int) random(3);
    } else {
      userChoice= "Not Chosen";
    }

    println(userChoice);
  }
