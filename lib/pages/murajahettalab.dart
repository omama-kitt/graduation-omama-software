import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'filter1.dart';

class murajahettalab extends StatefulWidget {
  const murajahettalab({Key? key}) : super(key: key);

  @override
  _murajahettalab createState() => _murajahettalab();
}

class _murajahettalab extends State<murajahettalab> {
  Key _formKey = GlobalKey<FormState>();
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 36, 150),
        centerTitle: true,
        title: Text(
          "Request review",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            /* Navigator.of(context).push(MaterialPageRoute(
                //builder: (BuildContext context) => GYMPage()));*/
          },
        ),
      ), // AppBar
      // App body consists of single Column
      // Column consists of three children widgets

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 2))),
                  child: Text(
                    "Power Gym",
                    textAlign: TextAlign.center,
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Container(
                  height: 70,
                  width: 300,
                  child: Text(
                    "*To confirm your joining, please visit the gym and bring your personal identification",
                    textAlign: TextAlign.center,
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Icon(
                  Icons.subdirectory_arrow_right,
                  color: Colors.purple,
                ),
                GestureDetector(
                  child: Text(
                    "Go to the Gym page",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => filter1()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 158, 36, 150),
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
