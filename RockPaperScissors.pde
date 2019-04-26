//objects
object object;
playerObject playerObject;

boolean compWin = false;
boolean playerWin = false;

color compC = color(51);
color playerC = color(51);

int compScore = 0;
int playerScore = 0; 

void setup() {
  size(500, 500);
  textSize(30);
  background(0);
  object = new object();
  playerObject = new playerObject();
  number = int(random(1, 4));
  number2 = int(random(1, 4));
  playerObject.calcs();
  object.calc();
  setWinner();
}

void draw() {
  background(0);
  setWinner();
  playerObject.key();
  object.show();
  playerObject.shows();

  //add counter
  fill(255);
  textMode(CENTER);
  text("Computer: " + compScore, 30, 50);
  text("You: " + playerScore, 300, 50);

  //add info
  fill(0, 255, 0);
  textSize(15);
  text("Green: Win", 20, 400);

  fill(255, 0, 0);
  text("Red: Loose", 20, 425);

  fill(255);
  text("Press 1: Rock", 350, 400);
  text("Press 2: Paper", 350, 425);
  text("Press 3: Scissors", 350, 450);
  textSize(30);
}

//find out which player has won
void setWinner() {
  //draw
  if (playerResult == compResult) {
    reset();
  }
  // 1
  if (compResult == "Scissors" && playerResult == "Paper") {
    object.compWin();
  }
  // 1.2
  if (compResult == "Paper" && playerResult == "Scissors") {
    playerObject.playerWin();
  }
  // 2
  if (compResult == "Rock" && playerResult == "Paper") {
    playerObject.playerWin();
  }
  // 2.2
  if (compResult == "Paper" && playerResult == "Rock") {
    object.compWin();
  }
  //3
  if (compResult == "Scissors" && playerResult == "Rock") {
    playerObject.playerWin();
  }
  //3.2
  if (compResult == "Rock" && playerResult == "Scissors") {
    object.compWin();
  }
}
//reset everything
void reset() {
  playerC = color(255);
  compC = color(255);
  playerWin = false;
  compWin = false;
}

void keyPressed() {
  if (keyPressed == true) {
    if (key == '1' || key == '2' || key == '3') {
      object.calc();
      //change the score
      if (playerWin == true) {
        playerScore ++; 
        reset();
      }
      if (compWin == true) {
        compScore ++;
        reset();
      }
    }
  }
}
