/* i want to implement number gussing game to learn more deep of dart
 this game is generated random number between 1-100 if the number is lower than or greater than expected number 
 it will tell you hint. if you are correctly guss you win the game 

 I want to code this for code review
*/

import 'dart:io';
import 'dart:math';

class GuessingGame {
  var numberToBeGuessed = Random();
}

class Players {
  String playerName = "";
  int GussNumber = 0;
  bool isWin = false;
  Players({required this.playerName, required this.GussNumber, this.isWin});

  void isLower() {
    print("Too low, try again!");
  }

  void isGreater() {
    print("Too high, try again!");
  }

  void isCorrect() {
    print("correct !");
  }

  void startPlay() {
    var name = stdin.readLineSync()!;
    playerName = name;

    var guass = stdin.readLineSync()!;
    GussNumber = guass;
  }
}

void main() {
  var player1 = Players();
}
