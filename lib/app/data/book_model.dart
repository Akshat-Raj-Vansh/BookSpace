class Book {
  String? id;
  String? name;
  String? cost;
  String? author;

  Book({this.id, this.name, this.cost, this.author});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cost = json['cost'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cost'] = cost;
    data['author'] = author;
    return data;
  }
}
