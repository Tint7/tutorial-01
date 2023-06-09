import 'dart:io';

void main() {
  //palindrome string
  void PalindromeString() {
    stdout.write("Please give a word: ");
    String input = stdin.readLineSync()!.toLowerCase();
    String revInput = input.split('').reversed.join('');

    if (input == revInput) {
      print("The word is palindrome");
    } else {
      print("The word is not a palindrome");
    }
  }

  //forleapyear
  void LeapYear() {
    stdout.write("Enter Year: ");
    String getyear = stdin.readLineSync()!;
    int year = int.parse(getyear);
    print(year);
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          print(" $year, is  a leap year");
        } else {
          print(" $year, is not a leap year");
        }
      } else {
        print(" $year, is  a leap year");
      }
    } else {
      print(" $year, is not a leap year");
    }
  }

  //forlistremove
  void ListRemove() {
    var list = ["A", "B", "C", "D", "E"];
    stdout.write("Choose ${list} one letter to remove: ");
    String letter = stdin.readLineSync()!;
    // final int indexofletter = list.indexOf(letter);
    list.remove(letter);
    print("Removing ${letter}: " "${list}");
  }

  //forlistswap
  void ListSwap() {
    var list = ["A", "B", "C", "D", "E"];
    stdout.write("Choose ${list} First letter to swap: ");
    String fletter = stdin.readLineSync()!;
    stdout.write("Choose ${list} Second letter to swap: ");
    String sletter = stdin.readLineSync()!;
    final int indexoffletter = list.indexOf(fletter);
    final int indexofsletter = list.indexOf(sletter);
    list[indexoffletter] = sletter;
    list[indexofsletter] = fletter;
    print("Swapping ${fletter} with ${sletter}: " "${list}");
  }

  //forfuncall
  PalindromeString();
  LeapYear();
  ListRemove();
  ListSwap();
}
