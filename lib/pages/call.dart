

// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_login_ui/pages/GYMprofile.dart';

class CallPage extends StatefulWidget{
  //final String lat = "37.3230";
 // final String lng = "-122.0312";
  // final String telephoneNumber = "0598289033";
  const CallPage ({Key? key}): super(key:key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage>{
  double _headerHeight = 250;
  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;
  
  Key _formKey = GlobalKey<FormState>();
   //final String telephoneNumber = "0598289033";
   //late String phoneNumber;
   //_submit(){

   //}
   Crud _crud = Crud();

    TextEditingController phoneNumber= new  TextEditingController ();
 
   _dialCall() async {
    var response = await _crud.postRequest(linkcall , {
                "phoneNumber" :phoneNumber.text,
               
    });
    //String phoneNumber = number.text.toString();
    final Uri launchUri = Uri(
      scheme: 'tel',
      //path: phoneNumber,
    );
    await launch(launchUri.toString());
  }
  

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
       body: SafeArea(
            top: true,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    SizedBox(height: 200.0),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20,0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            
                      child: TextField(
                        
                        decoration:  InputDecoration(
                          icon: Icon(
                          Icons.phone,
                          
                      color: Color.fromARGB(218, 174, 50, 215),
                      size: 35,
                      
                    ),
                    
                        
                          labelText: 'Phone Number',
                          
                           labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Color.fromARGB(220, 137, 51, 173),),

                          border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3,color: Color.fromARGB(247, 170, 0, 249),),
                            
                             borderRadius: BorderRadius.circular(50),
                          ),
                          hintText:' Enter your Phone Number' ,
                        ),
                        
                        controller: phoneNumber,
                        keyboardType: TextInputType.number,
                      )),
                    //   SizedBox(height: 10.0),
                    
                      Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                               margin: const EdgeInsets.fromLTRB(150,20, 0, 0),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                onPressed: ()=> _dialCall(), 
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: Text('Call'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                  //onPressed: () => _dialCall(),
                                ),
                              )
                              
                              
                      ),
                      

                ]
                
              ),
              
            ),
            ),
           
       backgroundColor: Color.fromARGB(255, 227, 199, 234),
         appBar: AppBar(
        title: Text("              Call ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => GYMPage ()));},
        ), 
 ),
    /* body: Column(
        children: <Widget>[
          // ...
          ListTile(
          // title: Text("Launch Telephone"),
            leading: Icon(Icons.phone),
            
        title: TextField(
       decoration: InputDecoration(
        labelText: "Phone Number",labelStyle: TextStyle(fontSize: 30.0, color: Color.fromARGB(214, 111, 0, 176))
    ),
    keyboardType: TextInputType.phone,
    onChanged: (value) => phoneNumber = value,
        ),
            ),
  Row(
  children: <Widget>[
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        
       child: new ElevatedButton(
              //onPressed: () => launch("tel://0598289033"),
              //child: new Text("Call me",style: TextStyle(fontSize: 15.0, color: Colors.white),),)),
        
        onPressed: _submit,
          child: Text("Submit", style: TextStyle(fontSize: 15.0, color: Colors.white),),
         // color: Color(0xFF18D191),
         // elevation: 7.0,
      ),
      )
    ), */

  
        );
     
 
        
     
    //  body: Center(child: buildButton()),
    
  // ignore: dead_code, unused_element
 /* Widget buildButton (){
return ElevatedButton(
  style:ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal:48 ,vertical:12),
    textStyle: TextStyle(fontSize: 24),
  ) ,
  child: Text('call'),
  onPressed: () async {},
);
}*/

  }
}