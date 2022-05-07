import 'package:get/get.dart';

import '../book_model.dart';

class BookProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Book.fromJson(map);
      if (map is List) return map.map((item) => Book.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Book?> getBook(int id) async {
    final response = await get('book/$id');
    return response.body;
  }

  Future<Response<Book>> postBook(Book book) async => await post('book', book);
  Future<Response> deleteBook(int id) async => await delete('book/$id');
}
