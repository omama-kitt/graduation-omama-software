import 'package:flutter/material.dart';
import 'package:flutter_login_ui/layout/todo_layoutcontroller.dart';
import 'package:flutter_login_ui/shared/componets/componets.dart';
import 'package:flutter_login_ui/shared/styles/thems.dart';
import 'package:get/get.dart';

class ClearData extends StatefulWidget {
  @override
  State<ClearData> createState() => _ClearDataState();
}

class _ClearDataState extends State<ClearData> {
  var datecontroller = TextEditingController();
  var todocontroller = Get.find<TodoLayoutController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clear Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.warning_amber,
                  color: Color.fromARGB(255, 136, 30, 198),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "delete all events befor this date",
                  style: TextStyle(color: Color.fromRGBO(141, 18, 218, 0.877)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                    //print(DateFormat.yMMMd().format(value!));
                    datecontroller.text = value.toString().split(' ').first;
                  });
                },
                onvalidate: (value) {
                  if (value!.isEmpty) {
                    return "date must not be empty";
                  }
                },
                text: "date"),
            SizedBox(
              height: 10,
            ),
            defaultButton(
                text: "Delete",
                //background: Colors.red,
                onpress: () async {
                  if (datecontroller.text.isEmpty ||
                      datecontroller.text.toString() == 'null') {
                    Get.snackbar('an error occured', 'Date must be not empty',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: defaultLightColor,
                        colorText: Colors.white);
                  } else {
                    await todocontroller
                        .deleteAllEventBefor(
                            DateTime.parse(datecontroller.text.toString()))
                        .then((value) {
                      Get.back();
                      Get.snackbar('Events Deleted Successfully',
                          'All events befor ${datecontroller.text} are Deleted',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Color.fromARGB(255, 139, 14, 202),
                          colorText: Colors.white);
                    });
                  }
                }),
          ],
        ),
      ),
    );
  }
}
