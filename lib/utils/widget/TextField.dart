import 'package:flutter/material.dart';

class TextField extends TextFormField{

  TextFormField get TextFieldMain =>
   TextFormField(

    decoration: const InputDecoration(
      filled: true,
      fillColor: Colors.green,
      border: OutlineInputBorder(

        borderSide: BorderSide.none,
        borderRadius:
        BorderRadius.all(Radius.circular(16)),
      ),

    ),
  );
}
