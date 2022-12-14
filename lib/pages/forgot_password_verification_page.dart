import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/Resetpassword.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'profile_page.dart';
import 'widgets/header_widget.dart';

class ForgotPasswordVerificationPage extends StatefulWidget {
  const ForgotPasswordVerificationPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordVerificationPageState createState() => _ForgotPasswordVerificationPageState();
}

class _ForgotPasswordVerificationPageState extends State<ForgotPasswordVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  bool _pinSuccess = false;
 Crud _crud = Crud();

  TextEditingController email = new  TextEditingController ();
  TextEditingController verfiycode=  new TextEditingController ();

  forgot_password_verification()async{

    var response = await _crud.postRequest(linkveryfiecode, {
              
              
                "email" :email.text,
               "verfiycode":verfiycode.text,

    });
   
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        
                                        builder: (context) =>ResetPasswordPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print("forgot_password_verification Fail");
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
                child: HeaderWidget(
                    _headerHeight, true, Icons.privacy_tip_outlined),
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
                            Text('Verification',
                              style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                 color: Color.fromARGB(220, 75, 17, 100),
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Enter the verification code we just sent you on your email address.',
                              style: TextStyle(
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(220, 137, 51, 173)
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
                              child: OTPTextField(
                              
                              length: 4,
                              width: 300,
                              
                              fieldWidth: 50,
                              style: TextStyle(
                                  fontSize: 30
                                  
                              ),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.underline,
                              onCompleted: (pin) {
                                setState(() {
                                  _pinSuccess = true;
                                });
                              },
                              ),
                            ),
                            SizedBox(height: 50.0),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "If you didn't receive a code ! ",
                                    style: TextStyle(
                                      color: Color.fromARGB(220, 137, 51, 173),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                      
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Resend',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ThemeHelper().alartDialog("Successful",
                                                "Verification code resend successful.",
                                                
                                                context)
                                                ;
                                          },
                                        );
                                      },
                                    style: TextStyle(
                                      fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 107, 8, 143)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40.0),
                            Container(
                              decoration:   _pinSuccess ?ThemeHelper().buttonBoxDecoration(context):ThemeHelper().buttonBoxDecoration(context,"#440065"),
                             // decoration: _pinSuccess ? ThemeHelper().buttonBoxDecoration(context):ThemeHelper().buttonBoxDecoration(context,"#7b1fa2"),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      70, 10,70, 10),
                                      
                                  child: Text(
                                    "Verify".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                               onPressed: () async{
                                  await forgot_password_verification(); 
                                    },
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
        )
    );
  }
}
