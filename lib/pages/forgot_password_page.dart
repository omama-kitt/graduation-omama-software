import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';

import 'forgot_password_verification_page.dart';
import 'login_page.dart';
import 'widgets/header_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  //Key _formKey = GlobalKey<FormState>();
  Crud _crud = Crud();

  TextEditingController email = new TextEditingController();
  //TextEditingController password = new  TextEditingController ();
  //TextEditingController confirm_password = new  TextEditingController ();

  ForgotPassword() async {
    var response = await _crud.postRequest(linkcheckpassword, {
      "email": email.text,
    });

    if (response['status'] == "success") {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => ForgotPasswordVerificationPage()),
          (Route<dynamic> route) => false);
    } else {
      print("  ForgotPassword Fail");
    }
  }

  @override
  Widget build(BuildContext context) {
    double _headerHeight = 300;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 198, 222),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child:
                    HeaderWidget(_headerHeight, true, Icons.password_rounded),
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(220, 75, 17, 100)),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Enter the email address associated with your account.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(220, 137, 51, 173)),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'We will email you a verification code to check your authenticity.',
                              style: TextStyle(
                                color: Color.fromARGB(220, 137, 51, 173),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: TextFormField(
                                controller: email,
                                decoration: ThemeHelper().textInputDecoration(
                                    "Email", "Enter your email"),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Email can't be empty";
                                  } else if (!RegExp(
                                          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                      .hasMatch(val)) {
                                    return "Enter a valid email address";
                                  }
                                  return null;
                                },
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 40.0),
                            Container(
                              decoration:
                                  ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(70, 10, 70, 10),
                                  child: Text(
                                    "Send".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onPressed: () async {
                                  await ForgotPassword();
                                },
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Remember your password? ",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(220, 137, 51, 173),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(159, 124, 44, 154),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()),
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
