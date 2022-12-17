// ignore_for_file: deprecated_member_use, unused_field

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/about%20yourself.dart';

import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/login_page.dart';


class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      
    );
  }
}
class choosefitnessPage extends StatefulWidget {
  
  @override
  _choosefitnessPageState createState() => _choosefitnessPageState();
}
class _choosefitnessPageState extends State<choosefitnessPage> {
   int _selectedIndex = -1;
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  Crud _crud = Crud();

  TextEditingController Age= new  TextEditingController ();
  TextEditingController weight =  new TextEditingController ();
   TextEditingController height =  new TextEditingController ();
  fitness_level()async{
    var response = await _crud.postRequest(linkfitness_level , {
                "Age" :Age.text,
                "weight" :weight.text,
               "height" :height.text,
    });
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        
                                        // ignore: missing_required_param
                                        builder: (context) => aboutyorselfPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print("RessetpasswordFail");
    }

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
       title: Text("Choose your fitness level ",
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
                  builder: (BuildContext context) => LoginPage()));},
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
              Text('   This help us create you\n   personalised plan you can\n   always change this later.',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromARGB(220, 137, 51, 173))
                      ,
                      
                    ),
                   //decoration: InputDecoration(
 // hintText: "Hint text sample",

                  SizedBox(
                height:50,
              ),
          Text(
                  ' Age ',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(220, 137, 51, 173),)
              
           ),
              SizedBox(
                height:5,
              ),
              
              
               SizedBox(
                height:10,
              ),
              TextFormField(
                
  //initialValue: 'Input text',
  controller: Age,
  decoration: InputDecoration(
    
   /// contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
    //labelText: 'Label text',
    //errorText: 'Error message',
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
        
    ),
    
   hintText:'input age' ,
   
  ),
),
Text(
                  ' Weight',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(220, 137, 51, 173),)
              
           ),
              SizedBox(
                height:5,
              ),
              
              
               SizedBox(
                height:10,
              ),
              TextFormField(
                controller: weight,
  //initialValue: 'Input text',
  decoration: InputDecoration(
   /// contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
    //labelText: 'Label text',
    //errorText: 'Error message',
    suffix: Text('Kg'),
    border: OutlineInputBorder(),
    
    enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
        
    ),
    hintText:'input height' ,

  ),
),
Text(
                   ' Height ',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color.fromARGB(220, 137, 51, 173),)
              
           ),
              SizedBox(
                height:5,
              ),
              
              
               SizedBox(
                height:10,
              ),
              TextFormField(
                controller: height,
  //initialValue: 'Input text',
  decoration: InputDecoration(
    suffix: Text('Ft'),
   /// contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
    //labelText: 'Label text',
    //errorText: 'Error message',
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
    ),
   hintText:'input height' ,
  ),
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
                            onPressed: () async{
                                  await fitness_level(); 
                                    },
                                
                          ),
                        ),
               
                  
                ],
              )
            
          ),
            
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





