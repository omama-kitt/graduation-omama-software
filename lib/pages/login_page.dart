// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Mealcard1.dart';
import 'package:flutter_login_ui/pages/Dite%20categroy.dart';
import 'package:flutter_login_ui/pages/Dite.dart';
import 'package:flutter_login_ui/pages/Exercise.dart';
import 'package:flutter_login_ui/pages/celander.dart';
import 'package:flutter_login_ui/pages/editpage.dart';
import 'package:flutter_login_ui/pages/selectedtime.dart';
import 'package:flutter_login_ui/pages/vedio%20dieat.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
//import '../constant/link.dart';
import 'activity page.dart';
import 'choose fitness.dart';
//import 'component/crud.dart';
import 'forgot_password_page.dart';
import 'profile_page.dart';
import 'registration_page.dart';
import 'widgets/header_widget.dart';
import 'editpage.dart';
import 'Mealcard1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  // GlobalKey<FormState> formstate = GlobalKey();
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  //Key _formKey = GlobalKey<FormState>();
  Crud _crud = Crud();

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  signin() async {
    var response = await _crud.postRequest(linklogin_page, {
      "email": email.text,
      "password": password.text,
    });

    if (response['status'] == "success") {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => choosefitnessPage()),
          (Route<dynamic> route) => false);
    } else {
      print("signUp Fail");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true,
                  Icons.login_sharp), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(
                      20, 10, 20, 10), // This will be the login form
                  child: Column(
                    children: [
                      /* Text(
                      'FIT GYM',
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),*/
                      Text(
                        'Signin into your account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(220, 137, 51, 173)),
                      ),
                      SizedBox(height: 30.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                width: 1000,
                                child: TextFormField(
                                  //controller: email,
                                  controller: email,
                                  decoration: ThemeHelper().textInputDecoration(
                                      "E-mail address", "Enter your email"),

                                  keyboardType: TextInputType.emailAddress,
                                  validator: (val) {
                                    if (!(val!.isEmpty) &&
                                        !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                            .hasMatch(val)) {
                                      return "Enter a valid email address";
                                    }
                                    return null;
                                  },
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  controller: password,
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Password', 'Enter your password'),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              SizedBox(height: 25.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordPage()),
                                    );
                                  },
                                  child: Text(
                                    "Forgot your password?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(220, 137, 51, 173)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  onPressed: () async {
                                    await signin();
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(100, 10, 100, 10),
                                    child: Text(
                                      'Sign In'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                //child: Text('Don\'t have an account? Create'),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: "Don\'t have an account? ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(220, 137, 51, 173)),
                                  ),
                                  TextSpan(
                                    text: 'Create',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegistrationPage()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Theme.of(context).accentColor),
                                  ),
                                ])),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
