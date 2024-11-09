abstract class Vehicle {
  late String name;
  late int speed;
  void move();

  void info() {
    print("$name가 시속 $speed km/h의 속도로 이동합니다.");
  }
}
