// ignore_for_file: deprecated_member_use, unused_field

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/about%20yourself.dart';
import 'package:flutter_login_ui/pages/call.dart';
import 'package:flutter_login_ui/pages/choose%20fitness.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'Edit.dart';
import 'profile_page.dart';
import 'card.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
    );
  }
}

class chooseyourgoalPage extends StatefulWidget {
  @override
  _chooseyourgoalPageState createState() => _chooseyourgoalPageState();
}

class _chooseyourgoalPageState extends State<chooseyourgoalPage> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  int _value = 0;
  int _selection = 0;

  selectTime(int timeSelected) {
    setState(() {
      _selection = timeSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 199, 234),
        appBar: AppBar(
          title: Text(
            "     Choose your Goal ",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).accentColor,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => aboutyorselfPage()));
            },
          ),

          /*actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 88, 30, 128),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage()));
            },
          ),
        ],*/
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
              child: ListView(
            padding: EdgeInsets.only(left: 15, top: 20, right: 0),
            children: [
              Text(
                '   This help us create you\n   personalised plan you can\n   always change this later.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(220, 137, 51, 173)),
              ),
              //decoration: InputDecoration(
              // hintText: "Hint text sample",

              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 0),
                child: Text('        Learn the basic. ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      color: _value == 0
                          ? Color.fromARGB(206, 90, 9, 128)
                          : Color.fromARGB(255, 165, 165, 165),
                    )),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 1),
                child: Text('Get filter(Build lean musale). ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                      color: _value == 1
                          ? Color.fromARGB(206, 90, 9, 128)
                          : Color.fromARGB(255, 165, 165, 165),
                    )),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 2),
                child: Text(' Lose weight(lose fat) Gain. ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 27,
                      color: _value == 2
                          ? Color.fromARGB(206, 90, 9, 128)
                          : Color.fromARGB(255, 165, 165, 165),
                    )),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 3),
                child: Text(' Weight (Grow Your size). ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 27,
                      color: _value == 3
                          ? Color.fromARGB(206, 90, 9, 128)
                          : Color.fromARGB(255, 165, 165, 165),
                    )),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 4),
                child: Text('         Gain more flexible. ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 27,
                      color: _value == 4
                          ? Color.fromARGB(206, 90, 9, 128)
                          : Color.fromARGB(255, 165, 165, 165),
                    )),
              ),
              SizedBox(
                height: 10,
              ),

              /* Text(
                  ' Weight ',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(220, 137, 51, 173))
              ),
              SizedBox(
                height:10,
              ),
              TextField(
  decoration: InputDecoration(
    contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
     border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        
        borderRadius: BorderRadius.circular(50),
        
      ),
 
  ),
),
               SizedBox(
                height:20,
              ),
               Text(
                  ' Height ',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(220, 137, 51, 173))
              ),
               SizedBox(
                height:10,
              ),
              TextField(
  decoration: InputDecoration(
    contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
     border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
      ),
 
  ),
),*/

              //<-- SEE HERE

              // padding: EdgeInsets.all(12),

              //buildTextField("     Full Name ", "    ", false),
              //buildTextField("     E-mail", "     ", false),
              //buildTextField("     Location", "    ", false),

              SizedBox(height: 50.0),
              Container(
                decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                    child: Text(
                      "Next".toUpperCase(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.2,
                      ),
                    ),
                  ),
                  onPressed: () {
                    //After successful login we will redirect to profile page. Let's create profile page now
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => card()));
                  },
                ),
              ),
            ],
          )),
        )
        // ignore: dead_code
        );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Color.fromARGB(255, 159, 116, 188),
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
