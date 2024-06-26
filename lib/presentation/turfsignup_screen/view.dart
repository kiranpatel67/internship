import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/turfsignup_screen/turfSignupController.dart';

class TurfSignupView extends GetView<turfSignupController> {
  TurfSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(32),
            child: ListView(
              children: <Widget>[
                imageProfile(),
                personalData(),
                cetegoryField(),
                SizedBox(
                  height: 12,
                ),
                signupField(),

              ],
            ),
          ),
        ));
  }

  Widget cetegoryField() {
    return Obx(() {
      return Column(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: ListTile(
                onTap: () {
                  Get.bottomSheet(
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xECEFEFEF),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Obx(
                              () =>
                              Column(
                                children: [
                                  CheckboxListTile(
                                    title: Text("hi"),
                                    value: controller.isSelectedCategory("hi"),
                                    onChanged: (value) =>
                                        controller.selectCategory("hi", value!),
                                  ),
                                  CheckboxListTile(
                                    title: Text("hello"),
                                    value: controller.isSelectedCategory("hello"),
                                    onChanged: (value) =>
                                        controller.selectCategory(
                                            "hello", value!),
                                  ),
                                  CheckboxListTile(
                                    title: Text("bonjour"),
                                    value: controller.isSelectedCategory(
                                        "bonjour"),
                                    onChanged: (value) =>
                                        controller.selectCategory(
                                            "bonjour", value!),
                                  ),
                                ],
                              ),
                        ),
                      ));
                },
                leading: Icon(Icons.library_add_check_rounded),
                title: Text(
                  'Select Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                ),


              ),
            ),

            if(controller.selectedCategories.isNotEmpty)
                    Text(
                      "Selected categories: ${controller.selectedCategories.keys
                          .toList().join(", ")}",
                      style: TextStyle(fontSize: 16),
                    ),
          ]
      );
    });
  }


  Widget signupField() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:
            MaterialStateColor.resolveWith((states) => Color(0xFF048D06)),
            minimumSize: Size(800, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () async {
          // Get.toNamed('/category_Screen');
          if (controller.formKey.currentState!.validate()) {
            print('all correct');
          } else {
            print('error');
          }
        },
        child: const Text(
          'Save',
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ));
  }

  Widget imageProfile() {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: Stack(
          children: [
            Obx(() {
              return CircleAvatar(
                radius: 80,
                backgroundImage: !controller.imagePath.value.isEmpty
                    ? NetworkImage(controller.imagePath.toString())
                    : const NetworkImage(
                    'https://png.pngtree.com/background/20230613/original/pngtree-male-avatar-image-in-the-circle-picture-image_3377421.jpg'),
              );
            }),
            Positioned(
              bottom: 20,
              right: 20,
              child: IconButton(
                  onPressed: () {
                    Get.bottomSheet(
                      backgroundColor: Color(0xFFFFFFFF),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xFFFFFFFF),
                          child: Wrap(
                            children: <Widget>[
                              Container(child: Text('Choose image from')),
                              Container(
                                color: Colors.white,
                                child: ListTile(
                                  title: Text('Pick Image from Gallery'),
                                  leading: Icon(Icons.photo_library_sharp),
                                  onTap: () {
                                    controller.getImageFromGallery();
                                  },
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: ListTile(
                                  title: Text('Pick Image from Camera'),
                                  leading: Icon(Icons.camera_alt),
                                  onTap: () {
                                    controller.getImageFromCamera();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      isDismissible: true,
                      enableDrag: true,
                      barrierColor: Color(0x9FFFFFFF),
                    );
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF099F0B),
                    size: 28,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget personalData() {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value != '') {
                  if (!(double.parse(value!) >= 300 &&
                      double.parse(value!) <= 1200)) {
                    return 'Fee must be between the range 300-1200';
                  }
                  return null;
                }
                return 'Please enter the fee';
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xECEFEFEF),
                hintText: 'Fee started price',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              controller: controller.feestartedController,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextFormField(
              minLines: 3,
              maxLines: 5,
              validator: (value) {
                if (value != '') {
                  return null;
                }
                return 'Please fill the Description';
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xECEFEFEF),
                hintText: 'Description',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              controller: controller.DescriptionController,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextFormField(
              keyboardType: TextInputType.streetAddress,
              validator: (value) {
                if (value != '') {
                  return null;
                }
                return 'Please fill the Address';
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xECEFEFEF),
                hintText: 'Address',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              controller: controller.AddressController,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextFormField(
              validator: (value) {
                if (value != '') {
                  return null;
                }
                return 'Please enter Zip code';
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xECEFEFEF),
                hintText: 'Zip code',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              controller: controller.ZipController,
            ),
          ),
        ],
      ),
    );
  }
}
