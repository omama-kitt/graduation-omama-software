import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:flutter_login_ui/GeneralWidgets/GWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import '5GetStartedBtn.dart';
import '3DotIndicator.dart';
import '2PageView.dart';

Widget buildBody(BuildContext context) => Container(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: (MediaQuery.of(context).size.height)),
          child: ValueListenableBuilder<double>(
            valueListenable: currentPage,
            builder: (context, value, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildPageView(context),
                  heightSpacer(60.00),
                  buildDotIndicator(),
                  heightSpacer(100.00),
                  buildGetStartedButton(context),
                ],
              );
            },
          ),
        ),
      ),
    );
