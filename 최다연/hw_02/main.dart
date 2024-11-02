import 'transportation.dart';
import 'vehicle.dart';

void main() {
  Car bus = Car('bus', 60);
  Car texi = Car('texi', 100);
  Car car = Car('car', 70);

  List<Vehicle> vehicle = [bus, texi, car];

  for(Vehicle v in vehicle) {
    v.info();
    v.move();
  }
  
  bus.stop();
}
