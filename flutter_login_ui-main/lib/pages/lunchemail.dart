
// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/Compose.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Support.dart';
import 'forgot_password_page.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';

class launchEmail extends StatefulWidget{
  const launchEmail({Key? key}): super(key:key);

  @override
  _launchEmailState createState() => _launchEmailState();
}

  class _launchEmailState extends State<launchEmail>{
  TextEditingController controllerTo = TextEditingController();
  TextEditingController controllerSubject = TextEditingController();
  TextEditingController controllerMessage = TextEditingController();
  //double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) =>Scaffold(
backgroundColor: Color.fromRGBO(227, 199, 234, 1),
 appBar: AppBar(
         backgroundColor: Theme.of(context).accentColor,
         title: Text("                    Support",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>composePage()));},
        ),
    ),
      body: SingleChildScrollView(
        
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
           //buildTextField(title :  'To :' ,controller: controllerTo),
           
          //const SizedBox(height: 16),
          // buildTextField(title :  'subject :', controller: controllerSubject),
           // const SizedBox(height: 16),
            
            
            const SizedBox(height: 250),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(context),
                          
             child: ElevatedButton(
               style: ThemeHelper().buttonStyle(),
               
                 child: Padding(
                              padding: const EdgeInsets.fromLTRB(50, 10,50, 10),
               // minimumSize: Size.fromHeight(50),
               // textStyle: TextStyle(fontSize: 20,),
               // backgroundColor: Theme.of(context).accentColor,
                  child: Text('support', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w500, fontSize: 30,letterSpacing: 2,),),
              ),
             onPressed: () => launchEmail(
              toEmail :controllerTo.text,
              subject :controllerSubject.text,
              message :controllerMessage.text,
             ), 
            ),
            )
          ],
        )
            ),
          
        );
      
    
    Future launchEmail({
      required String toEmail,
      required String subject,
      required String message,
    })async{
      final url =
      'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull( message)}';
      if(await canLaunch(url)){
      await launch(url);
    }
    }
Widget buildTextField({
  int maxLines =1,
  required String title,
  required TextEditingController controller
}) =>
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
     title,
     style: TextStyle(fontSize: 23, fontWeight:FontWeight.bold,color: Color.fromARGB(247, 170, 0, 249),)
      
    ),
    const SizedBox(height: 8),
    TextField(
      
      controller: controller,
      maxLines: maxLines,
     
      decoration: InputDecoration(
        
        filled: true, //<-- SEE HERE
        fillColor: Color.fromARGB(255, 255, 255, 255),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
      ),
       
  ),
    ),
  ]
  
    );
  

  }
  
  
