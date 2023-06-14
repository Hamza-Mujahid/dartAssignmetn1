// ASSIGNMENT 01

// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.

// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

// Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.

// Q11: Write a program to calculate root of any number.
// i.e: √y = y½

// Q12: Write a program to convert Celsius  to Fahrenheit   .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32

void main() {
//   question 1 square rectangle differentiator
  var length = 22;
  var breath = 22;

  if (length == breath) {
    print('Square');
  } else {
    print('Rectangle');
  }

//  question 2 age checker
  var age1 = 22;
  var age2 = 23;

  if (age1 >= age2) {
    print('boy1 is older');
  } else if (age1 <= age2) {
    print('boy2 is older');
  }

  var presentDays = 36;
  var total = 50;
  print(attendanceChecker(presentDays, total));

  var year = 2019;
  print(leapYearChecker(year));

  var weather = 30;
  print(weatherChecker(weather));

  var alphabet = 'i';
  print(vowelChecker(alphabet));

  var name = "James";
  num id = 1001;
  int unitsConsumed = 800;
  var charges = billCharges(unitsConsumed);
  var billAmount = charges * unitsConsumed;

  print({
    "Consumer name": name,
    "Consumer IDNO": id,
    "Units Consumed": unitsConsumed,
    "Charges": '@Rs. $charges per unit: $billAmount',
    "Net Bill Amount": billAmount
  });
}

// question 3 attendance checker
String attendanceChecker(int present, int total) {
  num attendance = (present / total) * 100;
  if (attendance <= 75) {
    return ('you are not allowed to attend the exam because your attendance is ${attendance.toString()}%');
  } else {
    return ('you are allowed to attend the exam BEST OF LUCK!');
  }
}

// question 4 leap year checker
String leapYearChecker(int year) {
  if (year % 4 == 0) {
    return 'Leap Year';
  } else {
    return 'Not a Leap Year';
  }
}

// question 5 weather Checker
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

// question 6 Vowel Checker
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

// question 7 Electtricity Bill Checker
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

// question 8 Mark sheet
class marksheet {
  // selecting data type
  String name;
  num rollNumber;
  List<String> subjects;
  List<num> numbers;
  

}
