import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/profil.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'forgot_password_page.dart';
import 'forgot_password_verification_page.dart';
import 'registration_page.dart';
import 'dart:io';
import 'package:flutter_login_ui/pages/card.dart';
import 'package:flutter_login_ui/pages/filter1.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  _card createState() => _card();
}

class _card extends State<card> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;
  List<String> image = [
    'https://complete-physio.co.uk/wp-content/uploads/2020/06/7-tips-for-a-successful-return-to-the-gym-after-lockdown-1.jpg',
    'https://cdn.vox-cdn.com/thumbor/H18InN9Wt8qn-vK_4x-PlRFHMMY=/0x590:8238x4903/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/21928053/GettyImages_1132006407.jpg',
    'https://gymplus.ie/wp-content/uploads/2018/08/GymPlus_Ropes.jpg',
    'https://complete-physio.co.uk/wp-content/uploads/2020/06/7-tips-for-a-successful-return-to-the-gym-after-lockdown-1.jpg',
    'https://www.graphis.com/media/LEGACY-FILES/cfe/63_100bestinphotography2013/10807_669add7f322962048a233d56ae0126fc.jpg',
    'https://tse2.mm.bing.net/th?id=OIP.s7-vUjY7ohkgVBD_YBiMwAHaE8&pid=Api&P=0',
    'https://images2.alphacoders.com/692/thumbbig-692040.jpg'
  ];
  List<String> name = [
    '     Paris street ',
    '  Rakab Street',
    '  Sufyan Street',
    '  Al Basateen Street',
    '  annjmah street ',
    '  Jaljulia Street',
    '  Hugo Chavez Street',
  ];
  List<String> title = [
    'Tulkarem',
    'Ramallah',
    'Nablus',
    'Jenin',
    'bethlahem',
    'Qalqilya',
    'Tubas',
  ];
  List<String> gymname = [
    'LADY GYM',
    'Platinum GYM',
    'RIO FITTNES',
    'SMBATIC GYM',
    'ALMAHAD GYM',
    'MAX GYM',
    'DREAM GYM',
  ];

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
                //  Photo(ImageSource.camera);
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

  Widget card(String image, String title, String name, String gymname,
      BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8.0,
      margin: EdgeInsets.all(4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Image.network(
            image,
            height: MediaQuery.of(context).size.width * (3 / 4),
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  gymname,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.purple,
                  ),
                ),
                for (int i = 0; i < 5; i++) Icon(Icons.star),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          enableFeedback: false,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => filter1()));
          },
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
        /* Icon(
          Icons.filter_alt_outlined,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => filter1()));
          },
        ),*/
      ), //AppBar
      endDrawer: Drawer(
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
                          builder: (context) =>
                              SplashScreen()));
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
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (BuildContext context, int index) {
          return card(
              image[index], title[index], name[index], gymname[index], context);
        },
      ),
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => profile(city: '', email: '', username: '',)));
              },
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