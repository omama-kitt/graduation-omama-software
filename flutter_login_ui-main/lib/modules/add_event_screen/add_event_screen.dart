// ignore_for_file: unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/layout/todo_layout.dart';
import 'package:flutter_login_ui/layout/todo_layoutcontroller.dart';
import 'package:flutter_login_ui/model/event.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/shared/componets/componets.dart';
import 'package:flutter_login_ui/shared/network/local/notification.dart';
import 'package:flutter_login_ui/shared/styles/styles.dart';
import 'package:flutter_login_ui/shared/styles/thems.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class AddEventScreen extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController starttimecontroller = TextEditingController();
  TextEditingController endtimecontroller = TextEditingController();
 //TextEditingController remindcontroller = TextEditingController();
  List<int> remindList = [5, 10, 15, 20];

  TodoLayoutController todocontroller = Get.find<TodoLayoutController>();
  Crud _crud = Crud();
 //late final TextEditingController mycontroller;
 
 addevent()async{

    var response = await _crud.postRequest(linkaedaddevent, {
                "titlecontroller" :titlecontroller.text,
                "datecontroller" :datecontroller.text,
                "starttimecontroller" :starttimecontroller.text,
                "endtimecontroller" :endtimecontroller.text,
            // "remindcontroller" : remindcontroller.text,

    });
    
  
      if (_formkey.currentState!.validate()) {
              //NOTE  am pm to 24 hours
              DateTime date2start = DateFormat("hh:mm a")
                  .parse(starttimecontroller.text.toString());
              DateTime date2end = DateFormat("hh:mm a")
                  .parse(endtimecontroller.text.toString());
              String starttime =
                  DateFormat("HH:mm").format(date2start).toString();
              String endtime = DateFormat("HH:mm").format(date2end).toString();

              //NOTE compare two time
              var format = DateFormat("HH:mm");
              var start = format.parse(starttime);
              var end = format.parse(endtime);
              if (start.isBefore(end)) {
                await todocontroller
                    .inserteventByModel(
                        model: new Event(
                            title: titlecontroller.text,
                            date: datecontroller.text,
                            starttime: starttime,
                            endtime: endtime,
                            status: "new",
                            remind: int.parse(
                                todocontroller.selectedRemindItem.value)))
                    // .insertTask(
                    //     title: titlecontroller.text,
                    //     date: datecontroller.text,
                    //     time: timecontroller.text)
                    .then((eventId) {
                  print("eventId " + eventId.toString());
                  //NOTE set Notification for event
                  NotificationApi.scheduleNotification(
                      DateTime.parse(
                              datecontroller.text + " " + starttime.toString())
                          .subtract(Duration(
                              minutes: int.parse(
                                  todocontroller.selectedRemindItem.value))),
                      eventId,
                      
                      titlecontroller.text,
                      
                      starttimecontroller.text,
                      
                       );
                  // NotificationApi.createNotification(
                  //     titlecontroller.text,
                  //     DateTime.parse(
                  //             datecontroller.text + " " + starttime.toString())
                  //         .subtract(Duration(
                  //             minutes: int.parse(
                  //                 todocontroller.selectedRemindItem.value))),
                  //     starttimecontroller.text);
                  titlecontroller.text = "";
                  datecontroller.text = "";
                  starttimecontroller.text = "";
                  Get.back();
                });
              } else {
                Get.snackbar('an error occured',
                   '"start Time"  Must be less then "end time"',
                    snackPosition: SnackPosition.BOTTOM,
                   backgroundColor: defaultLightColor,
                    colorText: Colors.white);
              }
            }
          

     
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: _appbar(),
      body: _buildFromAddTask(context),
    );
  }

  _buildFromAddTask(BuildContext context) => SingleChildScrollView(
    
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Event',
                style: headerStyle,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      defaultTextFormField(
                          controller: titlecontroller,
                          inputtype: TextInputType.text,
                          ontap: () {},
                          onvalidate: (value) {
                            if (value!.isEmpty) {
                              return "title must not be empty";
                            }
                          },
                          text: "Event Name"),
                      SizedBox(
                        height: 25,
                      ),
                      defaultTextFormField(
                          readonly: true,
                          controller: datecontroller,
                          inputtype: TextInputType.datetime,
                          prefixIcon: Icon(Icons.date_range),
                          ontap: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.parse('2010-01-01'),
                                    lastDate: DateTime.parse('2030-01-01'))
                                .then((value) {
                              //Todo: handle date to string
                              print(DateFormat.yMMMd().format(value!));
                              var tdate = value.toString().split(' ');
                              datecontroller.text = tdate[0];
                            });
                          },
                          onvalidate: (value) {
                            if (value!.isEmpty) {
                              return "date must not be empty";
                            }
                          },
                          text: "date"),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: defaultTextFormField(
                                readonly: true,
                                controller: starttimecontroller,
                                inputtype: TextInputType.number,
                                prefixIcon: Icon(Icons.watch_later_outlined),
                                ontap: () {
                                  showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now())
                                      .then((value) {
                                    // print(value!.format(context).toString());
                                    starttimecontroller.text =
                                        value!.format(context).toString();
                                    print(starttimecontroller.text);
                                    //! 1970-01-01 time selected:00.000
                                    // print(DateFormat("hh:mm a")
                                    //     .parse(timecontroller.text.toString()));
                                  });
                                },
                                onvalidate: (value) {
                                  if (value!.isEmpty) {
                                    return "time must not be empty";
                                  }
                                },
                                text: "From"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: defaultTextFormField(
                                readonly: true,
                                controller: endtimecontroller,
                                inputtype: TextInputType.number,
                                prefixIcon: Icon(Icons.watch_later_outlined),
                                ontap: () {
                                  showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now())
                                      .then((value) {
                                    endtimecontroller.text =
                                        value!.format(context).toString();
                                    //! 1970-01-01 time selected:00.000
                                    // print(DateFormat("hh:mm a")
                                    //     .parse(timecontroller.text.toString()));
                                  });
                                },
                                onvalidate: (value) {
                                  if (value!.isEmpty) {
                                    return "time must not be empty";
                                  }
                                },
                                text: "To"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      //NOTE Remind
                     /* Container(
                        width: double.infinity,
                        height: 60,
                        child: DropdownButtonFormField<String>(
                          value: todocontroller.selectedRemindItem.value,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Color.fromARGB(218, 135, 70, 160)),
                            ),
                          ),
                          items: remindList
                              .map((e) => DropdownMenuItem<String>(
                                    value: e.toString(),
                                    child: Text(e.toString() + " min early"),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            todocontroller.onchangeremindlist(value);
                            print(todocontroller.selectedRemindItem.value);
                          },
                        ),
                      ),*/
                     /* Obx(
                       () => defaultTextFormField(
                          readonly: true,
                           hinttext:
                               "${todocontroller.selectedRemindItem.value} minutes early",
                          controller: remindcontroller,
                           inputtype: TextInputType.name,
                          suffixIcon: DropdownButton(
                            underline: Container(
                               height: 0,
                            ),
                             icon: Icon(Icons.keyboard_arrow_down,
                               color: Colors.grey),
                             iconSize: 25,
                             elevation: 4,
                             items: remindList
                                 .map<DropdownMenuItem<String>>((int value) {
                               return DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Text(value.toString()));
                             }).toList(),
                             onChanged: (value) {
                               todocontroller.onchangeremindlist(value);
                               print(todocontroller.selectedRemindItem.value);
                             },
                            //! to display number beside the arrow
                           value: todocontroller.selectedRemindItem.value,
                          ),
                        ),
                       ),*/
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                          
                          child: ElevatedButton(
                            
                            style: ThemeHelper().buttonStyle(),
                            
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                              child: Text(
                                "Save".toUpperCase(),
                                style: TextStyle(
                                  
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                  color: Colors.white,
                                   letterSpacing: 2.2,
                                ),
                              ),
                            ),
                           
                           onPressed: () async{
                                  await addevent(); 
                                    },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
            
          ),
          
        ),
        
      );

  _appbar() {
    
    return AppBar(
      
      backgroundColor: Color.fromARGB(255, 162, 79, 194),
      leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          }),
          
    );
    
  }
}
