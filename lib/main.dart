// ignore_for_file: deprecated_member_use, unused_import
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_login_ui/pages/Edit.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:settings_ui/pages/edit_profile.dart';
import 'package:http/http.dart' as http;
import 'pages/filter1.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  Color _primaryColor = HexColor('#6e2a7f');
  Color _accentColor = HexColor('#b043cb');

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: filter1(),
    );
  }
}
