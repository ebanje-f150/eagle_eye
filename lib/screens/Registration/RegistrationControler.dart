import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();

  late TextEditingController nameController,
      passwordController,
      emailController,
      phoneController;

  var name = '';
  var password = '';
  var email = '';
  var phone = '';

  @override
  void onInit() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();

    super.onInit();
  }

  void onReady() {
    super.onInit();
  }

  void onClose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'INVALID EMAIL';
    }
    return null;
  }

  String? validatepassword(String value) {
    if (value.length <= 5) {
      return 'password must be > 5 characters';
    }
    return null;
  }

  void checkRegistration() {
    final isValid = registrationFormKey.currentState!.validate();

    if (!isValid) {
      return null;
    }
    registrationFormKey.currentState!.save();
  }
}
