 import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/GYMprofile.dart';

class takdeemtalab extends StatefulWidget {
  const takdeemtalab({Key? key}) : super(key: key);

  @override
  _takdeemtalab createState() => _takdeemtalab();
}

class _takdeemtalab extends State<takdeemtalab> {
  Key _formKey = GlobalKey<FormState>();
  String _selectedGender = 'male';
  int sum = 0;

  var items = [
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
       backgroundColor: Color.fromARGB(255, 162, 79, 194),
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
             Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => GYMPage()));
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
                  "Gender",
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
                  width: 150,
                  height: 30,
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'daily',
                      groupValue: _selectedGender,
                      onChanged: (val) {
                        setState(() {
                          _selectedGender = val!;
                          if (_selectedGender == 'daily') sum = sum + 20;
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
                      groupValue: _selectedGender,
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
                      groupValue: _selectedGender,
                      onChanged: (y) {
                        setState(() {
                          _selectedGender = y!;
                          if (_selectedGender == 'monthly') sum = sum + 500;
                        });
                      },
                    ),
                    title: const Text('Monthly'),
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
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          //fontSize: 20,
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
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
                   color: Color.fromARGB(255, 162, 79, 194),
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
                  activeColor: Color.fromARGB(255, 162, 79, 194),
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
                   color: Color.fromARGB(255, 162, 79, 194),
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
                  "  $sum₪",
                 
                  textAlign: TextAlign.start,
                  style: TextStyle(
                     color: Color.fromARGB(255, 162, 79, 194),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
            
           SizedBox(height: 30.0),
            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                  child: Text('Send the order', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>takdeemtalab()));
                                },
                              ),
                              
                            ),
                      SizedBox(height: 30.0),      
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
         color: Color.fromARGB(255, 162, 79, 194),
         //color: Color.fromARGB(255, 158, 36, 150),
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