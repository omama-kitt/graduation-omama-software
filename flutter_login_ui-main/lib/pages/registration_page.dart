
// ignore_for_file: missing_required_param

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_login_ui/constant/link.dart';

import 'about yourself.dart';


class RegistrationPage extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage>{

  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  Crud _crud = Crud();
 //late final TextEditingController mycontroller;
  TextEditingController username =  new TextEditingController ();
  TextEditingController city =  new TextEditingController ();
  TextEditingController email = new  TextEditingController ();
  TextEditingController password =  new TextEditingController ();
  TextEditingController confirm_password =  new TextEditingController ();

  signUp()async{

    var response = await _crud.postRequest(linkregistation_page, {
                "username" :username.text,
                "city" :city.text,
                "email" :email.text,
                "password" :password.text,
                "confirm_password" :confirm_password.text,

    });
   
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        
                                        builder: (context) => LoginPage()
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
      backgroundColor:Color.fromARGB(255, 227, 199, 234),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 3, color: Color.fromARGB(255, 162, 79, 194)),
                                  color: Color.fromARGB(255, 227, 199, 234),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(31, 0, 0, 0),
                                      blurRadius: 20,
                                      offset: const Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 162, 79, 194),
                                  size: 80.0,
                                ),
                              ),
                              Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width:5,
                              color: Color.fromARGB(255, 162, 79, 194),
                            ),
                            color: Color.fromARGB(255, 125, 28, 154),
                          ),
                          child: Icon(
                           Icons.camera_alt_sharp,  color: Colors.white,
                          ),
                        )),
                            ],
                          ),
                        ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        
                        Container(
                          width:1000 ,
                          
                          child: TextFormField(
                            controller: username,
                            decoration: ThemeHelper().textInputDecoration('Name', 'Enter your name'),
                           
                          
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        
                        SizedBox(height: 20,),
          
 
                        
                        Container(
                          width:1000 ,
                          
                          child: TextFormField(
                            controller: city,
                            decoration: ThemeHelper().textInputDecoration('city', 'Enter your city'),
                           
                          
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        
                  /* DecoratedBox(
  decoration: BoxDecoration( 
     color:Color.fromARGB(255, 255, 255, 255), //background color of dropdown button
     border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width:3), //border of dropdown button
     borderRadius: BorderRadius.circular(40), //border raiuds of dropdown button
  ),
  

  child:Padding(
    
    padding: EdgeInsets.only(left:25, right:25),
    
     child:DropdownButton<String>(
        isExpanded: true,
            hint: Text('Select any city', style: TextStyle(fontSize: 15, color: Color.fromARGB(123, 238, 229, 241))),
       value:categoryValue,
      items: [ //add items in the dropdown 
        DropdownMenuItem(
           value: "Nubles",
          child: Text("Nubles"),
           
        ),
          DropdownMenuItem(
          child: Text("Jerusalem"),
          value: "Jerusalem"
        ),
         DropdownMenuItem(
          child: Text("Bethlehem"),
          value: "Bethlehem"
        ),
         DropdownMenuItem(
          child: Text("Hebron"),
          value: "Hebron"
        ),
         DropdownMenuItem(
          child: Text("Ramallah and Al-Bireh"),
          value: "Ramallah and Al-Bireh"
        ),
         DropdownMenuItem(
          child: Text("Salfit"),
          value: "Salfit"
        ),
         DropdownMenuItem(
          child: Text("Qalqilya"),
          value: "Qalqilya"
        ),
         DropdownMenuItem(
          child: Text("Tulkarm"),
          value: "Tulkarm"
        ),
         DropdownMenuItem(
          child: Text("Tubas"),
          value: "Tubas"
        ),
        
        DropdownMenuItem(
          child: Text("Jenin"),
          value: "Jenin",
        ),
         DropdownMenuItem(
          child: Text("Jericho"),
          value: "Jericho",
        ),
      ],
      
       onChanged: (value) {
              setState(() {
                categoryValue = value.toString();
              });
            })
  )
     
      icon: Padding( //Icon at tail, arrow bottom is default icon
        padding: EdgeInsets.only(left:3),
        child:Icon(Icons.arrow_circle_down_sharp)
      ), 
      iconEnabledColor: Color.fromARGB(255, 60, 18, 104), //Icon color
      style: TextStyle(  //te
      
         color: Color.fromARGB(255, 0, 0, 0), //Font color
         fontSize: 25//font size on dropdown button
      ),
      
      dropdownColor: Color.fromARGB(255, 194, 141, 207),//dropdown background color
     )
  ),
 */
/*DecoratedBox(
  decoration: BoxDecoration( 
     color:Color.fromARGB(255, 255, 255, 255), //background color of dropdown button
     border: Border.all(color: Color.fromARGB(255, 181, 96, 237), width:1), //border of dropdown button
     borderRadius: BorderRadius.circular(100), //border raiuds of dropdown button
  ),
child:Padding(
  
    
    padding: EdgeInsets.only(left:30, right:30,),
  child:DropdownButton<String>(
  focusColor:Colors.white,
  value:  categoryValue,
  //elevation: 12,
  icon:Padding( //Icon at tail, arrow bottom is default icon
        padding: EdgeInsets.only(left:60),
        child:Icon(Icons.arrow_circle_down_sharp)
      ), 
     iconEnabledColor:Color.fromARGB(255, 53, 21, 90),
     style: TextStyle( color: Color.fromARGB(255, 0, 0, 0), //Font color
         fontSize: 18),
         dropdownColor: Color.fromARGB(255, 194, 141, 207),
  items: <String>[
    'Nubles',
    'Jerusalem',
    'Bethlehem',
    'Hebron',
    'Ramallah and Al-Bireh',
    'Salfit',
    'Qalqilya',
    'Tulkarm',
    'Tubas',
    'Jenin',
     'Jericho',
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value,style:TextStyle(color:Colors.black),),
      
    );
  }).toList(),
  
  hint:
  Text(
    
    "Choose a City",
    
    style: TextStyle(
        color: Color.fromARGB(255, 125, 125, 125),
        fontSize: 15,
        fontWeight: FontWeight.w500),
  ),
  
  onChanged: ( value) {
    setState(() {
               categoryValue = value.toString();
              });
  }
),

)
        
),*/
                        SizedBox(height: 20.0),
                        Container(
                          width:1000 ,
                          child: TextFormField(
                            controller: email,
                            decoration: ThemeHelper().textInputDecoration("E-mail address", "Enter your email"),
                            
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                         SizedBox(height: 20.0),
                        Container(
                          width:1000 ,
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                                "Password*", "Enter your password"),
                                
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your password";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width:1000 ,
                          child: TextFormField(
                            controller: confirm_password,
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                                "Confirm Password*", "Enter your Confirm password"),
                                
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your Confirm password";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                        SizedBox(height: 40),
                                    Text("I accept all terms and conditions.", style: TextStyle(color: Color.fromARGB(220, 137, 51, 173),fontSize: 15,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            onPressed: ()async { 
                              await signUp(); 
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                              child: Text(
                                "Sign Up".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            //onPressed: () async{
                             // await Registration_Page();
                            // if (_formKey.currentState!.validate()) {
                               /*Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => ProfilePage()
                                    ),
                                        (Route<dynamic> route) => false
                                );*/
                             // }


                            
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
        );
      
  }

}