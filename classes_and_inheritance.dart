class Rectangule {
  double? base, height;

  // Get => Getter
  double get area => base! * height!;
  double get perimeter => 2 * base! + 2 * height!;
}

class Square extends Rectangule {
  set side(double value) {
    base = value;
    height = value;
  }

  double get side => base!;
}

void main() {
  Square sqr = Square();
  sqr.base = 10;
  sqr.height = 20;
  sqr.side = 3;
  print("El área es: ${sqr.area}");
  print("El perímetro es: ${sqr.perimeter}");
  print("El lado es: ${sqr.side}");
}
