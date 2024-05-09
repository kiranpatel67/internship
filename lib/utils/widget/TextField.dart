import 'package:flutter/material.dart';

class TextField extends TextFormField{

  TextFormField get TextFieldMain =>
   TextFormField(

    decoration: const InputDecoration(
      filled: true,
      fillColor: Color(0xECEFEFEF),
      border: OutlineInputBorder(

        borderSide: BorderSide.none,
        borderRadius:
        BorderRadius.all(Radius.circular(16)),
      ),

    ),
  );
}
