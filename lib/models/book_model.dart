class BookModel {
  late int id;
  late int bookReferenceId;
  late int testamentReferenceId;
  late String name;

  BookModel({
    required this.id,
    required this.bookReferenceId,
    required this.testamentReferenceId,
    required this.name,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookReferenceId = json['book_reference_id'];
    testamentReferenceId = json['testament_reference_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['book_reference_id'] = this.bookReferenceId;
    data['testament_reference_id'] = this.testamentReferenceId;
    data['name'] = this.name;
    return data;
  }
}
