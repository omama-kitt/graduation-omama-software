// ignore_for_file: deprecated_member_use, unused_import
// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/layout/todo_layoutcontroller.dart';
import 'package:flutter_login_ui/pages/addexercise.dart';
import 'package:flutter_login_ui/pages/passsdateexercies.dart';

import 'package:flutter_login_ui/pages/provider/event_provider.dart';
import 'package:flutter_login_ui/pages/selecttimeanddate.dart';
import 'package:flutter_login_ui/shared/network/local/cashhelper.dart';
import 'package:flutter_login_ui/shared/network/local/notification.dart';
import 'package:flutter_login_ui/shared/styles/thems.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
//import 'package:settings_ui/pages/edit_profile.dart';
import 'package:http/http.dart' as http;
import 'pages/splash_screen.dart';

 SharedPreferences SharedPre;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
   //WidgetsFlutterBinding.ensureInitialized();
  SharedPre = await SharedPreferences.getInstance();

  // NOTE : catch notification  with parameter while app is closed and when on press notification
  

  await CashHelper.init();

// NOTE Notification
  //await NotificationApi.init();

  // NOTE check cash theme and set it to Get
 
  
  Get.put(TodoLayoutController());

   runApp(LoginUiApp());
}


class LoginUiApp extends StatelessWidget {
  TodoLayoutController todoController = Get.find<TodoLayoutController>();

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
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      initialRoute: SharedPre.getString("id")== null ? "LoginPage":"home",
      
      
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      
      
      home:SplashScreen(),
      
     
    );
    
  }
}


