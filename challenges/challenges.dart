import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    print("Ingresa un número entero para evaluarlo");
    int num = int.parse(stdin.readLineSync()!);
    switch (num) {
      case < 0:
        print("El número es negativo");
      case > 0:
        print("El número es positivo");
      case == 0:
        print("El número es cero");
      default:
        print("El número ingresado no es váldio");
    }
  }
}

class Challenge2 {
  void run() {
    print("Ingresa el primer número");
    double a = double.parse(stdin.readLineSync()!);
    print("Ingresa el segundo número");
    double b = double.parse(stdin.readLineSync()!);
    String e = "No se puede dividir por cero";
    print(
        "Operaciones:\n Suma: ${a + b}\n Resta: ${a}-${b}: ${a - b} y ${b}-${a}:${b - a}\n Multiplicación: ${a * b}\n División: ${a}/${b}:${(b != 0.0 ? a / b : e)} y ${b}/${a}:${(a != 0.0 ? b / a : e)}");
  }
}

class Challenge3 {
  void run() {
    print("Ingrese un número");
    double a = double.parse(stdin.readLineSync()!);
    print("El cuadrado del número ${a} es: ${a * a}");
  }
}

class Challenge4 {
  void run() {
    print("Ingresa el tamaño del circulo: ");
    double r = double.parse(stdin.readLineSync()!);
    print("El área del círculo es: ${r * r * pi}");
  }
}

class Challenge5 {
  void run() {
    print("Ingresa un número entre 1 y 7");
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print("Lunes");
        break;
      case 2:
        print("Martes");
        break;
      case 3:
        print("Miercoles");
        break;
      case 4:
        print("Jueves");
        break;
      case 5:
        print("Viernes");
        break;
      case 6:
        print("Sábado");
        break;
      case 7:
        print("Doming");
        break;
      default:
        print("Opción no valida");
        break;
    }
  }
}

class Challenge6 {
  void run() {
    print("Ingresa el valor de tu salario:");
    double a = double.parse(stdin.readLineSync()!);
    double impuesto = a > 10000 ? 0.1 * a : 0;
    print("Valor del impuesto a pagar: ${impuesto}");
  }
}

class Challenge7 {
  void run() {
    try {
      print("Ingresa el primer número");
      double a = double.parse(stdin.readLineSync()!);
      print("Ingresa el segundo número");
      double b = double.parse(stdin.readLineSync()!);
      String e = "No se puede dividir por cero";
      if (a == 0 || b == 0) {
        throw Exception();
      }
      double div1 = a / b;
      double div2 = b / a;
      print(
          "Los resultados de las divisiones es:\n ${a}/${b}:${div1}\n ${b}/${a}:${div2}");
    } catch (Exception) {
      print("No es posible dividir por cero");
    }
  }
}

class Challenge8 {
  void run() {
    int sum = 0, i = 1;
    do {
      sum += i;
      i += 2;
    } while (i <= 100);
    print("La suma de los primeros 100 números impares es: ${sum}");
  }
}

class Challenge9 {
  void run() {
    print("Ingresa el numerador de la primera fracción: ");
    int a = int.parse(stdin.readLineSync()!);
    print("Ingresa el denominador de la primera fracción: ");
    int b = int.parse(stdin.readLineSync()!);

    print("Ingresa el numerador de la segunda fracción: ");
    int a1 = int.parse(stdin.readLineSync()!);
    print("Ingresa el denominador de la segunda fracción: ");
    int b1 = int.parse(stdin.readLineSync()!);

    try {
      Fraction primera = Fraction(a, b);
      Fraction segunda = Fraction(a1, b1);
      print(
          "Suma: ${primera.suma(segunda)}\nResta: ${primera.resta(segunda)}\nMultiplicación: ${primera.multiplciacion(segunda)}\nDivisión: ${primera.division(segunda)}");
    } catch (error) {
      print("Algo a salido mal: $error");
    }
  }
}

class Challenge10 {
  void run() {
    print("Ingresa un palabra: ");
    String palabra = stdin.readLineSync()!;
    print(
        "El inverso de la palabra ${palabra} es: ${palabra.split('').reversed.join()}");
  }
}

class Challenge11 {
  void run() {
    print("Ingresa el primer número: ");
    double a = double.parse(stdin.readLineSync()!);
    print("Ingresa el segundo número número: ");
    double b = double.parse(stdin.readLineSync()!);
    print("Ingresa el tercer número: ");
    double c = double.parse(stdin.readLineSync()!);
    print("El promedio de los números ingresados es: ${(a + b + c) / 3}");
  }
}

class Challenge12 {
  void run() {
    List<int> lista = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el número que se ubicará en el índice ${i + 1}: ");
      lista.add(int.parse(stdin.readLineSync()!));
    }
    print("El número mas grande de la lista es: ${lista.reduce(max)}");
  }
}

class Challenge13 {
  void run() {
    print("Ingresa la palabra a verificar: ");
    String palabra = stdin.readLineSync()!;
    if (palabra == palabra.split('').reversed.join()) {
      print("La palabra ingresada es palíndromo");
    } else {
      print("La palabra ingresada no es palíndromo");
    }
  }
}

class Challenge14 {
  void run() {
    print("Ingresa un número: ");
    int a = int.parse(stdin.readLineSync()!);
    if (a % 2 == 0) {
      print("El número es par");
    } else {
      print("El número es impar");
    }
  }
}

class Challenge15 {
  void run() {
    print("Introduce un número");
    double a = double.parse(stdin.readLineSync()!);
    if (a >= 0 && a <= 10) {
      print("El número está en el rango [0,10]");
    } else {
      print("El número no está en el rango [0,10]");
    }
  }
}

class Fraction {
  int num;
  int den;

  Fraction(this.num, this.den) {
    if (den == 0) {
      throw Exception("El denominador no puede cero 0");
    }
  }

  Fraction suma(Fraction a) {
    int num1;
    if (den == a.den) {
      num1 = num + a.num;
      return Fraction(num1, a.den);
    } else {
      num1 = num * a.den + a.num * den;
      int den1 = den * a.den;
      return Fraction(num1, den1);
    }
  }

  Fraction resta(Fraction a) {
    int num1;
    if (den == a.den) {
      num1 = num - a.num;
      return Fraction(num1, a.den);
    } else {
      num1 = num * a.den - a.num * den;
      int den1 = den * a.den;
      return Fraction(num1, den1);
    }
  }

  Fraction multiplciacion(Fraction a) {
    int num1 = num * a.num;
    int den1 = den * a.den;
    return Fraction(num1, den1);
  }

  Fraction division(Fraction a) {
    int num1 = num * a.den;
    int den1 = den * a.num;
    return Fraction(num1, den1);
  }

  @override
  String toString() {
    return "$num/$den";
  }
}
