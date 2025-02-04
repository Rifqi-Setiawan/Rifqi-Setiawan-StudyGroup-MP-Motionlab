import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  var username = "".obs;
  var password = "".obs;

  // Login
  login() async {
    if(username.value == "rifqi" && password.value == "rifqi123") {
      Get.offAllNamed("/home");
    } else {
      Get.snackbar("Gagal", "Username atau Password salah");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
