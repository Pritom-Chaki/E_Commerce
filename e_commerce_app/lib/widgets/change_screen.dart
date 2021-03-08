import 'package:flutter/material.dart';

class ChangScreen extends StatelessWidget {
  final String title;
  final Function onTap;
  final String whichAccount;
  ChangScreen({this.whichAccount, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(whichAccount),
        GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.cyan, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
