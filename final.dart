import 'dart:io';

import 'Menu/menu.dart';
import 'challenges/challenges.dart';

void main() {
  var menu = new Menu();
  String? nombre;
  int? inp;

  print("Hola, bienvenidos a los retos.\nIngresa tu nombre:");
  nombre = stdin.readLineSync();
  print("De acuerdo $nombre =), ingresa una opción:");

  menu.showMenu();

  do {
    try {
      inp = int.parse(stdin.readLineSync()!);
      if (inp == 0) {
        print("Gracias por ingresar :)");
        break;
      } else if (inp >= 1 && inp <= 15) {
        switch (inp) {
          case 1:
            Challenge1().run();
            print("\n");
            menu.showMenu();
            break;
          case 2:
            Challenge2().run();
            print("\n");
            menu.showMenu();
            break;
          case 3:
            Challenge3().run();
            print("\n");
            menu.showMenu();
            break;
          case 4:
            Challenge4().run();
            print("\n");
            menu.showMenu();
            break;
          case 5:
            Challenge5().run();
            print("\n");
            menu.showMenu();
            break;
          case 6:
            Challenge6().run();
            print("\n");
            menu.showMenu();
            break;
          case 7:
            Challenge7().run();
            print("\n");
            menu.showMenu();
            break;
          case 8:
            Challenge8().run();
            print("\n");
            menu.showMenu();
            break;
          case 9:
            Challenge9().run();
            print("\n");
            menu.showMenu();
            break;
          case 10:
            Challenge10().run();
            print("\n");
            menu.showMenu();
            break;
          case 11:
            Challenge11().run();
            print("\n");
            menu.showMenu();
            break;
          case 12:
            Challenge12().run();
            print("\n");
            menu.showMenu();
            break;
          case 13:
            Challenge13().run();
            print("\n");
            menu.showMenu();
            break;
          case 14:
            Challenge14().run();
            print("\n");
            menu.showMenu();
            break;
          case 15:
            Challenge15().run();
            print("\n");
            menu.showMenu();
            break;
        }
      }
    } catch (e) {
      print("Opción no valida intenta nuevamente\n");
      menu.showMenu();
      stdin.readLineSync();
    }
  } while (true);
}
