import 'package:flutter/material.dart';

class insight extends StatefulWidget {
  insight({Key? key}) : super(key: key);

  @override
  _insight createState() => _insight();
}

class _insight extends State<insight> {
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 201, 226),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 10,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    /* Navigator.of(context).push(MaterialPageRoute(
                //builder: (BuildContext context) => GYMPage()));*/
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Subscription today",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 170,
                  height: 20,
                ),
                Text(
                  "Fitness",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(children: [
                            Text(
                              "Monthly\n999₪",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 80,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Quarterly\n5999₪",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(children: [
                            Text(
                              "Annual\n11999₪",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 140,
                ),
                const Text(
                  "24 Session",
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 120,
                ),
                const Text(
                  "Valid for 30 day",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Includes",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "# First three days free trail then subscription.",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                const Text(
                  "# Any time cancel ,no auto renewable.",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                const Text(
                  "# Free call and chat.",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 10,
                  height: 40,
                ),
                const Text(
                  "Requirement",
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 10,
                  height: 100,
                ),
                Container(
                  width: 170,
                  height: 90,
                  child: ListTile(
                    leading: Icon(Icons.fitness_center_sharp),
                    title: Text("Equipment"),
                    subtitle: Text("Mat,chair\nskiiping rope"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 158, 36, 150),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 158, 36, 150),
                          spreadRadius: 3),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 180,
                  height: 90,
                  child: ListTile(
                    leading: Icon(Icons.space_dashboard_rounded),
                    title: Text("Space"),
                    subtitle: Text("3'*6' Open\nSpace"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 158, 36, 150),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 158, 36, 150),
                          spreadRadius: 3),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 130,
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 158, 36, 150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}