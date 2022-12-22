import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

const defaultLightColor = Color.fromARGB(222, 121, 13, 168);
const defaultDarkColor = Color.fromARGB(255, 172, 96, 226);
const defaultWidgetColor = Color.fromARGB(222, 108, 14, 148);
const darkmodeColor = Color.fromARGB(233, 169, 51, 216);

class Themes {
  static ThemeData darkThem = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkmodeColor,
    primaryColor: defaultDarkColor,
    //primarySwatch: defaultLightColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Color.fromARGB(206, 193, 65, 253)),
        backgroundColor: darkmodeColor,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Color.fromARGB(206, 193, 65, 253)),
        backwardsCompatibility: false,
        titleTextStyle: TextStyle(
            color: Color.fromARGB(206, 193, 65, 253), fontWeight: FontWeight.bold, fontSize: 25),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: darkmodeColor,
          statusBarIconBrightness: Brightness.light,
        )),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: defaultDarkColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkmodeColor.withOpacity(0.8),
        selectedItemColor: defaultDarkColor,
        unselectedItemColor: Color.fromARGB(206, 193, 65, 253),),

    //NOTE : set default bodytext1
    textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Color.fromARGB(206, 193, 65, 253), fontSize: 18, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(color: Color.fromARGB(206, 193, 65, 253), fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        color: Color.fromARGB(206, 193, 65, 253),
      ),
      headline5:
          TextStyle(color: defaultDarkColor, fontWeight: FontWeight.bold),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: defaultLightColor,
   // primarySwatch: defaultLightColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Color.fromARGB(206, 193, 65, 253),),
        backgroundColor: Color.fromARGB(206, 193, 65, 253),
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Color.fromARGB(206, 193, 65, 253),),
        backwardsCompatibility: false,
        titleTextStyle: TextStyle(
            color: Color.fromARGB(206, 193, 65, 253), fontWeight: FontWeight.bold, fontSize: 25),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(206, 193, 65, 253),
          statusBarIconBrightness: Brightness.dark,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 10),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: defaultLightColor),

    //NOTE : set default bodytext1
    textTheme: TextTheme(
        bodyText1: TextStyle(
            color: Color.fromARGB(206, 193, 65, 253), fontSize: 18, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
          color: Color.fromARGB(206, 193, 65, 253),
        ),
        subtitle1: TextStyle(color: Color.fromARGB(206, 193, 65, 253), fontWeight: FontWeight.bold),
        headline5:
            TextStyle(color: defaultLightColor, fontWeight: FontWeight.bold)),
  );
}
