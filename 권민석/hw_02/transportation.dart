import 'vehicle.dart';

class Car extends Vehicle {
  Car(String name, int speed) {
    this.name = name;
    this.speed = speed;
  }
  @override
  void move() {
    print("자동차가 도로 위를 달립니다.");
  }

  void stop() {
    speed = 0;
    print("자동차가 퍼져버렸습니다.");
  }

  @override
  void info();
}

class Train extends Vehicle {
  Train(String name, int speed) {
    this.name = name;
    this.speed = speed;
  }
  @override
  void move() {
    print("기차가 철도 위를 달립니다.");
  }

  @override
  void info();
}

class Bicycle extends Vehicle {
  Bicycle(String name, int speed) {
    this.name = name;
    this.speed = speed;
  }
  @override
  void move() {
    print("자전거가 겁도없이 도로 위를 달립니다.");
  }

  @override
  void info();
}
