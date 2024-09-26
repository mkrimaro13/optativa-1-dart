import 'dart:io';
import 'dart:math';

abstract class Figure {
  double? get area;
  double? get perimeter;
}

abstract class ExtraOperations {
  double? get add10;
}

class Circle implements Figure, ExtraOperations {
  double? radius;
  double? get area => radius! * radius! * pi;
  double? get perimeter => 2 * radius! * pi;
  double? get add10 => radius! + 10;
}

void main() {
  Circle crcl = Circle();
  crcl.radius = 5;
  double? area = crcl.area;
  double? perimeter = crcl.perimeter;
  double? plusten = crcl.add10;
  print(
      "El área es: ${area}\nEl perímetro es: ${perimeter}\nRadio + 10: ${plusten}");
  try {
    print("Ingresa un número a dividir");
    double a = double.parse(stdin.readLineSync()!);
    print("Ingresa el divisor:");
    double b = double.parse(stdin.readLineSync()!);
    if (b == 0) {
      // En dart no existe `DivideByZeroException`, se usa un error de argumento, ya que no se puede dividir por cero.
      throw new ArgumentError("No se puede dividir por cero");
    }
    print("División: ${a! / b!}");
  // Se indica que en caso que salte esa excepción haga otra cosa.
  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  // En caso de alguna otra excepción simplemente imprima el error.
  } catch (e) {
    print("Error: ${e}");
  }
}
