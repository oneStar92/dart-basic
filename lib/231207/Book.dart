class Book implements Comparable<Book>{
  final String title;
  final DateTime publishDate;
  final String comment;

  Book({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate.onlyDate() == other.publishDate.onlyDate());

  @override
  int get hashCode => title.hashCode ^ publishDate.onlyDate().hashCode;

  @override
  int compareTo(Book other) => publishDate.onlyDate().compareTo(other.publishDate.onlyDate());

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }
}

void main() {
  final book = Book(
      title: 'Book 1',
      comment: 'Book1 is Good'
  );
  final book2 = Book(
      title: 'Book 2',
      publishDate: DateTime(2020, 12, 25),
      comment: 'Book2 is Good'
  );
  final book22 = Book(
      title: 'Book 2',
      publishDate: DateTime(2020, 12, 25),
      comment: 'Book2 is Good'
  );
  final book3 = Book(
      title: 'Book 3',
      publishDate: DateTime(1980, 3, 3),
      comment: 'Book3 is Good'
  );
  final book4 = Book(
      title: 'Book 4',
      publishDate: DateTime(1992, 5, 4),
      comment: 'Book4 is Good'
  );

  final books = <Book>{book, book2, book22, book3, book4};
  final bookList = <Book>[book, book2, book22, book3, book4];

  print('Set Length: ${books.length}, List Length: ${bookList.length}');
  print('Before sorting');
  bookList.forEach(print);
  bookList.sort();
  print('After sorting');
  bookList.forEach(print);
  print('Deep Copy Result: ${book2.copyWith() == book2}');

  final s = 'Hello';
  final s1 = 'Hello';

  print(identical(s, s1));
}

extension OnlyDate on DateTime {
  DateTime onlyDate() => DateTime(year, month, day);
}