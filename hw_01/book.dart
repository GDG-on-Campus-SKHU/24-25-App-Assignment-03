import 'dart:async';

class Book {
  final String title;
  final String author;
  bool isAvailable = true;

  Book(this.title, this.author);

  Future<void> borrow() async {}
}
