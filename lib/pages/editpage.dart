

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profil.dart';

import '../common/theme_helper.dart';

class editpage extends StatefulWidget {
  const editpage({Key? key}) : super(key: key);
  @override
  _editpageState createState() => _editpageState();
}
class _editpageState extends State<editpage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _Location = TextEditingController();
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        title: Text("Edit Profile ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
        ),
       backgroundColor: Color.fromARGB(255, 162, 79, 194),
         elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => profile (email: '', name: '', Location: '',)));},
        ),
        centerTitle: true,
      ),
       body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
          // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width:5,
                              color: Color.fromARGB(255, 162, 79, 194)),
                                  color: Color.fromARGB(255, 227, 199, 234),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Color.fromARGB(255, 10, 6, 6).withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
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
                              width: 4,
                              color: Color.fromARGB(255, 162, 79, 194),
                            ),
                            color: Color.fromARGB(255, 125, 28, 154),
                          ),
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.white,
                          ),
                        )),
                        
                  ],
                ),
                
                
              ),
              SizedBox(
                height: 40,
                
              ),
              Container(
    child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Name','Enter your name'),
                  controller: _name,
                     ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                   SizedBox(
                height: 30,
                
              ),
                  Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration("Email address", "Enter your email"),
                             controller: _email,
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          
                        ),
              SizedBox(
                height: 30.0,
              ),
               Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(' Location', 'Enter your location'),
                              controller: _Location,
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          
                          
                        ),
             
              SizedBox(
                height: 50.0,
              ),
               Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          
                          child: ElevatedButton(
                            
                            
                            style: ThemeHelper().buttonStyle(),
                            
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                              child: Text(
                                "Save".toUpperCase(),
                                style: TextStyle(
                                  
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  // backgroundColor: Color.fromARGB(255, 162, 79, 194),
                                  color: Colors.white,
                                   letterSpacing: 2.2,
                                ),
                              ),
                              
                            ),
                             
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>profile(name: _name.text, email: _email.text, Location: _Location.text)));
            },
                          ),
               ),
          ],
        ),
      ),
            
          ),
          bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
       color: Color.fromARGB(255, 162, 79, 194),
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
        