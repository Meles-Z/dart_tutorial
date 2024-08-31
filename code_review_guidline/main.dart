/* 
Hi Gerema, my code reviewer (Fullstack Developer), when you review my code, 
please feel free to reach out with any feedback or concerns you may have.

Hi Keteam, CEO of Zulu Tech, thank you for the opportunity to work on this p
roject and for allowing me to complete it to a high standard.

I want to implement a game where two players try to guess a randomly generated number.
 The number will be between 1 and 20. If a player's guess is too low or too high, 
 the game will provide a hint. The players take turns guessing until one of them 
 correctly guesses the number and wins the game.

Why I chose this task: I want to learn more about some commonly used built-in packages
in Dart and gain a better understanding of how the numbering system works in Dart.

*/

import 'dart:io';
import 'dart:math';

class guessingGame {
  int numberToBeGuessed;
  guessingGame() : numberToBeGuessed = Random().nextInt(20) + 1;
  void startPlay(Players player) {
    print("${player.playerName} Enter your guass:");
    int? guassNumber = int.tryParse(stdin.readLineSync()!);
    if (guassNumber == null) {
      print("Invalid input. please enter valid number");
      return;
    }
    player.guassNumber = guassNumber;
    if (player.guassNumber < numberToBeGuessed) {
      player.isLower();
      player.isWin = false;
    } else if (player.guassNumber > numberToBeGuessed) {
      player.isGreater();
      player.isWin = false;
    } else if (player.guassNumber == numberToBeGuessed) {
      player.isCorrect();
      player.isWin = true;
    } else {
      player.isNotInBound();
      player.isWin = false;
    }
  }
}

class Players {
  String playerName;
  int guassNumber;
  bool isWin;
  Players({required this.playerName})
      : guassNumber = 0,
        isWin = false;

  void isLower() {
    print("Too low, try again!");
  }

  void isGreater() {
    print("Too high, try again!");
  }

  void isCorrect() {
    print("correct !");
  }

  void isNotInBound() {
    print("Number you entered is outbound");
  }
}

void main() {
  //create two players

  print("Enter the name of first players");
  String player1Name = stdin.readLineSync()!;
  Players player1 = Players(playerName: player1Name);

  print("Enter the name of player 2:");
  String player2Name = stdin.readLineSync()!;
  Players player2 = Players(playerName: player2Name);

  guessingGame game = guessingGame();
  // loop untill one player win
  while (true) {
    game.startPlay(player1);
    if (player1.isWin) {
      print("Congratulations, ${player1.playerName}! You won the game!");
      break;
    }
    game.startPlay(player2);
    if (player2.isWin) {
      print("Congratulations, ${player2.playerName}! You won the game!");
      break;
    }
  }
  print("Game Over! Thanks for playing.");

  // could you tell me how can i do to make my code is not exit after the winner known
}
