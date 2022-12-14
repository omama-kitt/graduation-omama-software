// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';
import 'package:flutter_login_ui/pages/vegan%20dite.dart';
import 'package:flutter_svg/svg.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
       fontFamily: "Cairo",
     backgroundColor: Color.fromARGB(255, 227, 199, 234),
        textTheme: Theme.of(context).textTheme.apply(displayColor: Color.fromARGB(255, 197, 20, 241),),
      ),
      home: vediodiat(),
    );
  }
}

class vediodiat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        title: Text("          ",
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
                  builder: (BuildContext context) =>Vegan()));},
        ),
       
      ),
      //bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .36,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 231, 167, 255),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/nn.png"),
              ),
              
            ),
        
          ),  
Container(
  child:Column(
    children:[
      Align(
  alignment: Alignment.topLeft,
  child: Text("    Day 1 ",style: TextStyle(color: Color.fromARGB(227, 191, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
),
 Align(
  alignment: Alignment.topLeft,
  child: Text("     Week 1 assessment week ",style: TextStyle(color: Color.fromARGB(255, 104, 20, 132), fontWeight: FontWeight.normal,fontSize: 20),),
),
SizedBox(height: 20,),
Align(
  alignment: Alignment.topLeft,
child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 115,
                    width: 400,
                    child: Card(
                      color: Color.fromARGB(255, 227, 199, 234),
                      elevation: 8,
                      shadowColor: Color.fromARGB(255, 158, 36, 150),
                      margin: EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(224, 198, 0, 247))),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Text("500\nProtein",
                            style: TextStyle(
                                color: Color.fromARGB(227, 191, 0, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 10,
                        ),
                        VerticalDivider(
  color: Color.fromARGB(226, 138, 7, 177),  //color of divider
  width: 50, //width space of divider
  thickness: 3, //thickness of divier line
  indent: 15, //Spacing at the top of divider.
  endIndent: 15, //Spacing at the bottom of divider.
),
                        Text("250\nFat",
                            style: TextStyle(
                                color: Color.fromARGB(227, 191, 0, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 10,
                        ),
                          VerticalDivider(
  color: Color.fromARGB(226, 138, 7, 177),  //color of divider
width: 50, //width space of divider
  thickness: 3, //thickness of divier line
  indent: 15, //Spacing at the top of divider.
  endIndent: 15, //Spacing at the bottom of divider.
),
                        Text("1500\nCalories",
                            style: TextStyle(
                                color:Color.fromARGB(227, 191, 0, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ),
                  ),
                ),
),
   SizedBox(height: 10,),
    Divider(color: Theme.of(context).accentColor, height:6,),
    Divider(color: Theme.of(context).accentColor, height:6,),
    SizedBox(height: 10,),
    Align(
  alignment: Alignment.topLeft,
  //child: Text(" Vegan dieat 10 day plan.",style: TextStyle(color: Color.fromARGB(227, 191, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
),
     
                // Text("\n Warm-Up",style: TextStyle(color: Color.fromARGB(219, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
               
               //Text("Today you have 5  time meal plan",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
             
               FittedBox(
           child: Row(
                // color: Colors.red,
               // shape: RoundedRectangleBorder(
                 //: BorderRadius.circular(10.0),
               
               // elevation: 5,
              
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:230,
                      height:230,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                         fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/healthy-breakfast-recipes.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Breakfast                         \nPoteto Pancakes \n8:00 AM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              FittedBox(
           child: Row(
                // color: Colors.red,
               // shape: RoundedRectangleBorder(
                 //: BorderRadius.circular(10.0),
               
               // elevation: 5,
              
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:200,
                      height:200,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                         fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/lunch.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Lunch                         \nVegan Gravy\n12:00 PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
                  ],
                ),
              ),
                SizedBox(height: 10,),
              FittedBox(
           child: Row(
                // color: Colors.red,
               // shape: RoundedRectangleBorder(
                 //: BorderRadius.circular(10.0),
               
               // elevation: 5,
              
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:200,
                      height:200,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                         fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/snacks.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Snacks                        \nRosted vegan pasta\n5:00 PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
                  ],
                ),
              ),
                SizedBox(height: 10,),
              FittedBox(
           child: Row(
                // color: Colors.red,
               // shape: RoundedRectangleBorder(
                 //: BorderRadius.circular(10.0),
               
               // elevation: 5,
              
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:200,
                      height:200,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                         fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/dinner.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Dinner                        \nVegan tocos\n8:00 PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
                  ],
                ),
              ),
                SizedBox(height: 10,),
              FittedBox(
           child: Row(
                // color: Colors.red,
               // shape: RoundedRectangleBorder(
                 //: BorderRadius.circular(10.0),
               
               // elevation: 5,
              
                  children: <Widget>[
                    //juiceitem(),
                    Container(
                      width:245,
                      height:245,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                         fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/dinner side.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Dinner Side                        \nSalad\n8:00 PM",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
                  ],
                ),
              ),
                
              SizedBox(height: 20,),
    ]
            ),
     ),     // Text("Calender Exercise\n 10 day plan ",
    ]
        ),)
               
              );
              
      
        
      
          
  }
}