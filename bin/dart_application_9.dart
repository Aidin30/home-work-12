import 'dart:io';

void main() {
  int number = 32;
  print("Think of a number between 1 and 100, and I'll try to guess it");
  int steps = guessNumber(number);
  print(' $steps ');
}

int guessNumber(int number) {
  int min = 1;
  int max = 100;
  int guess;
  int steps = 0;

  do {
    guess = ((max - min) / 2).round() + min;
    print("Is it $guess?");
    String answer = stdin.readLineSync() ?? '';
    steps++;

    if (answer == 'greater') {
      min = guess + 1;
    } else if (answer == 'less') {
      max = guess - 1;
    }
  } while (guess != number);

  return steps;
}

