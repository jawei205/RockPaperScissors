String playerResult;
int number2;

class playerObject {
  void shows() {
    //shows result
    textMode(CENTER);
    fill(playerC);
    text("You: " + playerResult, width/2 - 90, height/2 - 65);
  }
  
  void key() {
    if (keyPressed) {
      if (key =='1') {
        playerResult = "Rock";
        object.show();
        playerObject.shows();
      }
      if (key == '2') {
        playerResult = "Paper";
      }
      if (key == '3') {
        playerResult = "Scissors";
      }
    }
  }

  void calcs() {
    if (number2 == 1) {
      playerResult = "Rock";
    }
    if (number2 == 2) {
      playerResult = "Scissors";
    }
    if (number2 == 3) {
      playerResult = "Paper";
    }
  }

  void playerWin() {
    playerObject.shows();
    object.show();
playerWin = true;
    //display the winner
    playerC = color(0, 255, 0);
    //display the loser
    compC = color(255, 0, 0);
    //change score
    //playerScore++;
  }
}
