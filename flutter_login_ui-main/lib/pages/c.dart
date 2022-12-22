import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_ui/calander/meeting.dart';
import 'package:flutter_login_ui/calander/meeting_date_source.dart';
import 'package:flutter_login_ui/calander/meeting_provide.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalanderPage extends StatefulWidget {
  const CalanderPage({Key?key}) :super(key: key);
  @override
  State<CalanderPage> createState() => _CalanderPageState();
}
class _CalanderPageState extends State<CalanderPage> {
/*  List <Meeting> _getDataSource(){
    final List<Meeting> meetings = <Meeting>[];
     final DateTime today =DateTime.now();
     final DateTime startTime =
     DateTime(today.year,today.month,today.day,9,0,0);
     final DateTime endTime =startTime.add( const Duration(hours: 2));
     meetings.add(Meeting('Conference 1', startTime, endTime,Color.fromRGBO(15, 134, 68, 1), false));
     meetings.add(Meeting('Conference 2', startTime.add (Duration(hours: 3)), endTime.add (Duration(hours: 3)),const Color(0xFF0F8644), false));
     meetings.add(Meeting('Conference 3', startTime.add( Duration(hours: 2)), endTime,const Color(0xFF0F8644), false));
     return meetings;
  }*/
  CalendarView calenderView = CalendarView.month;
  CalendarController  calandarControllr= CalendarController ();
  @override
  Widget build(BuildContext context) {
     final provider= Provider.of<Meetingprovide>(context);
    return Scaffold(
      appBar: AppBar(
        title:  const Text("calander"),
        actions: [
          IconButton(
            onPressed: () {
            
          },
          icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.edit)
            ),
          
        ],
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed:() {
                  setState(() {
                    calenderView = CalendarView.month;
                    calandarControllr.view=calenderView;
                  });
                }, 
                child: Text("Month view")),
                OutlinedButton(
                onPressed:() {
                  setState(() {
                    calenderView=CalendarView.week;
                     calandarControllr.view=calenderView;
                  });
                }, 
                child: Text("Week view")),
                OutlinedButton(
                onPressed:() {setState(() {
                  calenderView=CalendarView.day;
                   calandarControllr.view=calenderView;
                });}, 
                child: Text("Day view")),
                
            ],
          ),
        Expanded(
          child: SfCalendar(
        view: calenderView,
        initialSelectedDate: DateTime.now(),
        controller: calandarControllr,
        cellBorderColor: Colors.transparent,
        dataSource: MeetingDateSource(provider.meeting),
        selectionDecoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.red,width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          shape: BoxShape.rectangle,
        ),
        monthViewSettings: MonthViewSettings(
        appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
        showAgenda: true,
      ),
        blackoutDates: [
          DateTime.now().subtract(Duration(hours: 48)),
          DateTime.now().subtract(Duration(hours: 24)),
        ],
      ),
        )
        ]
      )
    );
  }
}