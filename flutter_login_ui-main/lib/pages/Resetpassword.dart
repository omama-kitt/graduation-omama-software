
// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Mealcard.dart';
import 'package:flutter_login_ui/pages/Dite%20categroy.dart';
import 'package:flutter_login_ui/pages/Dite.dart';
import 'package:flutter_login_ui/pages/Exercise.dart';

import 'package:flutter_login_ui/pages/editpage.dart';

import 'package:flutter_login_ui/pages/success.dart';
import 'package:flutter_login_ui/pages/vedio%20dieat.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
//import '../constant/link.dart';
import 'activity page.dart';
import 'choose fitness.dart';
//import 'component/crud.dart';
import 'forgot_password_page.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';
import 'editpage.dart';
import 'Mealcard.dart';
class ResetPasswordPage extends StatefulWidget{
  const ResetPasswordPage({Key? key}): super(key:key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage>{
  double _headerHeight = 250;
 // GlobalKey<FormState> formstate = GlobalKey();
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   final _formKey = GlobalKey<FormState>();
  //Key _formKey = GlobalKey<FormState>();
   Crud _crud = Crud();

  TextEditingController email = new  TextEditingController ();
  TextEditingController password =  new TextEditingController ();
   TextEditingController confirm_password =  new TextEditingController ();
  RessetPassword()async{
    var response = await _crud.postRequest(linkresetpassword , {
                "email" :email.text,
                "password" :password.text,
               "confirm_password" :confirm_password.text,
    });
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        
                                        builder: (context) => successPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print("RessetpasswordFail");
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
              child: HeaderWidget(_headerHeight, true, Icons.password_outlined), //let's create a common header widget
            ),
            SafeArea(
              child: Container( 
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                child: Column(
                  
                  children: [
                   /* Text(
                      'FIT GYM',
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),*/
                    // SizedBox(height: 15,),
                    Text(
                      'New Password',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                    SizedBox(height: 15,),
                     Text('Please Enter New Password',
                      style: TextStyle(fontSize: 25,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            Container(
                          width:1000 ,
                          child: TextFormField(
                            //controller: email,
                             controller: email,
                            decoration: ThemeHelper().textInputDecoration("E-mail address", "Enter your email"),
                            
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextField(
                                 controller:password,
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                        SizedBox(height: 30.0),
                            Container(
                              child: TextField(
                                controller:confirm_password,
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('confirm_Password', 'Enter your confirmpassword'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                             SizedBox(height: 25.0),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                
                                onPressed: () async{
                                  await RessetPassword(); 
                                    },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                                  child: Text('Save'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                              
                              ),
                            ),
                            SizedBox(height: 10.0),
                           
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}
