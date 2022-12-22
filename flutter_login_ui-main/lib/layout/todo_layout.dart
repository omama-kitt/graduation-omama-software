
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/layout/todo_layoutcontroller.dart';
import 'package:flutter_login_ui/modules/clear_data/clear_data.dart';
import 'package:flutter_login_ui/modules/search_events/search_events.dart';
import 'package:flutter_login_ui/shared/componets/componets.dart';
import 'package:flutter_login_ui/shared/styles/styles.dart';
import 'package:flutter_login_ui/shared/styles/thems.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';


import '../modules/add_event_screen/add_event_screen.dart';

class TodoLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
      init: Get.find<TodoLayoutController>(),
      builder: (todocontroller) => Scaffold(
      //  drawer: _drawer(context),
        key: _scaffoldkey,
        // NOTE App Bar
        appBar: _appbar(todocontroller, context),
        backgroundColor: Color.fromARGB(255, 227, 199, 234),
        //NOTE Body
        body: Obx(
          () => todocontroller.isloading.value
              ? Center(child: CircularProgressIndicator())
              : Container(
                  margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateFormat.yMMMMd().format(DateTime.parse(
                                    todocontroller.currentSelectedDate)),
                                style: subHeaderStyle,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                todocontroller.currentSelectedDate !=
                                        DateTime.now()
                                            .toString()
                                            .split(' ')
                                            .first
                                    ? DateFormat.E().format(DateTime.parse(
                                        todocontroller.currentSelectedDate))
                                    : "Today",
                                style: headerStyle,
                              ),
                            ],
                          ),
                          defaultButton(
                              text: "Add Event",
                              
                              width: 130,
                              onpress: () {
                                Get.to(() => AddEventScreen());
                              },
                              gradient: orangeGradient,
                              radius: 15),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //NOTE timeline datepicker -------------
                      Container(
                        child: DatePicker(
                          DateTime.now(),
                          height: 80,
                          width: 60,
                          initialSelectedDate: DateTime.now(),
                          selectionColor: defaultLightColor,
                          selectedTextColor: Color.fromARGB(222, 0, 0, 0),
                          dayTextStyle: TextStyle(
                            color: Get.isDarkMode ? Color.fromARGB(222, 255, 255, 255) :  Color.fromARGB(222, 99, 30, 129),
                          ),
                          dateTextStyle: TextStyle(
                              color: Color.fromARGB(222, 99, 30, 129),
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                          monthTextStyle: TextStyle(
                            color: Get.isDarkMode ? Color.fromARGB(222, 255, 255, 255): Color.fromARGB(222, 99, 30, 129),
                          ),
                          onDateChange: (value) {
                            var selecteddate = value.toString().split(' ');
                            print(selecteddate[0]);
                            todocontroller.onchangeselectedate(selecteddate[0]);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // NOTE list Of Tasks
                      Expanded(
                          child: todocontroller
                              .screens[todocontroller.currentIndex]),
                    ],
                  ),
                ),
        ),

        //NOTE bottom navigation
       /* bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: todocontroller.currentIndex,
          onTap: (index) {
            todocontroller.onchangeIndex(index);
          },
          items: todocontroller.bottomItems,
        ),*/
      ),
    );
  }

  _appbar(TodoLayoutController todocontroller, BuildContext context) => AppBar(
    backgroundColor: Color.fromARGB(255, 162, 79, 194),
        title: Text(
          todocontroller.appbar_title[todocontroller.currentIndex],
          
          style: Theme.of(context).textTheme.headline5,
          
          
        ),
        actions: [
          IconButton(
            onPressed: () {
              //TODO: search screen
              Get.to(() => SearchEvents());
              //NotificationApi.shownotification();
            },
            icon: Icon(
              Get.isDarkMode ? Icons.search : Icons.search,
              size: 30,
              color: Color.fromARGB(255, 255, 255, 255)
            ),
          ),
          
          SizedBox(
            width: 20,
          )
        ],
      );

}
