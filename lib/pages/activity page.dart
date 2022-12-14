// ignore_for_file: deprecated_member_use



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/GYMprofile.dart';

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
                    
                    
                     Divider(color: Theme.of(context).accentColor, height: 4,),
                      SizedBox(
                height:5,
              ),
               Text('Trip ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color.fromARGB(197, 194, 0, 194))
                      ,
                      
                    ),
                     SizedBox(
                height:25,
              ),
                    Text('Place of activity :',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor)
                      ,
                      
                    ),
                     Divider(color: Theme.of(context).accentColor, height: 6,),
                      SizedBox(
                height:5,
              ),
               Text('Hayat Nablus swimming pool ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color:Color.fromARGB(197, 194, 0, 194))
                      ,
                      
                    ),
                     SizedBox(
                height:30,
              ),
                    Text('Activity date :',
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
                     SizedBox(
                height:30,
              ),
                    
            ]

          ),
          
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
    );
  }
}
     