import 'vehicle.dart';

class Car extends Vehicle {

  Car(String name, int speed) : super(name, speed); //부모클래스 생성자 접근

  @override
  void move() {
    print("${name}가 도로 위를 달립니다.");
  }

  void stop() {
    speed = 0;
    print("${name}이 정지했습니다. 현재 속도:${speed}");
  }
}

class Bus extends Vehicle {

  Bus(String name, int speed) : super(name, speed); //부모클래스 생성자 접근

  @override
  void move() {
    print("${name}가 도로 위를 달립니다.");
  }

  void stop() {
    speed = 0;
    print("${name}이 정지했습니다. 현재 속도:${speed}");
  }
}

class Texi extends Vehicle {

  Texi(String name, int speed) : super(name, speed); //부모클래스 생성자 접근

  @override
  void move() {
    print("${name}가 도로 위를 달립니다.");
  }

  void stop() {
    speed = 0;
    print("${name}이 정지했습니다. 현재 속도:${speed}");
  }
}