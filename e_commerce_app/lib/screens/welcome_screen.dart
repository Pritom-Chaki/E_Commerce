import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/signup.dart';
import 'package:e_commerce_app/widgets/change_screen.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  //  color: Colors.yellow,
                  image: DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage("assets/images/shopping.png")),
                ),
              ),
              Text(
                "Welcome",
                style: welcomeTextStyle(),
              ),
              Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ready to Start Shopping Sign Up",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "To Get Started",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                height: 45,
                width: 265,
                // color: Colors.blue,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.pink[400],
                    child: Text(
                      "Sign Up",
                      style: productHeadTextStyle(),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => SignUp()));
                    }),
              ),
              SizedBox(height: 10),
              ChangScreen(
                whichAccount: "Already have an Account! ",
                title: "Login",
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
