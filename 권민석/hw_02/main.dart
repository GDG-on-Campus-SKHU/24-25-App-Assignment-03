import '../../권민석/hw_02/transportation.dart';
import '../../권민석/hw_02/vehicle.dart';

void main() {
  Car car = new Car("자동차", 50);
  Train train = new Train("기차", 80);
  Bicycle bc = new Bicycle("자전거", 12);

  List<Vehicle> vehicles = [
    car,
    train,
    bc,
  ];
  for (int i = 0; i < vehicles.length; i++) {
    vehicles[i].move();
    if (vehicles[i].name == "자동차") {
      car.stop();
    }
    vehicles[i].info();
  }
}
