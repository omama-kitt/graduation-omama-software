import 'package:flutter_login_ui/Declarations/Global/GlobalDeclarations.dart';
import 'package:flutter_login_ui/Declarations/Images/ImageFiles.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:flutter_login_ui/GeneralWidgets/GWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';

Widget buildPageView(BuildContext context) => Container(
  
      height: MediaQuery.of(context).size.height / 1.55,
      child: Container(
        child: PageView.builder(
          controller: myPageViewController,
          itemCount: 4,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return buildTopViews(context, index);
          },
          onPageChanged: (value) {
            try {
              currentPage.value = value.toDouble();
            } catch (e) {}
          },
        ),
      ),
    );

Widget buildTopViews(BuildContext context, int index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.00),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildImage(index),
            heightSpacer(25.00),
            buildTitle(index),
            heightSpacer(10.00),
            buildSubTitle(context, index),
          ],
        ),
      ),
    );

Widget buildImage(int index) => Center(
  
      child: Container(
        width: double.infinity,
        height: 200,
        child: Image.asset(
          getStartedPageImages[index],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildTitle(int index) => Flexible(
      child: Text(
        heading[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(255, 170, 0, 255),
          fontSize: 25.00,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

Widget buildSubTitle(BuildContext context, int index) => Flexible(
      child: Container(
        width: (MediaQuery.of(context).size.width) - 100,
        child: Text(
          subHeading[index],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 140, 0, 209),
            fontSize:25.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
