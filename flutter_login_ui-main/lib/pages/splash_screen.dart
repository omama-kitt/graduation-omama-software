
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screens/GetStarted/UI/GetStartedPage.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

import 'forgot_password_page.dart';
import 'login_page.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';

class SplashScreen extends StatefulWidget{
 // const SplashScreen({Key? key, required String title}): super(key:key);
late final String title;
  @override
 _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.fitness_center_outlined), 
             //let's create a common header widget
            ),
            SafeArea(
              child: Container( 
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                child: Column(
                  children: [
                   Text(
                      'FIT GYM',
                      style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500,color: Color.fromARGB(220, 75, 17, 100)),
                    ),
                     SizedBox(height: 60.0),
                    Text(
                      'Choose  the  right  GYM  for you through our application.',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                    SizedBox(height: 40.0),
                    Text('Create your account',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                   
                    
                            
                          ],
                        )
                    
          
        
                )
              ),
          ]
            ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStartedPage()));},
    
       
         label: Text('Get Starts'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(220, 255, 255, 255)),
         
      ),
        icon: Icon(Icons.arrow_forward_ios_outlined),
      ),
     
    );
  
         
  }
}