import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/vedio%20dieat.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'barchartmodel.dart';

class insight extends StatelessWidget {
  insight({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
      year: "10",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
    BarChartModel(
      year: "20",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
    BarChartModel(
      year: "30",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
    BarChartModel(
      year: "40",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
    BarChartModel(
      year: "50",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
    BarChartModel(
      year: "60",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(
        Color.fromARGB(255, 158, 36, 150),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 226, 246),
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
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 390,
                    ),
                    Text("Insight",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    SizedBox(
                      height: 20,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1000,
                      radius: 100,
                      lineWidth: 20,
                      percent: 0.5,
                      progressColor: Color.fromARGB(255, 158, 36, 150),
                      backgroundColor: Color.fromARGB(255, 227, 199, 234),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Icon(
                        Icons.soup_kitchen_outlined,
                        size: 100,
                      ),
                    ),
                    Text("65%",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40))
                  ],
                ),
              ],
            ),
            Row(
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
                      "700\nTaken",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  width: 20,
                ),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "1300\nTarget",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
                SizedBox(
                  width: 20,
                ),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "600\nLeft",
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
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
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
                    Icon(
                      Icons.local_fire_department_outlined,
                      size: 40,
                    ),
                    Text(
                      "Calories",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "560",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 100,
                  width: 100,
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
                    Icon(
                      Icons.water,
                      size: 40,
                    ),
                    Text(
                      "Protien",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "150",
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
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
                    Icon(
                      Icons.person,
                      size: 40,
                    ),
                    Text(
                      "Fat",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "180",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 100,
                  width: 100,
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
                    Icon(
                      Icons.food_bank_rounded,
                      size: 40,
                    ),
                    Text(
                      "Carb",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "560",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 400,
                  width: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Expanded(
                    child: charts.BarChart(
                      series,
                      animate: true,
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
