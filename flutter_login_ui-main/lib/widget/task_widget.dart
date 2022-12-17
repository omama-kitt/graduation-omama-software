

// ignore_for_file: override_on_non_overriding_member
/*
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_ui/model/event_data_source.dart';
import 'package:flutter_login_ui/pages/provider/event_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TaskWidget extends StatefulWidget{
  @override
  _TaskWidgetState createState()=>_TaskWidgetState();
}
//class _TaskWidgetState extends State<TaskWidget>{
  @override
 // Widget build(BuildContext context)
  {
     final provider=Provider.of<EventProvider>(context);
     final SelectedEvents = provider.eventsOfSelecteDate;
     if(SelectedEvents.isEmpty){
      return Center(
        child: Text(
          'No Events Found',
          style: TextStyle(color:Colors.black,fontSize: 24),
        ),
      );
     }

   /*return SfCalendarTheme(
      data : SfCalendarthemeData(
        timeTextStyle:TextStyle(fontSize: 16,color: Colors.black);
      ),
      child:SfCalendar(
        view: CalendarView.timelineDay,
        dataSource:  EventDataSourse(provider.events),
        initialDisplayDate: provider.selectedDate,
        appointmentBuilder: appointmentBuilder,
        headerHeight: 0,
        todayHighlightColor: Colors.black,
        selectionDecoration: BoxDecoration(
          color: Colors.transparent,
        ),
        onTap: (details){
          if (details.appointments==null) return;
          final event=details.appointments!.first;
          Navigator.of(context).push( MaterialPageRoute(
            builder: (context) => EventViewingpage(event:event),
            ));
        },

      ),

     );
     */
     }
  Widget appointmentBuilder(
    BuildContext context, 
    CalendarAppointmentDetails details,
    ) {
      final event = details.appointments.first;
      return Container(
        width:details.bounds.width,
        height: details.bounds.height,
        decoration: BoxDecoration(
         color: event.backgroundColor.withOpcity(0.5),
         borderRadius: BorderRadius.circular(12) ),
        child:Center(
        child:Text(
           event.title,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(
            color: Colors.black,
           fontSize: 16,
           fontWeight: FontWeight.bold,
           ),
           ),
        ),
      );
  }
}

*/