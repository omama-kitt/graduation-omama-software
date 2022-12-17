
// ignore_for_file: unused_import, unused_field, unnecessary_import, import_of_legacy_library_into_null_safe, duplicate_import, missing_required_param, unused_label, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Compose.dart';
import 'package:flutter_login_ui/pages/confirm.dart';
import 'package:flutter_login_ui/pages/profil.dart';

import 'login_page.dart';

//import 'package:table_calendar/table_calendar.dart';

import 'package:table_calendar/table_calendar.dart';
 //import 'package:syncfusion_flutter_calendar/calendar.dart';

class selectedtime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      
    );
  }
}

class selectedtimePage extends StatefulWidget {
 // selectedtimePage({required Key ?key, required this.title}) : super(key: key);
  const selectedtimePage({Key? key}): super(key:key);
 // final String title;
  @override
  _selectedtimePageState createState() => _selectedtimePageState();
}

class _selectedtimePageState extends State<selectedtimePage> {
  
late CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }
  final _formKey = GlobalKey<FormState>();
 var pickeddate;
  var pickedtime;
  String fullName = '';
  bool showPassword = false;
   
     
  @override  
  
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
  
        title: Text("         Select Your Time ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 25),
        ),
        
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>  profile(city: '', email: '', username: '',)));},
        ),
       
      ),
       body: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height:30.0,
              ),
               Divider(color: Theme.of(context).accentColor, height:8,),
               SizedBox(
                height:10.0,
              ),
              Text('Select Time : ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(193, 107, 19, 158)),),
              SizedBox(
                height:20.0,
              ),
             // Divider(color: Theme.of(context).accentColor, height:4,),
              FloatingActionButton.extended(
                onPressed: () {
                  DatePicker.showTime12hPicker(context,
                      showTitleActions: true,
                      currentTime: DateTime.now(), onConfirm: (time) {
                        setState(() {
                          pickedtime =
                          "Picked time is : ${time.hour} : ${time.minute} : ${time.second}";
                        }); 
                      }); 
                },
                // child: Text('Back To The Home Page ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                label: Text("Set Time", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 30),),
                icon: Icon(Icons.timer),
              ),
              
              SizedBox(
                height: 10,
              ),
                Divider(color: Theme.of(context).accentColor, height:2,),
              SizedBox(
                height: 30,
              ),
              Text('Select Date : ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(193, 107, 19, 158)),),
              SizedBox(
                height:20.0,
              ),
               //Divider(color: Theme.of(context).accentColor, height:4,),
              FloatingActionButton.extended(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5),
                      maxTime: DateTime(2026, 6, 7), onChanged: (date) {
                        print('change $date');
                        setState(() {
                          pickeddate = "${date.day}";
                        });
                      }, onConfirm: (date) {
                        print('confirm $date');
                        setState(() {
                          pickeddate =
                          "Picked Date is : ${date.day}/${date.month}/${date.year}";
                        }); 
                       
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                
                label: Text("Set Date", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 30),),
                icon: Icon(Icons.date_range),
              ),
              SizedBox(
                height:20.0,
              ),
               Divider(color: Theme.of(context).accentColor, height:5,),
              SizedBox(
                height: 30,
              ),
              Container(
                child: (pickeddate == null)
                    ? Text("Select a date Please")
                    : Text("$pickeddate",style: TextStyle(color: Color.fromARGB(193, 107, 19, 158), fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: (pickedtime == null)
                    ? Text("Select a time Please")
                    : Text("$pickedtime",style: TextStyle(color: Color.fromARGB(193, 107, 19, 158), fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(color: Theme.of(context).accentColor, height:3,),
              SizedBox(
                height: 30,
              ),
              SizedBox(height: 60.0),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(90, 10, 90, 15),
                                  child: Text('Confirmation', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>ConfirmPage()));
                                },
                              ),
                            ),
            ],
          ),
        )
      );
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
        
      );
      
      // ignore: dead_code
    
   
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

 /*      
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                     // height:20,
                      decoration: BoxDecoration(
                          border: Border.all(
                                  color: Color.fromARGB(255, 227, 199, 234),
                         ),   
                              ),
                    
                    )
           
                  ],
                ),
              ),
                      
                ],
              )
            
          ),
        ),
        bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
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
      )
      );
    }
    }*/
  