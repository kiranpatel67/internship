import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/turfsignup_screen/turfSignupController.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:image_picker/image_picker.dart';

class TurfSignupView extends GetView<turfSignupController> {
  TurfSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              imageProfile(),
              personalData(),
            ],
          ),

        )
    );
  }

  Widget signupField() {
    return Obx(() {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: MaterialStateColor.resolveWith((states) =>
                  Color(
                      0xFF099F0B)),
              minimumSize: Size(800, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))
          ),
          onPressed: () {

          },
          child: const Text('Login', style: TextStyle(color: Color(0xFFFFFFFF)),
          )

      );
    });
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'https://png.pngtree.com/background/20230613/original/pngtree-male-avatar-image-in-the-circle-picture-image_3377421.jpg'),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.teal,
                  size: 28,
                )),
          ),
        ],
      ),
    );
  }


  Widget personalData() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: TextFormField(
            validator: (value) {
              if (value != '') {
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
    );
  }

}

