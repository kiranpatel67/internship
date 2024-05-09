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
          children: <Widget>[imageProfile(), personalData(), signupField()],
        ),
      ),
    ));
  }

  Widget signupField() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Color(0xFF099F0B)),
            minimumSize: Size(800, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () async {
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
                    : NetworkImage(
                        'https://png.pngtree.com/background/20230613/original/pngtree-male-avatar-image-in-the-circle-picture-image_3377421.jpg'),
              );
            }),
            Positioned(
              bottom: 20,
              right: 20,
              child: IconButton(
                  onPressed: () {
                    Get.bottomSheet(Container(

                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            title: Text('Pick Image from Gallery'),
                            leading: Icon(Icons.photo_library_sharp),
                            onTap: (){
                              controller.getImageFromGallery();
                            },
                          ),
                          ListTile(
                            title: Text('Pick Image from Camera'),
                            leading: Icon(Icons.camera_alt),
                            onTap: (){
                              controller.getImageFromCamera();
                            },
                          ),
                        ],
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
        ],
      ),
    );
  }
}
