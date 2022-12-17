import 'package:flutter_login_ui/Declarations/Global/GlobalDeclarations.dart';
import 'package:flutter_login_ui/Declarations/GetStartedPage.dart';
import 'package:flutter/material.dart';

Widget buildNextbackBtn(double currentPage) => Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.00),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            currentPage != 0
                ? GestureDetector(
                    onTap: () {
                      myPageViewController.previousPage(
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                      Icons.navigate_before,
                      color:  Color.fromARGB(255, 170, 0, 255),
                    ),
                          Text(
                            "Back",
                            style: TextStyle(
                             color: Color.fromARGB(255, 170, 0, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            GestureDetector(
              onTap: () {
                myPageViewController.nextPage(
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                       color:  Color.fromARGB(255, 170, 0, 255),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color:  Color.fromARGB(255, 170, 0, 255),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
