import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();

  late TextEditingController nameController,
      passwordController,
      emailController;


  var password = '';
    var email= '';

  @override
  void onInit() {
    passwordController = TextEditingController();
    emailController = TextEditingController();

    super.onInit();
  }

  void onReady() {
    super.onInit();
  }

  void onClose() {
  
    passwordController.dispose();
    emailController.dispose();
  
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

  void checkLogin() {
    final isValid = logInFormKey.currentState!.validate();

    if (!isValid) {
      return ;
    }
    logInFormKey.currentState!.save();
  }
}
