import 'book.dart';
import 'library.dart';

void main() async {
  print("책 대출가능 여부를 판단해드리겠습니다.");
  await Future.delayed(Duration(seconds: 2));

  Library library = Library();
  Book book1 = new Book("해리포터", "J.K.롤링");
  Book book2 = new Book("헝거게임", "수잔 콜린스");
  Book book3 = new Book("돈키호테", "김경식");
  Book book4 = new Book("장송의 프리렌", "Kenehito Yamada");

  await library.addBook(book1);
  await library.addBook(book2);
  await library.addBook(book3);
  await library.addBook(book4);

  var result = await library.searchByTitle("장송의 프리렌");
  if (result != null) {
    print("찾은 책: ${result.title}, 저자: ${result.author}");
    if (library.books.contains(result)) {
      Book foundBook = library.books.firstWhere((book) => book == result);
      foundBook.borrow();
      print("책을 빌립니다.");
      await Future.delayed(Duration(seconds: 1));
      print("빌린 후 반납합니다.");
      await Future.delayed(Duration(seconds: 1));
      foundBook.returnBook();
    }
  }
}
