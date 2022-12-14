
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/Compose.dart';
//mport 'Compose.dart';
import 'Edit.dart';
import 'login_page.dart';
import 'profile_page.dart';


class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      
    );
  }
}

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
  
        title: Text("            Support ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
        ),
        
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage()));},
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
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height:20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              //width:5,
                              //color: Color.fromARGB(255, 162, 79, 194)),
                                  color: Color.fromARGB(255, 227, 199, 234),
                          //boxShadow: [
                           
                        
                         ),
                        
                                
                              ),
                    
                    )
                        
                  ],
                ),
                
                
              ),
              
                     Text('For any inquiries or complaints,\nplease contact via E-mail:',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Color.fromARGB(220, 75, 17, 100)),
                    ),
                        SizedBox(
                     height:30,
                
              ),
             
                     ListTile(
                                         // leading: Icon(Icons.support),
                                          title:Text("tharashehadeh@gmail.com",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Color.fromARGB(220, 177, 0, 253)),),
                                          subtitle: Text(
                                              ""),
                                               onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => composePage()));
                                           },
                                        ), 
                       
          
               SizedBox(height: 110.0),
                Text(
                     ' Thank you for being with us..',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Color.fromARGB(220, 63, 6, 87)),
                    ),
                    
                  
                ],
              )
            
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





