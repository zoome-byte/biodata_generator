import 'dart:io';
import 'package:ansi_styles/ansi_styles.dart';

void main() {
  print(AnsiStyles.blue.bold('----------------------------------------'));
  print(AnsiStyles.green.bold('          PERSONAL BIODATA FORM          '));
  print(AnsiStyles.blue.bold('----------------------------------------\n'));

  stdout.write('Enter your full name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age: ');
  String? age = stdin.readLineSync();

  stdout.write('Enter your gender: ');
  String? gender = stdin.readLineSync();

  stdout.write('Enter your email: ');
  String? email = stdin.readLineSync();

  stdout.write('Enter your phone number: ');
  String? phone = stdin.readLineSync();

  stdout.write('Enter your address: ');
  String? address = stdin.readLineSync();

  stdout.write('Enter your hobbies (comma-separated): ');
  String? hobbies = stdin.readLineSync();

  print('\n');
  print(AnsiStyles.blue.bold('----------------------------------------'));
  print(AnsiStyles.yellow.bold('             PERSONAL BIODATA'));
  print(AnsiStyles.blue.bold('----------------------------------------'));
  print('${AnsiStyles.cyan('Name       :')} $name');
  print('${AnsiStyles.cyan('Age        :')} $age');
  print('${AnsiStyles.cyan('Gender     :')} $gender');
  print('${AnsiStyles.cyan('Email      :')} $email');
  print('${AnsiStyles.cyan('Phone      :')} $phone');
  print('${AnsiStyles.cyan('Address    :')} $address');
  print('${AnsiStyles.cyan('Hobbies    :')} $hobbies');
  print(AnsiStyles.blue.bold('----------------------------------------'));

  // Optionally save the biodata
  stdout.write('\nDo you want to save this biodata to a file? (y/n): ');
  String? saveOption = stdin.readLineSync();
  if (saveOption?.toLowerCase() == 'y') {
    File('biodata.txt').writeAsStringSync('''
----------------------------------------
PERSONAL BIODATA
----------------------------------------
Name       : $name
Age        : $age
Gender     : $gender
Email      : $email
Phone      : $phone
Address    : $address
Hobbies    : $hobbies
----------------------------------------
''');
    print(AnsiStyles.green('\nBiodata saved as biodata.txt ✅'));
  }
}
