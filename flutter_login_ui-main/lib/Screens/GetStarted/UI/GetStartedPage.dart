import 'package:flutter_login_ui/Screens/GetStarted/Widgets/1Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screens/GetStarted/Widgets/1Body.dart';

class GetStartedPage extends StatefulWidget {
  GetStartedPage({Key ?key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  late String name;
  late bool checkValue;

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      //backgroundColor: Colors.white,
      body: buildBody(context),
    );
  }
}
