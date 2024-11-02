import 'dart:async';

class Book {
  final String? title;
  final String? author;
  bool isAvailable = true;

  Book(this.title, this.author); //생성자
  
  Future<void> borrow() async {
    print('대출을 시도 중입니다: $title');
    await(Future.delayed(Duration(seconds: 2)));
    if(isAvailable) {
      isAvailable = false;
      print('${title}이 대출되었습니다.');}
    else{print('${title} 은 이미 대출 중입니다');}
  }

  Future<void> returnBook() async {
    print('반납을 시도 중입니다: $title');
    await(Future.delayed(Duration(seconds: 1)));
    isAvailable = true;
    print('반납되었습니다.');
  }
}
