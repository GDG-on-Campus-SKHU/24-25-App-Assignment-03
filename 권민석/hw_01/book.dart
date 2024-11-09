import 'dart:async';

class Book {
  final String title;
  final String author;
  bool isAvailable = true; // 책의 대출 가능 여부를 나타냅니다.

  Book(this.title, this.author);

  Future<void> borrow() async {
    if (isAvailable == true) {
      print("대출 가능합니다.");
    }
    isAvailable = false;
  }

  Future<void> returnBook() async {
    if (isAvailable == false) {
      isAvailable = true;
    }
    await Future.delayed(Duration(seconds: 1));
    print("반납되었습니다.");
  }
}
