import 'transportation.dart';
import 'vehicle.dart';

void main() {
  Bus bus = Bus('bus', 60);
  Texi texi = Texi('texi', 100);
  Car car = Car('car', 70);

  List<Vehicle> vehicle = [bus, texi, car];

  for(Vehicle v in vehicle) {
    v.info();
    v.move();
  }
  
  bus.stop();
}
