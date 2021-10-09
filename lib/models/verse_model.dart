class VerseModel {
  late int id;
  late int bookId;
  late int chapter;
  late int verse;
  late String text;

  VerseModel({
    required this.id,
    required this.bookId,
    required this.chapter,
    required this.verse,
    required this.text,
  });

  VerseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookId = json['book_id'];
    chapter = json['chapter'];
    verse = json['verse'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['book_id'] = this.bookId;
    data['chapter'] = this.chapter;
    data['verse'] = this.verse;
    data['text'] = this.text;
    return data;
  }
}
