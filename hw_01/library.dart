import 'Book.dart';

class Library {
  Future<void> addBook(Book book) async {}

  Future<void> searchByTitle(String? title) async {
    if (title == null) {
      print("제목이 null입니다.");
      return;
    }

    await Future.delayed(Duration(seconds: 1));
    Book? foundBook = books.firstWhere(
      (book) => book.title == title,
      orElse: () => Book("Not Found", "Unknown"),
    );

    if (foundBook.title == "Not Found") {
      print('책을 찾을 수 없습니다: $title');
    } else {
      print('"${foundBook.title}" 책을 찾았습니다. 저자: ${foundBook.author}');
    }
  }
}
