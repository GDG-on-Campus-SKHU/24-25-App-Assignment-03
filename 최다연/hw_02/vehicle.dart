abstract class Vehicle {

  //속성
  String name;
  int speed;

  Vehicle(this.name, this.speed); //초기화

  void move();

  void info(){
    print('${name}가 시속 ${speed}km/h의 속도로 이동합니다');
  }
}