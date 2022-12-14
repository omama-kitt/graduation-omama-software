// ignore_for_file: deprecated_member_use

import 'package:flutter_login_ui/Declarations/Global/GlobalDeclarations.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import '4NxtBackBtn.dart';

Widget buildGetStartedButton(BuildContext context) => currentPage.value == 3
    ? Container(
        width: (MediaQuery.of(context).size.width) - 25,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color.fromARGB(255, 104, 38, 137),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.00),
            ),
          ),
          child: Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));},
        ),
      )
    : buildNextbackBtn(currentPage.value.toDouble());
