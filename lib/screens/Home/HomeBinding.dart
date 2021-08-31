import 'package:eagle_eye/screens/Home/HomeControler.dart';
import 'package:get/get.dart'; 

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}