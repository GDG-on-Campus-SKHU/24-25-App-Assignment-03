import 'vehicle.dart';

class Car extends Vehicle {
  Car(String name, int speed) : super(name, speed);

  @override
  void move() {
    print("자동차가 도로 위를 달립니다.");
  }
}
