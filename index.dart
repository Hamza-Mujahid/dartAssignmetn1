// ASSIGNMENT 01

// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.

// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

// Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.

// Q11: Write a program to calculate root of any number.
// i.e: √y = y½

// Q12: Write a program to convert Celsius  to Fahrenheit   .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32

import 'dart:ffi';
import 'dart:io';

// Question 1 square rectangle differentiator
String differentiator(num length, num breath) {
  if (length == breath) {
    return 'Square';
  } else {
    return 'Rectangle';
  }
}

// Question 2 Age Checker
String ageChecker(num age1, num age2) {
  if (age1 >= age2) {
    return 'boy1 is older';
  } else if (age1 <= age2) {
    return 'boy2 is older';
  } else {
    return 'both are same age';
  }
}

// Question 3 attendance checker
String attendanceChecker(int present, int total) {
  num attendance = (present / total) * 100;
  if (attendance <= 75) {
    return ('you are not allowed to attend the exam because your attendance is ${attendance.toString()}%');
  } else {
    return ('you are allowed to attend the exam BEST OF LUCK!');
  }
}

// Question 4 leap year checker
String leapYearChecker(int year) {
  if (year % 4 == 0) {
    return 'Leap Year';
  } else {
    return 'Not a Leap Year';
  }
}

// Question 5 weather Checker
String weatherChecker(int weatherinC) {
  if (weatherinC < 0) {
    return "Freezing Weather";
  } else if (weatherinC > 0 && weatherinC <= 10) {
    return "very Cold Weather";
  } else if (weatherinC > 10 && weatherinC <= 20) {
    return "Cold Weather";
  } else if (weatherinC > 20 && weatherinC <= 30) {
    return "Normal Weather";
  } else if (weatherinC > 30 && weatherinC < 40) {
    return "Hot Weather";
  } else if (weatherinC >= 40) {
    return "Very Hot Weather";
  } else {
    return "enter weather in centigrade";
  }
}

// Question 6 Vowel Checker
String vowelChecker(String alphabet) {
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
  var result = 'Consonent';
  for (String vw in vowel) {
    if (vw == alphabet) {
      result = "Vowel";
      break;
    }
  }
  return result;
}

// Question 7 Electtricity Bill Checker
double billCharges(int unit) {
  if (unit < 200) {
    return 1.20;
  } else if (unit >= 200 && unit < 400) {
    return 1.50;
  } else if (unit >= 400 && unit < 600) {
    return 1.80;
  } else {
    return 2.00;
  }
}

// // Question 8 Mark sheet
// num getResult(int marks) {

// }

// Question 9 Even Odd Checker
String evenOddChecker(int number) {
  if (number % 2 == 0) {
    if (number % 5 == 0) {
      return 'Number is Even and also divisble by 5';
    } else {
      return 'Number is Even but divisble by 5';
    }
  } else {
    if (number % 7 == 0) {
      return 'Number is Odd and also divisble by 7';
    } else {
      return 'Number is Odd but divisble by 7';
    }
  }
}

// Question 10 Highest lowest Checker
String? highLowChecker(num num1, num num2, num num3) {
  List<num> numbers = [num1, num2, num3];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[0] > numbers[i]) {
      return '$num1 is the biggest number';
    } else if (numbers[1] > numbers[i]) {
      return '$num2 is the biggest number';
    } else if (numbers[2] > numbers[i]) {
      return '$num3 is the biggest number';
    }
  }
}

void main() {
  print("Question 1 Square Rectangle Checker");
  print("Enter Length");
  int? length = int.parse(stdin.readLineSync()!);
  print("Enter Breath");
  int? breath = int.parse(stdin.readLineSync()!);
  print(differentiator(length, breath));

//  Question 2 age checker
  double age1 = 665;
  double age2 = 23;

  print(ageChecker(age1, age2));

  int presentDays = 46;
  int total = 50;
  print(attendanceChecker(presentDays, total));

  int year = 2024;
  print(leapYearChecker(year));

  var weather = -45;
  print(weatherChecker(weather));

  var alphabet = 'i';
  print(vowelChecker(alphabet));

  var name = "James";
  num id = 1001;
  int unitsConsumed = 800;
  var charges = billCharges(unitsConsumed);
  var billAmount = charges * unitsConsumed;

  print({
    "Consumer name": name + '\n',
    "Consumer IDNO": id.toString() + '\n',
    "Units Consumed": unitsConsumed.toString() + '\n',
    "Charges": '@Rs. $charges per unit: $billAmount' + '\n',
    "Net Bill Amount": billAmount
  });

  num num1 = 15;
  int num2 = 20;
  double num3 = 5;
  print(highLowChecker(num1, num2, num3));


}
