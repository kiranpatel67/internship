import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class turfSignupController extends GetxController{
  TextEditingController feestartedController = TextEditingController();
  TextEditingController DescriptionController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  RxString imagePath = ''.obs;

  Future getImageFromGallery() async{
    final ImagePicker _picker = await ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null){
      imagePath.value = image.path.toString();
    }
    else{
      print('no image');
    }


  }
  Future getImageFromCamera() async{
    final ImagePicker _picker = await ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null){
      imagePath.value = image.path.toString();
    }
    else{
      print('no image');
    }
  }


  final List<String> chipData = ["Chip 1", "Chip 2", "Chip 3", "Chip 4"];
  RxList<String> selectedChips = <String>[].obs;

  void toggleChip(String chip) {
    if (selectedChips.contains(chip)) {
      selectedChips.remove(chip);
    } else {
      selectedChips.add(chip);
    }
  }


}