import 'dart:io';

void main() {
  print("Ingresa el primer número: ");
  double? a = double.tryParse(stdin.readLineSync()!);
  print("Ingresa el segundo número: ");
  double? b = double.tryParse(stdin.readLineSync()!);
  const undefined = "indeterminado";
  if (a != null && b != null) {
    print(
        "suma: ${a + b}\nResta: ${a - b}\nMultiplicación: ${a * b}\nDivisión:\n a/b: ${(b != 0 ? a / b : undefined)}\n b/a: ${(a != 0 ? b / a : undefined)}");
  } else {
    print("Los números ingresados no son válidos, intenta nuevamente");
  }
}
