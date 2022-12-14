import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/notfiction.dart';
import 'package:flutter_login_ui/pages/takdeemtalab.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:http/http.dart' as http;
import '../constant/link.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';

class filter1 extends StatefulWidget {
  const filter1({Key? key}) : super(key: key);

  @override
  _filter1 createState() => _filter1();
}

class _filter1 extends State<filter1> {
  Key _formKey = GlobalKey<FormState>();
  String citysel = "Jenin";
  TextEditingController Maxfees = new TextEditingController();
  TextEditingController MinRate = new TextEditingController();
  Crud _crud = Crud();
  filter1() async {
    var response = await _crud.postRequest(linkfilter1, {
      "citysel": citysel,
      "Maxfees": Maxfees.text,
      "MinRate": MinRate.text,

      // "padsevies": padsevies,
    });
    if (response['status'] == "success") {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => notefication()),
          (Route<dynamic> route) => false);
    } else {
      print("signUp Fail");
    }
  }

  var cities = [
    'Tulkarem',
    'Ramallah',
    'Nablus',
    'Jenin',
    'bethlahem',
    'Qalqilya',
    'Tubas'
  ];
  var gender = [
    'Male',
    'Female',
  ];
  String dropdownvalues = 'Male';
  String dropdownvalue = 'Tulkarem';
  String currentcitysel = "Tulkarem";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 36, 150),
        centerTitle: true,
        title: Text(
          "filtering",
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 30,
                ),
                Text(
                  "City",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                DropdownButton<String>(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: cities.map(
                    (String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newvaluesel) {
                    setState(() {
                      this.currentcitysel = newvaluesel!;
                      controller:
                      citysel;
                    });
                  },
                  // After selecting the desired option,it will
                  value: currentcitysel,
                ),
              ],
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Gender",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalues,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: gender.map((String gender) {
                    return DropdownMenuItem(
                      value: gender,
                      child: Text(
                        gender,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalues = newValue!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Maximum register fees\\month",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextField(
                    controller: Maxfees,
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 30,
                ),
                Text(
                  "Minimum Gym Rating",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  " \\5",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    'registration'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () async {
                  await filter1();
                },
              ),
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
