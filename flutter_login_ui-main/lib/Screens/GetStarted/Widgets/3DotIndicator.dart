import 'package:flutter_login_ui/Declarations/Global/GlobalDeclarations.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:flutter/material.dart';

Widget buildDotIndicator() => SmoothPageIndicator(
      controller: myPageViewController,
      count: 4,
      effect: WormEffect(
          activeDotColor: Color.fromARGB(255, 165, 0, 248),
          dotWidth: 15.0,
          dotHeight: 15,
          dotColor: Color.fromARGB(255, 195, 112, 236)),
    );
