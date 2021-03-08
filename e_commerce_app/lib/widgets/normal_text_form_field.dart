import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class NormalTextFormField extends StatelessWidget {
  @override
  final bool obserText;
  final Function validator;
  final String hintText;

  NormalTextFormField({this.obserText, this.validator, this.hintText});
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obserText,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: hintTextStyle(),
        ));
  }
}
