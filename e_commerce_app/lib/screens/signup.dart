import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/widgets/change_screen.dart';
import 'package:e_commerce_app/widgets/normal_text_form_field.dart';
import 'package:e_commerce_app/widgets/password_text_formfield.dart';
import 'package:e_commerce_app/widgets/my_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;

void validation() {
  final FormState _form = _formKey.currentState;
  if (_form.validate()) {
    print("yes");
  } else {
    print("no");
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
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
                        NormalTextFormField(
                          hintText: "UserName",
                          obserText: false,
                          validator: (value) {
                            if (value == "") {
                              return "Please fill UserName";
                            } else if (value.length < 6) {
                              return "UserName is too short";
                            }
                            return "";
                          },
                        ),
                        NormalTextFormField(
                          hintText: "Email",
                          obserText: false,
                          validator: (value) {
                            if (value == "") {
                              return "Please fill Email";
                            } else if (!regExp.hasMatch(value)) {
                              return "Email is invalid";
                            }
                            return "";
                          },
                        ),
                        PasswordTextField(
                          hintText: "Password",
                          obserText: true,
                          onTap: () {
                            setState(() {
                              obserText = !obserText;
                            });
                            FocusScope.of(context).unfocus();
                          },
                          validator: (value) {
                            if (value == "") {
                              return "Please fill Password";
                            } else if (value.length < 8) {
                              return "Password is too Short ";
                            }
                            return "";
                          },
                        ),
                        NormalTextFormField(
                          hintText: "Phone Number",
                          obserText: false,
                          validator: (value) {
                            if (value == "") {
                              return "Please fill Phone Number";
                            } else if (value.length < 11) {
                              return "Phone Number must be 11";
                            }
                            return "";
                          },
                        ),
                        MyButton(
                            btnName: "Register",
                            onPressed: validation,
                            btnColor: Colors.pinkAccent),
                        ChangScreen(
                          whichAccount: "Already have account! ",
                          title: "SignIn",
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (ctx) => Login()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
