import 'book.dart';

class Library {
  List<Book> books = [];

  Future<void> addBook(Book book) async {
    books.add(book);
    await Future.delayed(Duration(seconds: 1));
    print("책의 제목과 저자가 추가되었습니다.");
  }

  Future<Book?> searchByTitle(String? title) async {
    print("검색할 제목: $title");

    if (title == null || title.isEmpty) {
      print("제목이 null입니다.");
      return null; // null인 경우 즉시 반환
    }

    for (var book in books) {
      await Future.delayed(Duration(seconds: 1));
      print("비교 중: ${book.title}"); // 각 책 제목 출력
      if (book.title == title) {
        return book; // 찾은 책을 반환
      }
    }
    print("책 제목 '$title'에 해당하는 책이 없습니다.");
    return null; // 책을 찾지 못한 경우 null 반환
  }
}
