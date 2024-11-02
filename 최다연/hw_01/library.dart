import 'book.dart';

class Library {
  List<Book> books = [];

  Future<void> addBook(Book book) async {
    books.add(book);
    await Future.delayed(Duration(seconds: 1));
    print('책을 추가합니다: "${book.title}" by ${book.author}');
  }

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
