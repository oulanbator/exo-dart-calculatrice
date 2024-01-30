// ignore_for_file: unnecessary_type_check

import 'calculatrice.dart';

void main() {
  var calc = Calculatrice();

  // Addition : 1 + 2  = 3.0
  assert(calc.addition([1, 2]) == 3);
  print("OK => Addition : 1 + 2  = 3.0");
  assert(calc.addition([1, 2]) is double);
  print("OK => addition renvoie un double");

  // Addition : 1.25 + 3.5 = 4.75
  assert(calc.addition([1.25, 3.5]) == 4.75);
  print("OK => Addition : 1.25 + 3.5 = 4.75");

  // Addition : 1.25 + 3.5 + 5 = 9.75
  assert(calc.addition([1.25, 3.5, 5]) == 9.75);
  print("OK => Addition 1.25 + 3.5 + 5 = 9.75");

  // Addition : (dernier résultat) + 5 = 14.75
  var result = calc.additionLast(5);
  assert(result == 14.75);
  print("OK => Addition : (dernier résultat) + 5 = 14.75");
  assert(result is double);
  print("OK => additionLast renvoie un double");

  // Addition : (dernier résultat) + 5.25 = 20.0
  assert(calc.additionLast(5.25) == 20);
  print("OK => Addition : (dernier résultat) + 5.25 = 20.0");

  // On réinitialise la calculatrice, et le dernier résultat par la même occasion
  print("Reset de la calculatrice");
  calc = Calculatrice();

  // Addition : (dernier résultat = 0) + 5 = 5.0
  assert(calc.additionLast(5) == 5);
  print("OK => Addition : (dernier résultat) + 5 = 5.0");

  // Soustraction : 5 - 10 = -5.0
  assert(calc.soustraction(5, 10) == -5);
  print("OK => Soustration : 5 - 10 = -5.0");
  assert(calc.soustraction(5, 10) is double);
  print("OK => soustration renvoie un double");

  // Addition : (dernier résultat) + -3.2 = -8.2
  assert(calc.additionLast(-3.2) == -8.2);
  print("OK => Addition : (dernier résultat) + -3.2 = -8.2");

  // Multiplication : 1.5 * 10 = 15.0
  assert(calc.multiplication(1.5, 10) == 15);
  print("OK => Multiplication : 1.5 * 10 = 15.0");
  assert(calc.multiplication(1.5, 10) is double);
  print("OK => multiplication renvoie un double");

  // Addition : (dernier résultat) + 5 = 20
  assert(calc.additionLast(5) == 20);
  print("OK => Addition : (dernier résultat) + 5 = 20.0");

  // Division : 15 / 3 = 5
  assert(calc.division(15, 3) == 5);
  print("OK => Division : 15 / 3 = 5.0");
  assert(calc.division(15, 3) is double);
  print("OK => division renvoie un double");

  // Division : 14 / 4 = 3.5
  assert(calc.division(14, 4) == 3.5);
  print("OK => Division : 14 / 4 = 3.5");

  // Addition : (dernier résultat) + 5 = 8.5
  assert(calc.additionLast(5) == 8.5);
  print("OK => Addition : (dernier résultat) + 5 = 8.5");

  // Division entier : 8.5 / 2 = 4
  assert(calc.divisionEntier(8.5, 2) == 4);
  print("OK => Division entier : 8.5 / 2 = 4");
  assert(calc.divisionEntier(8.5, 2) is int);
  print("OK => divisionEntier renvoie un int");

  // Addition : (dernier résultat) + 5 = 9
  assert(calc.additionLast(5) == 9);
  print("OK => Addition : (dernier résultat) + 5 = 9.0");

  print("------------------------------------------------");
  print("Bien joué ! La calculatrice fonctionne bien !");
  print("------------------------------------------------");
}
