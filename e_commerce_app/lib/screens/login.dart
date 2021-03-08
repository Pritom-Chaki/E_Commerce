import 'package:e_commerce_app/screens/signup.dart';
import 'package:e_commerce_app/widgets/change_screen.dart';
import 'package:e_commerce_app/widgets/normal_text_form_field.dart';
import 'package:e_commerce_app/widgets/password_text_formfield.dart';
import 'package:e_commerce_app/widgets/my_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;
void validation() {
  final FormState _form = _formKey.currentState;

  if (_form.validate()) {
    print("Yes");
  } else {
    print("No");
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    NormalTextFormField(
                      hintText: "Email",
                      obserText: false,
                      validator: (value) {
                        if (value == "") {
                          return "Please fill Password";
                        } else if (value.length < 8) {
                          return "Password is too short";
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
                      },
                      validator: (value) {
                        if (value == "") {
                          return "Please fill Password";
                        } else if (value.length < 8) {
                          return "Password is too short";
                        }
                        return "";
                      },
                    ),
                    MyButton(
                        btnName: "Login",
                        onPressed: validation,
                        btnColor: Colors.lightBlue),
                    ChangScreen(
                      whichAccount: "Do not have account? ",
                      title: "Register",
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => SignUp()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
