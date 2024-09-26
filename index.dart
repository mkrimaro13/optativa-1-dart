import 'dart:io';

void main() {
  print('Nombre: ');
  String? nameInput = stdin.readLineSync();
  print('Hola $nameInput');
  print('Ingresa tu fecha de nacimiento en formato dd/mm/yyyy:');
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = parseDate(birthdayInput!);
  if (dateConverted == null) {
    print('La fecha ingresada no tiene el formato necesario: $birthdayInput');
    return;
  }

  var person = Person(
      name: nameInput,
      birthday: dateConverted,
      age: DateTime.now().year - dateConverted.year);

  print('Tú nombre se ha guardado ${person.name}');
  print('Tú fecha de nacimiento se ha guardado ${person.birthday}');
  print('Tú edad se ha guardado ${person.age}');
}

DateTime? parseDate(String date) {
  List<String> delimiters = ['/', '-'];
  for (var delimiter in delimiters) {
    if (date.contains(delimiter)) {
      List<String> parts = date.split(delimiter);
      if (parts.length != 3) return null;
      try {
        return DateTime.parse('${parts[2]}-${parts[1]}-${parts[0]}');
      } catch (e) {
        print('Error al analizar la fecha: $e');
        return null;
      }
    }
  }
  return null;
}



class Person {
  String? name;
  DateTime? birthday;
  int? age;
  Person({this.name, this.birthday, this.age});
}
