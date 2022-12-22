
// ignore_for_file: unused_import, unused_field, unnecessary_import, import_of_legacy_library_into_null_safe, duplicate_import, missing_required_param, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Compose.dart';
import 'package:flutter_login_ui/pages/Exercise.dart';
import 'package:flutter_login_ui/pages/confirm.dart';
import 'package:flutter_login_ui/pages/profil.dart';

import 'login_page.dart';

//import 'package:table_calendar/table_calendar.dart';

import 'package:table_calendar/table_calendar.dart';
 //import 'package:syncfusion_flutter_calendar/calendar.dart';
 import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
 
import 'package:flutter/cupertino.dart';
//import 'package:flutter_stacked_card_carousel/style_card.dart';


class CelanderPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      
    );
  }
}

class ExercisesPage1 extends StatefulWidget {
  
 // selectedtimePage({required Key ?key, required this.title}) : super(key: key);
  const ExercisesPage1({Key? key}): super(key:key);
 // final String title;
  @override
  _ExercisesPage1State createState() => _ExercisesPage1State();
}

class _ExercisesPage1State extends State<ExercisesPage1> {
  
  

  var pickeddate;
  var pickedtime;
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  int theriGroupVakue = 0;

   
  @override  
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        title: Text(" Exercises inside the gym ",
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
                  builder: (BuildContext context) => ExercisesPage()));},
        ),
       
      ),
      
       body: SingleChildScrollView(
        
        child: DefaultTabController(
      length: 2,
      
      child: Column(
        children: [
          
               SizedBox(
                height: 10,
              ),
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children :[
            //  Text("       Today you have 5 exercises",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),


        
            
          
        
        //
        //  Widget _buildProgrammCard() {
          
  // Text("\n Warm-Up",style: TextStyle(color: Color.fromARGB(219, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
               FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:400,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/a.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rRunning\n\n\n\n\n\n\n\n                                       0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:400,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/b.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rJogging in place\n\n\n\n\n\n\n\n                                       0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
                   SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:400,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/b1.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rMarching in place\n\n\n\n\n\n\n\n                                       0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
                  SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:400,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/h.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rAir jump rope\n\n\n\n\n\n\n\n                                       0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
             SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:400,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/r.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rArm circles\n\n\n\n\n\n\n\n                                       0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
                  SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:500,
                      height: 390,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/t.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rJumping jacks\n\n\n\n\n\n\n\n                                              0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
             SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:600,
                      height: 420,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/o.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rSupine snow angel\n\n\n\n\n\n\n\n                                                      0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:450,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/j.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rJump rope\n\n\n\n\n\n\n\n                                            0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:500,
                      height:410,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/e.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rTrunk rotation\n\n\n\n\n\n\n\n                                                     0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start, 
                )
            )
                  ],
                ),
              ),
            ), 
            SizedBox(height: 10,),
                      FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:540,
                      height: 410,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/m.jpg'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rMountain climbers.\n\n\n\n\n\n\n\n                                                             0:30",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
            
                  
             SizedBox(height: 15,),
              
                Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(80,10,60,10),
                                  child: Text('Back To The Home Page ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>ExercisesPage1()));
                                },
                              ),
                            ),
                
             SizedBox(height: 15,)
          
            //color: Colors.blue,
        ]
          ),
          //),
          //Container(),
        
      ),
        ]
    ),
        )
       ) 
  );
        
        
       
  }
  
  

       /*
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height:10.0,
              ),
               Divider(color: Theme.of(context).accentColor, height:8,),
               Divider(color: Theme.of(context).accentColor, height:8,),
               SizedBox(
                height:10.0,
              ),
             
             // Divider(color: Theme.of(context).accentColor, height:4,),
             
              
              
               // Divider(color: Theme.of(context).accentColor, height:2,),
             
              
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
               //Divider(color: Theme.of(context).accentColor, height:5,),
              SizedBox(
                height: 10,
              ),
              Container(
                child: (pickeddate == null)
                    ? Text("Select a date Please",style: TextStyle(color: Color.fromARGB(193, 107, 19, 158), fontWeight: FontWeight.bold,fontSize: 25),)
                    : Text("$pickeddate",style: TextStyle(color: Color.fromARGB(193, 107, 19, 158), fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Theme.of(context).accentColor, height:5,),
              Divider(color: Theme.of(context).accentColor, height:5,),
               SizedBox(
                height: 15,
              ),
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children :[
              Text("       Today you have 5 exercises",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),


        
               
            ],
            
   ),
   
              ),
                  ]
         )
              )
          
          );*/
            
            
          
  
}

