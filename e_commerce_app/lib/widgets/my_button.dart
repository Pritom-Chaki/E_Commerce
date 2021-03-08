import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String btnName;
  final Color btnColor;
  MyButton({this.btnName, this.onPressed, this.btnColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text(btnName),
        color: btnColor,
        onPressed: onPressed,
      ),
    );
  }
}
