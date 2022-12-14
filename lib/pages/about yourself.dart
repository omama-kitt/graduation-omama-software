
// ignore_for_file: unused_field

import 'dart:collection';

import 'package:flutter/gestures.dart';
import 'package:flutter_login_ui/pages/choose%20your%20goal.dart';
import 'package:multi_select_item/multi_select_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/choose%20fitness.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'Edit.dart';
import 'profile_page.dart';
class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      
    );
  }
}
class aboutyorselfPage extends StatefulWidget {
   final String  ?text;
  final int ?index;
int _value = 0;
  aboutyorselfPage({
    @required this.text,
    @required this.index
  });

  @override
  _aboutyorselfPageState createState() => _aboutyorselfPageState();
}
class _aboutyorselfPageState extends State<aboutyorselfPage> {
  HashSet selectItems = new HashSet();
  bool isMultiSelectionEnabled = false;
   int _selectedIndex = -1;
   bool _isSelected = false;
  Color unselectedColor = Colors.white;
  Color selectedColor = Colors.blue;

  
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    
     
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
  
        title: Text("     Tell us about yourself! ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 22),
        ),
        
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => choosefitnessPage()));},
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
          onTap: () => setState(() => _value = 0),
          child: ListView(
            
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            children: [
              Text('To give you better experiancewe  need to know your gender.',
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 23,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                  SizedBox(
                height:70,
              ),
              //new Tab(icon: new Image.asset("assets/images/GetStartedPage/girl.png")),
              SizedBox(
                height: 5,
              ),
              Column(
    /* children: [
    Image.asset('assets/girl.png'), // <-- SEE HERE
  ],*/
),
 GestureDetector(
            onTap: () => setState(() => _value = 0),

  child: ImageIcon(
              
              AssetImage('assets/girl.png'),
             //color: Color.fromARGB(206, 90, 9, 128),
             color: _value == 0 ? Color.fromARGB(206, 90, 9, 128) : Color.fromARGB(255, 165, 165, 165),
              size: 150,
         ),
         ),
        /* IconButton(
            icon:( new Image.asset("assets/images/GetStartedPage/girl.png",)
            
            // Colors: Color.fromARGB(206, 90, 9, 128),
           
             // size:_drawerIconSize,
            ),
              onPressed: (){
             setState(() {
            _isSelected = true;
        });
      },
        
    
       
          ),*/
        
              SizedBox(
                height: 80,
              ),
               Column(
    /* children: [
    Image.asset('assets/boy.png'), 
    // <-- SEE HERE
  ],*/
),
     GestureDetector(
            onTap: () => setState(() => _value = 1),

  child: ImageIcon(      
           AssetImage("assets/boy.png"),
          // color: Color.fromARGB(206, 90, 9, 128),
            color: _value == 1 ? Color.fromARGB(206, 90, 9, 128) : Color.fromARGB(255, 165, 165, 165),
          size: 150,
         ),
     ),   
       
                        SizedBox(
                height: 20,
                
              ),
          
              //buildTextField("     Full Name ", "    ", false),
               //buildTextField("     E-mail", "     ", false),
              //buildTextField("     Location", "    ", false),
        
               SizedBox(height:30.0),
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
                            onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => chooseyourgoalPage()));
                                },
                                
                          ),
                        ),
               
                  
                ],
              )
            
          ),
        ),
        
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





