// ignore_for_file: unused_label

import 'dart:collection';
import 'package:flutter/gestures.dart';
import 'package:flutter_login_ui/layout/todo_layout.dart';
import 'package:flutter_login_ui/main.dart';
import 'package:flutter_login_ui/pages/Dite%20categroy.dart';
import 'package:flutter_login_ui/pages/Dite.dart';
import 'package:flutter_login_ui/pages/GYMprofile.dart';
import 'package:flutter_login_ui/pages/confirm.dart';
import 'package:flutter_login_ui/pages/vedio%20dieat.dart';
import 'package:flutter_login_ui/pages/vegan%20dite.dart';

import 'package:get/get.dart';
import 'package:multi_select_item/multi_select_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/choose%20fitness.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import '../constant/link.dart';
import 'component/crud.dart';

class aboutyorselfPage extends StatefulWidget {
  @override
  _aboutyorselfPageState createState() => _aboutyorselfPageState();
}
class _aboutyorselfPageState extends State<aboutyorselfPage> {
  
  Key _formKey = GlobalKey<FormState>();
  Crud _crud = Crud();
  String gender = "meal";
  String purpose = "Learn the basic.";
  chooseyourgoal() async {
    var response = await _crud.postRequest(linkaboutyourselfs, {
      "gender":  gender,
      "purpose": purpose,
      
    });
    if (response['status'] == "success") {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) =>ConfirmPage()),
          (Route<dynamic> route) => false);
    } else {
      print("signUp Fail");
    }
  }
  int sum = 0;
  static const values = <String>['Daily', 'Weekly', 'Monthly'];
  String selectedValue = values.first;
  final selectedColor = Color.fromARGB(255, 158, 36, 150);
  final unselectedColor = Colors.black;
  String currentcitysel = "Meal";
  var g = [
    'Meal',
    'Femal',  
  ];
   String currentcitysel1 = "Learn the basic. ";
  var p = [
    'Learn the basic. ',
    'Get filter(Build lean musale).',
    ' Lose weight(lose fat) Gain. ',
     ' Weight (Grow Your size). ',
      'Gain more flexible. ',
  ];
  bool value = false;
  bool s = false;
 // String dropdownvalue = 'meal';
  @override
  Widget build(BuildContext context) {
    Object dropDownStringItem = gender;
    var selectedValue;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
  
        title: Text("     ",
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
      
      ),
      
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () => setState(() => value = 0 as bool),
          child: ListView(
            
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            children: [
              Text(' Choose the gender and the purpose of your choice of the \n                       gym.',
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                    ),
                  SizedBox(
                height:70,
              ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/boy.png',
                  color:  Color.fromARGB(206, 90, 9, 128) ,
                fit: BoxFit.fill,
              ),
            ),
            Spacer(flex:1),
            Expanded(
              child: Image.asset(
                'assets/girl.png',
                  color:  Color.fromARGB(206, 90, 9, 128) ,
                width: 90.0,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
          SizedBox(
                height:50,
              ),
             
                  DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(220, 173, 54, 225), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(220, 177, 88, 216),
                ),
                dropdownColor: Color.fromARGB(232, 236, 209, 255),
               
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items:g.map(
                    ( dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child:  new Text(
                          dropDownStringItem,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ).toList(),      
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    //  GetHelpingWord();
                      dropDownStringItem =value!;
                     // this.currentcitysel = newvaluesel!;
                       controller:gender;
                    });
                  },
                  value: currentcitysel,
                ),
                  SizedBox(
                height:40,
              ),
               DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(220, 173, 54, 225), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(220, 177, 88, 216),
                ),
                dropdownColor: Color.fromARGB(232, 236, 209, 255),
               
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items:p.map(
                    ( dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ).toList(),      
                  onChanged: (value) {
                    setState(() {
                      purpose = value.toString();
                    //  GetHelpingWord();
                      dropDownStringItem =value!;
                     // this.currentcitysel = newvaluesel!;
                       controller:purpose;
                    });
                  },
                  value: currentcitysel1,
                ),
                
            SizedBox(
                height:50,
              ),
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
                           
                           onPressed: () async{
                                  await  chooseyourgoal(); 
                                    },
                          ),
                        ),

                ],
              )
            
          ),
        ),
      );
   
  }

  
  }






