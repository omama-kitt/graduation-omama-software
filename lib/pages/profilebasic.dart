import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/insight.dart';
import 'package:flutter_login_ui/pages/subscriptionplan.dart';

class profilebasic extends StatelessWidget {
  String name,
      imge,
      workexperience,
      jobcompleted,
      clientserving,
      Work,
      speak,
      Qualification,
      price;
  profilebasic({
    Key? key,
    required this.name,
    required this.imge,
    required this.workexperience,
    required this.jobcompleted,
    required this.clientserving,
    required this.Work,
    required this.speak,
    required this.Qualification,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 149, 111, 156),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: true,
              floating: true,
              expandedHeight: 300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(0)),
                  child: Image.network(
                    '$imge',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: ListTile(
                      title: Text(
                        '$name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 90,
                      width: 190,
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: 95,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            //<-- SEE HERE
                            Icons.phone,
                            color: Colors.black,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 158, 36, 150),
                            shape: CircleBorder(), //<-- SEE HERE
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            //<-- SEE HERE
                            Icons.message,
                            color: Colors.black,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 158, 36, 150),

                            shape: CircleBorder(), //<-- SEE HERE
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            //<-- SEE HERE
                            Icons.video_call,
                            color: Colors.black,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 158, 36, 150),

                            shape: CircleBorder(), //<-- SEE HERE
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(children: [
                            Text(
                              "$workexperience",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "$jobcompleted",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 158, 36, 150),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 158, 36, 150),
                                  spreadRadius: 3),
                            ],
                          ),
                          child: Column(children: [
                            Text(
                              "$clientserving",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Work",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "$Work",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Speak",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "$speak",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Qualification",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "$Qualification",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => sub()));
                        },
                        child: Text(
                          'Book',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 158, 36, 150),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          '$price₪/Month',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 158, 36, 150),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
