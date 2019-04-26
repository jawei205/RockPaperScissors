int number;
String compResult;
class object {

  void show() {

    //shows result
    textMode(CENTER);
    fill(compC);
    text("Enemy: " + compResult, width/2 - 90, height/2 + 90);
  }

  void calc() {
    number = int(random(1, 4));
    if (number == 1) {
      compResult = "Rock";
    }
    if (number == 2) {
      compResult = "Scissors";
    }
    if (number == 3) {
      compResult = "Paper";
    }
  }
  void compWin() {

    playerObject.shows();
    object.show();

    compWin = true;
    //display the winner
    compC = color(0, 255, 0);
    //display the loser
    playerC = color(255, 0, 0);
  }
}
