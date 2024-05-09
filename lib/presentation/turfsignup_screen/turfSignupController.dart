import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class turfSignupController extends GetxController{
  TextEditingController feestartedController = TextEditingController();
  TextEditingController DescriptionController = TextEditingController();
  TextEditingController AddressController = TextEditingController();

  RxString imagePath = ''.obs;
  Future<String?> Getimage() async{
    ImagePicker picker =  ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if(image!= null){
     imagePath.value = image.path.toString();
    }
  }


}