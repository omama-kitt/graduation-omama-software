import 'package:flutter/animation.dart';

class Meeting{
  Meeting(this.eventname,this.from,this.To,this.background,this.isAllDay);

  String  eventname;
  DateTime from;
  DateTime To;
  Color background;
  bool isAllDay;
}