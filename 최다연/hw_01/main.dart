import 'book.dart';
import 'library.dart';

void main() {
  Library library = Library();

  Book b1 = Book('Harry Potter', 'J.K. Rowling');
  Book b2 = Book('The Vegetarian', 'HanGang');
  Book b3 = Book('1984', 'Gerge Orwell');

  library.addBook(b1);
  library.addBook(b2);
  library.searchByTitle('Harry Potter');
  b1.borrow();
  b1.borrow();
  b1.returnBook();
  b1.borrow();
  library.searchByTitle('1984');
  library.addBook(b3);
  library.searchByTitle('1984');
  library.searchByTitle(null);
}
