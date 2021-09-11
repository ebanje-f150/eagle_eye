import 'package:eagle_eye/screens/Registration/Registration.dart';
import 'package:get/get.dart';

class RegistrationBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}
