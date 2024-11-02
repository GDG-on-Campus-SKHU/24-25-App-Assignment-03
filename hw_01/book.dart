import 'dart:async';

class Book {
  final String title;
  final String author;
  bool isAvailable = true;

  Book(this.title, this.author);

  Future<void> borrow() async {}

  Future<void> returnBook() async {
    print('반납을 시도 중입니다: $title');
    await Future.delayed(Duration(seconds: 1));
    isAvailable = true;
    print('$title이 반납되었습니다.');
  }
}
