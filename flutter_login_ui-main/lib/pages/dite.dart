
// ignore_for_file: unused_import, unused_field, unnecessary_import, import_of_legacy_library_into_null_safe, duplicate_import, missing_required_param, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Compose.dart';
import 'package:flutter_login_ui/pages/dite.dart';
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

class DitePage extends StatefulWidget {
  
 // selectedtimePage({required Key ?key, required this.title}) : super(key: key);
  const DitePage({Key? key}): super(key:key);
 // final String title;
  @override
  _DitePageState createState() => _DitePageState();
}

class _DitePageState extends State<DitePage> {
  
  

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
        title: Text("         Calender Dite ",
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
                  builder: (BuildContext context) => profile(city: '', email: '', username: '',)));},
        ),
       
      ),
      
       body: SingleChildScrollView(
        
        child: DefaultTabController(
      length: 2,
      
      child: Column(
        children: [
            Divider(color: Theme.of(context).accentColor, height:8,),
               Divider(color: Theme.of(context).accentColor, height:8,),
               SizedBox(
                height:20.0,
              ),
             
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
              
               SizedBox(
                height: 10,
              ),
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children :[
            


        
           
         
            
           // height: 60,
            //color: Color.fromARGB(205, 163, 32, 240),
           // padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
           
          
              /*  Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40,10),
                                  child: Text('Exercieces', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage()));
                                },
                              ),
                            ),*/
                          
               
                
                
                
               
              ],
              
            ),
            
          ),
        //Text("       Today you have 5 exercises",style: TextStyle(color: Color.fromARGB(193, 130, 2, 204), fontWeight: FontWeight.bold,fontSize: 25),),
        //
        //  Widget _buildProgrammCard() {
         
              SizedBox(
                height: 5,
              ),
  
  // Text("\n Warm-Up",style: TextStyle(color: Color.fromARGB(219, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
               
               Text("Today you have 5  time meal plan",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
                height: 10,
              ),
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
                      width:350,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/healthy-breakfast-recipes.png'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rbreakfast\n\n\n\n\n\n\n\n                                      8:00AM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
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
                      width:550,
                      height: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/lunch.png'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rlunch\n\n\n\n\n\n\n\n                                      12:00PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
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
                      width:350,
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/snacks.png'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rsnacks\n\n\n\n\n\n\n\n                                       5:00PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/dinner.png'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rdinner\n\n\n\n\n\n\n\n                                       8:00PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
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
                      height: 370,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/dinner side.png'),
                           ),
                      ),
                    ),
                    Align(
                alignment: Alignment.topLeft,
                
                child: Text( "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rdinner side\n\n\n\n\n\n\n\n                                            8:00PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 35,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                )
            )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)
                  ],
                  
                ),
                
              ),
              
              
               
                
             
          
            //color: Colors.blue,
        
          ),
          //),
          //Container(),
        
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

