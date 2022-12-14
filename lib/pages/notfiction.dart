import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/murajahettalab.dart';

//import 'murjahettalab.dart';

class notefication extends StatefulWidget {
  const notefication({Key? key}) : super(key: key);

  @override
  _notefication createState() => _notefication();
}

class _notefication extends State<notefication> {
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 36, 150),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.purple,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://tse1.mm.bing.net/th?id=OIP.Mimjn5PGZo50szD7_ApU8gHaLJ&pid=Api&P=0"),
                ),
                title: const Text(
                  'Your request has already been accepted from power Gym',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  textScaleFactor: 1.5,
                ),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => murajahettalab()));
                  });
                },
              ),
            ),
          ),
          Text(
            txt,
            textScaleFactor: 2,
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 158, 36, 150),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}