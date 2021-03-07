import 'package:e_commerce_app/variables.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value.length < 6) {
                            return "UserName is too short";
                          } else if (value == "") {
                            return "Please fill UserName";
                          }
                          return "";
                        },
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: hintTextStyle(),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == "") {
                            return "Please fill Email";
                          } else if (!regExp.hasMatch(value)) {
                            return "Email is invalid";
                          }
                          return "";
                        },
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: hintTextStyle(),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: Icon(
                              Icons.visibility,
                              color: Colors.black,
                            ),
                          ),
                          hintStyle: hintTextStyle(),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          // icon: Icon.,
                          hintStyle: hintTextStyle(),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                            child: Text("Register"),
                            color: Colors.blueGrey,
                            onPressed: () {}),
                      ),
                      Row(
                        children: <Widget>[
                          Text("I have already an account!"),
                          GestureDetector(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
