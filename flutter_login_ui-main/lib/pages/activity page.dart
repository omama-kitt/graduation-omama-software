// ignore_for_file: deprecated_member_use, unused_label, dead_code



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/GYMprofile.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:intl/intl.dart';

import '../common/theme_helper.dart';

class activityPage extends StatefulWidget {
  
  @override
  _activityPageState createState() => _activityPageState();
}
class _activityPageState extends State<activityPage> {
  double _headerHeight = 250;
  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;
  Key _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  var pickeddate;
  var pickedtime;
  //TextEditingController enterdate = TextEditingController();
 
  @override
  void initState() {
    enterdate.text = "";
    entertime.text = ""; //set the initial value of text field
    super.initState();
  }
  // TextEditingController timeinput = TextEditingController(); 
  //text editing controller for text field
 
 Crud _crud = Crud();
 //late final TextEditingController mycontroller;
  TextEditingController activityname =  new TextEditingController ();
  TextEditingController placeofactivity =  new TextEditingController ();
  TextEditingController enterdate = new  TextEditingController ();
  TextEditingController entertime =  new TextEditingController ();
 

activity()async{
    var response = await _crud.postRequest(linkaedactivity  , {
                "activityname" :activityname.text,
                "placeofactivity" :placeofactivity.text,
                "enterdate" :enterdate.text,
                "entertime" :entertime.text,
              
    });
   
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        
                                        builder: (context) => GYMPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print("signUp Fail");
    }

  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
       title: Text("               Activity ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25 ,fontWeight: FontWeight.bold,),
        ),
        
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => GYMPage()));},
        )
        
      ),
      
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
            
          child: ListView(
            padding: EdgeInsets.only(left: 5, top: 10, right: 0),
            
            children: [
              
              Text('Activity name :',
             
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor,)
                      
                      ,
                      
                    ),
               
              Container(
              child:TextField(
                controller: activityname,
       decoration: InputDecoration(
       labelText:" " )
       )),
                     SizedBox(
                height:25,
              ),
                    Text('Place of activity :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor),
                      
                    ),
                     Container(
              child:TextField(
                controller: placeofactivity,
       decoration: InputDecoration(
       labelText:" " )
       )),
                     SizedBox(
                height:30,
              ),
               Container(
                child: TextField(
                  controller: enterdate,
              //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today
                  , size: 30,
 color:  Theme.of(context).accentColor,), //icon of text field
                  labelText: "Enter Date",
                    labelStyle: TextStyle(
     color:  Theme.of(context).accentColor,
    fontWeight: FontWeight.bold,fontSize: 30 //<-- SEE HERE
    ), //label text of field
                  ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  setState(() {
                    enterdate.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {}
              },
                   /* Text('Activity date :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor)
                      ,
                      
                    ),
                     Divider(color: Theme.of(context).accentColor, height: 3,),
                      SizedBox(
                height:5,
              ),
               Text('22/12/2022 ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(197, 194, 0, 194))
                      ,
                      
                    ),
                     SizedBox(
                height:30,
              ),
                    Text('Activity time :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor)
                      ,
                      
                    ),
                     Divider(color: Theme.of(context).accentColor, height: 4,),
                      SizedBox(
                height:5,
              ),
               Text('9:00:00 AM - 12:00::00 PM',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(197, 194, 0, 194))
                      ,
                      
                    ),*/

                )
               ),
                     SizedBox(
                height:40,
              ),
              Container(
              child:TextField(
                controller: entertime, //editing controller of this TextField
                decoration: InputDecoration( 
                   icon: Icon(Icons.timer,   size:35,
 color:  Theme.of(context).accentColor,), //icon of text field
                   labelText: "Enter Time" , labelStyle: TextStyle(
     color:  Theme.of(context).accentColor,
    fontWeight: FontWeight.bold,fontSize: 30 //<-- SEE HERE
    ),//label text of field
                ),
                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                      );
                  
                  if(pickedTime != null ){
                      print(pickedTime.format(context));   //output 10:51 PM
                      DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                      //converting to DateTime so that we can further format on different pattern.
                      print(parsedTime); //output 1970-01-01 22:53:00.000
                      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                      print(formattedTime); //output 14:59:00
                      //DateFormat() is from intl package, you can format the time on any pattern you need.

                      setState(() {
                        entertime.text = formattedTime; //set the value of text field. 
                      });
                  }else{
                      print("Time is not selected");
                  }
                },
             )
              ),
              
                     SizedBox(
                height:30,
              ),
              
                    Text('Note :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color:  Theme.of(context).accentColor)
                      ,
                      
                    ),
                     Divider(color: Theme.of(context).accentColor, height: 2,),
                      SizedBox(
                height:5,
              ),
               Text('Please arrive half an hour before the appointment',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(197, 194, 0, 194))
                      ,
                      
                    ),
                    
              SizedBox(height: 30.0),
                        Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          
                          child: ElevatedButton(
                            
                            style: ThemeHelper().buttonStyle(),
                            
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                  color: Colors.white,
                                   letterSpacing: 2.2,
                                ),
                              ),
                            ),
                            
                            onPressed: ()async { 
                              await activity(); 
                            },
                                
                          ),
                          
                        ),
                         SizedBox(height: 20.0),
            ],
                ),
                    
            
          )
        )
            

          // ignore: dead_code
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
  
  }
}
     