import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/login_page.dart';

import 'package:flutter_login_ui/pages/notfiction.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'forgot_password_page.dart';
import 'forgot_password_verification_page.dart';
import 'registration_page.dart';
import 'dart:io';
import 'package:flutter_login_ui/pages/card.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    /*final pickedFile = await _picker.getImage(
      source: source,
    );*/
    setState(() {
      // _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//////bottom navigationbar

      appBar: AppBar(
        title: Text(
          "Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                1.0
              ],
                  colors: [
                Theme.of(context).primaryColor.withOpacity(0.2),
                Theme.of(context).accentColor.withOpacity(0.5),
              ])),
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor,
                      ],
                    ),
                  ),
                  child: Column(
                    //alignment: Alignment.bottomLeft,
//add user profile
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Stack(children: <Widget>[
                                  CircleAvatar(
                                    radius: 80.0,
                                    // backgroundImage: _imageFile == null
                                    //? AssetImage("")
                                    //: FileImage(File(_imageFile.path)),
                                  ),
                                  Positioned(
                                    bottom: 20.0,
                                    right: 20.0,
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: ((builder) => bottomSheet()),
                                        );
                                      },
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.teal,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                //Container
                                //<Widget>[]
                              ), //Stack
                            ), //Center
                          ),
                        ],
                      )
                    ],
                    /* child: Text("FlutterTutorial.Net",
                    style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                  ),*/
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Home page',
                  style: TextStyle(
                      fontSize: 17, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>SplashScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text(
                  'Personal page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.message,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text(
                  'Messages',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
//////bottom navication bar
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => card()));
              },
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => notefication()));
              },
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

    Widget imageProfile() {
      return Center(
        child: Stack(children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            //   backgroundImage: _imageFile == null
            //  ? AssetImage("")
            // : FileImage(File(_imageFile.path)),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 28.0,
              ),
            ),
          ),
        ]),
      );
    }
  }
}