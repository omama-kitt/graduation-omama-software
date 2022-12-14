import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/card.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/notfiction.dart';

class takdeemtalab extends StatefulWidget {
  const takdeemtalab({Key? key}) : super(key: key);

  @override
  _takdeemtalab createState() => _takdeemtalab();
}

class _takdeemtalab extends State<takdeemtalab> {
  Key _formKey = GlobalKey<FormState>();
  Crud _crud = Crud();
  TextEditingController username = new TextEditingController();
  TextEditingController phonenum = new TextEditingController();
  String citysel = "Jenin";

  String period = "Daily";
  takdeemtalab() async {
    var response = await _crud.postRequest(linktakdeemtalab, {
      "username": username.text,
      "phonenum": phonenum.text,

      "citysel": citysel,
      "period": period,
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

  String selectedGender = 'male';
  int sum = 0;
  static const values = <String>['Daily', 'Weekly', 'Monthly'];
  String selectedValue = values.first;
  final selectedColor = Color.fromARGB(255, 158, 36, 150);
  final unselectedColor = Colors.black;
  String currentcitysel = "Tulkarem";
  var cities = [
    'Tulkarem',
    'Ramallah',
    'Nablus',
    'Jenin',
    'bethlahem',
    'Qalqilya',
    'Tubas'
  ];
  bool value = false;
  bool s = false;
  String dropdownvalue = 'Tulkarem';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 36, 150),
        centerTitle: true,
        title: Text(
          "Join request",
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => card()));
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
                Text(
                  "Name of the applicant",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    controller: username,
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
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 30,
                ),
                Text(
                  "Phone number",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextField(
                        controller: phonenum,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
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
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Period:",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 170,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildRadios(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            /*
            Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 30,
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'daily',
                      groupValue: selectedGender,
                      onChanged: (val) {
                        setState(() {
                          _selectedGender = val!;

                          if (selectedGender == 'daily') sum = sum + 20;
                        });
                      },
                    ),
                    title: const Text('Daily'),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 30,
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'weekly',
                      groupValue: selectedGender,
                      onChanged: (v) {
                        setState(() {
                          _selectedGender = v!;
                          if (_selectedGender == 'weekly') (sum = sum + 100);
                        });
                      },
                    ),
                    title: const Text(
                      'Weekly',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 180,
                  height: 30,
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'monthly',
                      groupValue: selectedGender,
                      onChanged: (y) {
                        setState(() {
                          selectedGender = y!;
                          if (_selectedGender == 'monthly') sum = sum + 500;
                        });
                      },
                    ),
                    title: const Text('Monthly'),
                  ),
                ),
              ],
            ),*/
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
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
              ],
            ),
            Row(
              children: [
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
            ), // change button value to selected value

            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 300,
                  height: 30,
                  child: ListTile(
                    title: const Text(
                      'Paid Services',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('* Choose paid services'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                  height: 30,
                ), //SizedBox
                //Text
                //SizedBox
                /* Checkbox Widget */
                Checkbox(
                  value: this.value,
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                      if (value) {
                        sum = sum + 70;
                      }
                    });
                  },
                ),

                Text(
                  'meals ',
                  style: TextStyle(fontSize: 17.0),
                ),
                SizedBox(
                  width: 137,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 158, 36, 150),
                  ),
                  alignment: Alignment.center,
                  child: const Text('70₪'),
                ) //Checkbox
              ], //<Widget>[]
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                  height: 30,
                ), //SizedBox
                //Text
                //SizedBox
                /* Checkbox Widget */
                Checkbox(
                  activeColor: Colors.purple,
                  checkColor: Colors.white,
                  value: this.s,
                  onChanged: (bool? s) {
                    setState(() {
                      this.s = s!;
                      if (s) {
                        sum = sum + 800;
                        print(sum);
                      }
                    });
                  },
                ),

                Text(
                  'personal trainer',
                  style: TextStyle(fontSize: 17.0),
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 158, 36, 150),
                  ),
                  alignment: Alignment.center,
                  child: const Text('800₪'),
                ) //Checkbox
              ], //<Widget>[]
            ),
            SizedBox(
              width: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "total money requird to join",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "$sum₪",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              //   decoration: ThemeHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                //  style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    'Send the order'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () async {
                  sum = 0;
                  await takdeemtalab();
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

  Widget buildRadios() => Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: unselectedColor,
        ),
        child: Column(
          children: values.map(
            (value) {
              final selected = this.selectedValue == value;
              final color = selected ? selectedColor : unselectedColor;

              return RadioListTile<String>(
                value: value,
                groupValue: selectedValue,
                title: Text(
                  value,
                  style: TextStyle(color: color),
                ),
                activeColor: selectedColor,
                /*onChanged: (vlue) => setState(() => this.selectedValue = vlue!, controller:period),*/
                onChanged: (String? vlue) {
                  setState(() {
                    dropdownvalue = vlue!;
                    controller:
                    period;
                  });
                },
              );
            },
          ).toList(),
        ),
      );
}
