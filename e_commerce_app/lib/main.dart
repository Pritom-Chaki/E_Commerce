import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/checkout_screen.dart';
import 'package:e_commerce_app/screens/details_screen.dart';
import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/screens/list_product.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Home': (context) => HomePage(),
        '/LogIn': (context) => Login(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Welcome to E-Com',
      home: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return HomePage();
            } else {
              return Login();
            }
          }),
    );
  }
}
