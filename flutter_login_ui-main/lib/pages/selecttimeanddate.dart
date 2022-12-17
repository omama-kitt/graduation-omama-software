 


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class CalenderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return SfCalendar(
      backgroundColor:Color.fromARGB(255, 255, 255, 255),
      
      view: CalendarView.month,
      initialSelectedDate: DateTime.now() ,
      cellBorderColor: Colors.transparent,
     
    );
  }
}