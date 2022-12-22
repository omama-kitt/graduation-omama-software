// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
  child: Text("    Keto Dite ",style: TextStyle(color: Color.fromARGB(227, 191, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
),
 Align(
  alignment: Alignment.topLeft,
  child: Text("     10 day plan ",style: TextStyle(color: Color.fromARGB(255, 104, 20, 132), fontWeight: FontWeight.normal,fontSize: 20),),
),
SizedBox(height: 20,),
Align(
  alignment: Alignment.topCenter,
  child: Text("    A diet based on fats as a source of\n    energy instead of carbohydrates, which \n    leads to a lower level of insulin in the \n    blood, the liver burns fat in the body to \n    rely on it as a source of energy.",style: TextStyle(color: Color.fromARGB(255, 104, 20, 132), fontWeight: FontWeight.normal,fontSize: 20),),
),
   SizedBox(height: 10,),
    Divider(color: Theme.of(context).accentColor, height:6,),
    Divider(color: Theme.of(context).accentColor, height:6,),
    SizedBox(height: 10,),
    Align(
  alignment: Alignment.topLeft,
  child: Text(" Vegan dieat 10 day plan.",style: TextStyle(color: Color.fromARGB(227, 191, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
),
     
              SizedBox(
                height: 5,
              ),
  
  // Text("\n Warm-Up",style: TextStyle(color: Color.fromARGB(219, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
               
               //Text("Today you have 5  time meal plan",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
                height: 10,
              ),
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
                          image: AssetImage('assets/green.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 1                          \nGreen bean curry",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/Mediterranean.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 2                         \nMediterranean salad",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/Coconut.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 3                        \nCoconut yogurt",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                
                child: Text( "Day 4                         \nsnacks",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/green bean.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 5                        \ngreen bean",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/caesar.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 6                         \nCaesar Salad",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/salad.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 7                         \nsalad",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                          image: AssetImage('assets/dinner side.png'),
                           ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                alignment: Alignment.center,
                
                child: Text( "Day 8                         \nSalad",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                
                child: Text( "Day 9                         \nsnacks",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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
                
                child: Text( "Day 10                         \nRansh Salad",style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 25,fontWeight: FontWeight.bold,),
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