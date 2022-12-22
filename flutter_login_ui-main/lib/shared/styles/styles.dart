import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/shared/styles/thems.dart';
import 'package:get/get.dart';


TextStyle get subHeaderStyle {
  return TextStyle(
    color: Get.isDarkMode ? Color.fromARGB(222, 179, 0, 255) : Color.fromARGB(222, 179, 0, 255),
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

TextStyle get headerStyle {
  return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      height: 2,
      color: Get.isDarkMode ? Color.fromARGB(222, 179, 0, 255) : Color.fromARGB(222, 179, 0, 255),);
}

TextStyle get eventheaderStyle {
  return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Get.isDarkMode ? Color.fromARGB(222, 179, 0, 255) : defaultLightColor);
}

TextStyle get titleofTaskitem {
  return TextStyle(
      fontWeight: FontWeight.w900, fontSize: 35, color: Colors.white);
}

LinearGradient get orangeGradient {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(222, 121, 45, 154),
      Color.fromARGB(222, 126, 68, 151),
      Color.fromARGB(222, 127, 77, 149),
    ],
  );
}
