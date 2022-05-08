import 'package:get/get.dart';

class AuthController extends GetxController {
  final isUserNameSelected = false.obs;
  final isEmailSelected = false.obs;

  static AuthController get authController => Get.find<AuthController>();
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

  userNameSelected() {
    isUserNameSelected(true);
    isEmailSelected(false);
  }

  emailSelected() {
    isUserNameSelected(false);
    isEmailSelected(true);
  }
}
