
import 'package:eagle_eye/screens/log-in/logInControler.dart';
import 'package:get/get.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
