
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

class successPage extends StatefulWidget {
  @override
  _successPageState createState() => _successPageState();
}
class _successPageState extends State<successPage> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              
              
              Center(
                child: Stack(
                  children: [
                    Container(
                     // width: 130,
                      height:20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width:5,
                             
                                  color: Color.fromARGB(255, 227, 199, 234),
                          
    
                         ),
  
                              ),
                    
                    ),
                  
                   
        
                  ],
             
                ),
        
              ),
             // SizedBox(height: 70,)  ,
         Text('           Success',
                      style: TextStyle(fontSize:40, fontWeight: FontWeight.bold,color: Color.fromARGB(220, 75, 17, 100)),
                    ),
           SizedBox(height: 100,),
                     ImageIcon(
              AssetImage('assets/confirm.png'),
             color: Color.fromARGB(206, 90, 9, 128),
              size: 200,
              
         ),
         
                     
                    Positioned(
            bottom: 40,
            top: 100,
            right: 50,
            left: 10,
                    child:Container(
                  height: 90,
                  width: 500,
                  
                 //padding: EdgeInsets.fromLTRB(100, 20,100, 10),
                  
                  //alignment: Alignment.start,
                  
                //child: const Text('  Train with Gym\n\n  Date & Time',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 172, 26, 220)),),
                 
                )),
        
         
                  SizedBox(height:50),
                  Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginPage()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                              
                              ),
                            ),
                 
                ],
              )
            
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





