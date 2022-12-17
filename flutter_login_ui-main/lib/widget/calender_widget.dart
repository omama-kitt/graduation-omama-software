 
 /*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/model/event_data_source.dart';
import 'package:flutter_login_ui/pages/editingcalenderpage.dart';
import 'package:flutter_login_ui/pages/provider/event_provider.dart';
import 'package:flutter_login_ui/widget/task_widget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderWidget extends StatelessWidget{
  @override
 Widget build(BuildContext context){
  final events=Provider.of<EventProvider>(context).events;
  return SfCalendar(
    view: CalendarView.month,
    dataSource: EventDataSourse(events),
    initialSelectedDate: DateTime.now(),
    cellBorderColor: Colors.transparent,
    onLongPress: (details){
      final provider=Provider.of<EventProvider>(context,listen:true);
      provider.setDate(details.date!);
      showModalBottomSheet(
        context: context, 
        builder: (context)=> editingcalenderPage(),//تعديل
      );
    },
  );
 }
}*/