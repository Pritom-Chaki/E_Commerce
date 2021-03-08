import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final bool obserText;
  final Function validator;
  final String hintText;
  final Function onTap;
  final Function onChanged;

  PasswordTextField(
      {this.obserText,
      this.validator,
      this.onChanged,
      this.hintText,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obserText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        suffixIcon: GestureDetector(
          onTap: onTap,
          child:
              Icon(obserText == true ? Icons.visibility : Icons.visibility_off),
        ),
        hintStyle: hintTextStyle(),
      ),
    );
  }
}
