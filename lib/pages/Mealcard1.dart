import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/model/Meal.dart';
import 'Edit.dart';
import 'profile_page.dart';

class Mealcrd extends StatelessWidget {
  final List<Map<String, String>> popularFood = [
    {
      'name': 'Tandoori Chicken',
      'price': '96.00',
      'rate': '4.9',
      'clients': '200',
      'image': 'images/plate-001.png'
    },
    {
      'name': 'Salmon',
      'price': '40.50',
      'rate': '4.5',
      'clients': '168',
      'image': 'images/plate-002.png'
    },
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'images/plate-007.png'
    },
    {
      'name': 'Rich food',
      'price': '1000.00',
      'rate': '4.6',
      'clients': '10',
      'image': 'images/plate-006.png'
    }
  ];

  final List<Map<String, String>> foodOptions = [
    {
      'name': 'Proteins',
      'image': 'images/Icon-001.png',
    },
    {
      'name': 'Burger',
      'image': 'images/Icon-002.png',
    },
    {
      'name': 'Fastfood',
      'image': 'images/Icon-003.png',
    },
    {
      'name': 'Salads',
      'image': 'images/Icon-004.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 227, 199, 234),
        appBar: AppBar(
          title: Text(
            "                         Dite    ",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          backgroundColor: Theme.of(context).accentColor,
          elevation: 1,

          /*leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>Vegan()));},
        ),*/
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the BottomNavigationBar
              canvasColor: Theme.of(context).accentColor,
              // sets the active color of the BottomNavigationBar if Brightness is light
              // primaryColor: Colors.red,
              textTheme: Theme.of(context).textTheme.copyWith(
                  //caption: new TextStyle(color: Colors.yellow),
                  )),
          child: new BottomNavigationBar(
            iconSize: 20,
            selectedIconTheme: IconThemeData(
                //color: Color.fromARGB(255, 147, 43, 173),
                ),
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.home),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.fitness_center),
                  ),
                  label: "Workout"),
              BottomNavigationBarItem(
                  icon: Padding(
                    child: Icon(
                      Icons.description,
                    ),
                    padding: const EdgeInsets.only(top: 8.0),
                  ),
                  label: "Insight"),
              BottomNavigationBarItem(
                  icon: Padding(
                    child: Icon(Icons.soup_kitchen_outlined),
                    padding: const EdgeInsets.only(top: 8.0),
                  ),
                  label: "Diet"),
            ],
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: 391,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8,
                            left: 10,
                            right: 16,
                          ),
                          child: Text(
                            "Today Diet Plan",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 104, 20, 132),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                for (int i = 0; i < meals.length; i++)
                                  _MealCard(
                                    meal: meals[i],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 4,
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "   Dite categories  ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 104, 20, 132),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 5.0,
                child: ListView.builder(
                  //padding: const EdgeInsets.only(left: 40.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: this.popularFood.length,
                  itemBuilder: (context, index) {
                    Map<String, String> product = this.popularFood[index];
                    return GestureDetector();
                  },
                ),
              ),
              GestureDetector(
                child: Hero(
                  tag: 'detail_food${this.popularFood.length}',
                  child: Container(
                    width: 200,
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 30.0),
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 180,
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/pesto_pasta.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: const EdgeInsets.all(9.0),
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30.0,
                                  color: theme.primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 4.0,
                            left: 48.0,
                            //right: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Vegan Diet',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                            left: 50.0,
                            //right: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '15 day plan',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 4,
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "  Favourite Dite ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 104, 20, 132),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FittedBox(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // color: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //: BorderRadius.circular(10.0),

                      // elevation: 5,

                      children: <Widget>[
                    //juiceitem(),
                    Container(
                      width: 280,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                          image: AssetImage('assets/Mediterranean.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                    ),
                    FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // color: Colors.red,
                        // shape: RoundedRectangleBorder(
                        //: BorderRadius.circular(10.0),

                        // elevation: 5,

                        children: <Widget>[
                          //juiceitem(),
                          Container(
                            width: 280,
                            height: 300,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                fit: BoxFit.fill,
                                alignment: Alignment.topLeft,
                                image: AssetImage('assets/snacks.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
              SizedBox(
                height: 10,
              ),
            ])));
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;
  _MealCard({Key? key, required this.meal}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 15,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 4,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  meal.imagePath,
                  width: 180,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          meal.mealTime,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "${meal.timeTaken}",
                          style: const TextStyle(
                            // fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
