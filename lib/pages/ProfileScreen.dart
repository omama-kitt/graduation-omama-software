import 'package:flutter/material.dart';
import 'package:flutter_login_ui/model/Meal.dart';
import 'package:flutter_login_ui/model/Trainer1.dart';
import 'package:flutter_login_ui/pages/celander.dart';
import 'package:flutter_login_ui/pages/insight.dart';
import 'package:flutter_login_ui/pages/profiletrainer.dart';
import 'package:flutter_login_ui/pages/vedio%20dieat.dart';
import 'package:get/get.dart';

import 'Mealcard1.dart';
import 'mealdetailscreen.dart';
//import 'package:pagepersonal/model/Meal.dart';
//import 'package:pagepersonal/model/trainer1.dart';

//import '../model/ContactModel.dart';
//import '../model/trainer1.dart';
//import '../model/trainer1.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 36, 150),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Color.fromARGB(255, 227, 199, 234),
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            // primaryColor: Colors.red,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(color: Colors.yellow),
                )),
        child: new BottomNavigationBar(
          iconSize: 20,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 158, 36, 150),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.home),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.fitness_center),
                ),
                label: "Workout"),
            BottomNavigationBarItem(
                icon: Padding(
                  child: IconButton(
                    icon: Icon(
                      Icons.description,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => insight()));
                    },
                  ),
                  padding: const EdgeInsets.only(top: 8.0),
                ),
                label: "Insight"),
            BottomNavigationBarItem(
                icon: Padding(
                  child: IconButton(
                    icon: Icon(
                      Icons.soup_kitchen_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => vediodiat()));
                    },
                  ),
                  padding: const EdgeInsets.only(top: 8.0),
                ),
                label: "Diet"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),

                Container(
                  height: 130,
                  width: 391,
                  color: Color.fromARGB(255, 227, 199, 234),
                  padding: const EdgeInsets.only(
                      top: 40, left: 32, right: 16, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Hello, David",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          "Good Morning",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Color.fromARGB(100, 0, 0, 0),
                          ),
                        ),
                        trailing: ClipOval(
                            child: Image.asset(
                          "assets/user.jpg",
                          width: 50,
                          height: 50,
                        )),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  // width: 30,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  height: 260,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 199, 234),
                      border: Border.all(
                        color:
                            Color.fromARGB(255, 158, 36, 150), //color of border
                        width: 2, //width of border
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Start your personal training today",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          "3 day free trial",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 26,
                            color: Colors.black,
                          ),
                        ),
                        /*trailing: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/zz.jpg'),
                          ),
                        ),
                      ),*/
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CelanderPage()));
                        },
                        child: Text(
                          'Join now',
                          style: TextStyle(
                            fontSize: 26,
                            color: Color.fromARGB(255, 158, 36, 150),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 149, 111, 156),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  // width: 30,
                ),
                Container(
                  height: 200,
                  width: 391,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          left: 32,
                          right: 16,
                        ),
                        child: Text(
                          "Today",
                          style: const TextStyle(
                              color: Color.fromARGB(217, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shadowColor: Color.fromARGB(255, 158, 36, 150),
                          elevation: 10,
                          color: Color.fromARGB(255, 227, 199, 234),
                          child: Container(
                            height: 10,
                            child: Row(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Expanded(
                                      child: Icon(
                                        Icons.access_alarm_outlined,
                                        size: 50,
                                      ),
                                      flex: 2,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                              4), //apply padding to all four sides
                                          child: Text(
                                            "Upcoming session starting in",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                        OutlinedButton(
                                          onPressed: () {},
                                          child: Text(
                                            '09:20:30',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            shadowColor: Color.fromARGB(
                                                255, 158, 36, 150),
                                            backgroundColor: Color.fromARGB(
                                                255, 158, 36, 150),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                        ), //),
                                        //),
                                      ],
                                    ),
                                  ),
                                  flex: 8,
                                ),
                                SizedBox(width: 90),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                // ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  // width: 30,
                ),
                Container(
                  height: 250,
                  width: 391,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          left: 32,
                          right: 16,
                        ),
                        child: Text(
                          "Your plan for today",
                          style: const TextStyle(
                              color: Color.fromARGB(217, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 32,
                              ),
                              for (int i = 0; i < meals.length; i++)
                                _MealCard(
                                  meal: meals[i],
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  // width: 30,
                ),
                Container(
                  height: 250,
                  width: 391,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          left: 32,
                          right: 16,
                        ),
                        child: Text(
                          "Your plan for today",
                          style: const TextStyle(
                              color: Color.fromARGB(217, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 32,
                              ),
                              for (int i = 0; i < trainer1.length; i++)
                                _trainer1(
                                  trainer: trainer1[i],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => filter11()));
      },
      child: Container(
        color: Color.fromARGB(255, 158, 36, 150),
        margin: const EdgeInsets.only(
          right: 20,
          bottom: 10,
        ),
        child: Material(
          color: Color.fromARGB(255, 227, 199, 234),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    meal.imagePath,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Text(
                            meal.mealTime,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 1,
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "${meal.timeTaken}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // ignore: dead_code
  }
}

class _trainer1 extends StatelessWidget {
  final Trainer trainer;

  const _trainer1({Key? key, required this.trainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => profiletrainer()));
        },
        child: Container(
          color: Color.fromARGB(255, 158, 36, 150),
          margin: const EdgeInsets.only(
            right: 20,
            bottom: 10,
          ),
          child: Material(
            color: Color.fromARGB(255, 227, 199, 234),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      trainer.imagePath,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Text(
                              trainer.mealTime,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 158, 36, 150),
                              size: 15,
                            ),
                            Text(
                              trainer.percent,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "${trainer.timeTaken}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 35),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
