import 'package:get/get.dart';

class HomeController extends GetxController {
  final recommendedBooks = [
    'assets/images/book.jpg',
    'assets/images/book3.jpeg',
    'assets/images/book4.jpg',
  ];
  final rBindex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  scrollForwardRBook() {
    rBindex((rBindex.value + 1) % recommendedBooks.length);
  }

  scrollBackwardRBook() {
    rBindex(((rBindex.value - 1) + recommendedBooks.length) %
        recommendedBooks.length);
  }
}
