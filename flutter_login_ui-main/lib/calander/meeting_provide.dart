import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/calander/meeting.dart';

class Meetingprovide extends ChangeNotifier{
  List<Meeting>meeting =[
    Meeting('Conference 1',DateTime.now(), DateTime.now().add(Duration(hours: 2)),const Color(0xFF0F8644), false),
   Meeting('Conference 2',DateTime.now(), DateTime.now().add(Duration(hours: 2)),const Color(0xFF0F8644), false),
   Meeting('Conference 3',DateTime.now(), DateTime.now().add(Duration(hours: 2)),const Color(0xFF0F8644), false),


  ];
}