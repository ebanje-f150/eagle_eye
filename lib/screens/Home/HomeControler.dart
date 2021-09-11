import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:eagle_eye/provider/remoteProvider.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectImage = ''.obs;
  final location = ''.obs;
  final Date = DateTime.now();

  void getImage(ImageSource imagesource) async {
    final pickedFile = await ImagePicker().pickImage(source: imagesource);
    if (pickedFile != null) {
    } else {
      Get.snackbar("Hello", "message", snackPosition: SnackPosition.BOTTOM);
    }
  }

  void onSaveLocation() {
    RemoteProvider().newDemand(
        d_location: location.toString(),
        d_date: Date.toString(),
        onSucess: (locationdata) {
          print('LOCATION SAVED SUCCESFULLY ');
          print('$locationdata');
        },
        onError: (error) {
          print('location did not add succefully');
          print(error);
        });
  }
}
