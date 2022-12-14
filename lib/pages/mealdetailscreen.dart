import 'package:flutter/material.dart';
import 'Meal.dart';
import 'ProfileScreen.dart';
import 'card.dart';

Meal meal = Meal(
    mealTime: "",
    name: "",
    imagePath: "",
    kiloCaloriesBurnt: "",
    timeTaken: "",
    preparation: "",
    ingredients: []);

class filter11 extends StatefulWidget {
  const filter11({Key? key}) : super(key: key);

  @override
  _filter11 createState() => _filter11();
}

class _filter11 extends State<filter11> {
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List ingredients = [
      "1 cup of granola",
      "1 banana",
      "1/2 cup of raisins",
      "1 tbsp of honey",
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 36, 150),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen()));
              },
            ),
            snap: true,
            floating: true,
            backgroundColor: Color.fromARGB(255, 227, 199, 234),
            expandedHeight: 300,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40)),
                child: Image.network(
                    'https://gymplus.ie/wp-content/uploads/2018/08/GymPlus_Ropes.jpg'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "BREAKFAST",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                  subtitle: Text(
                    "Fruit Granola",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.vertical_align_bottom,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 100,
                    width: 200,
                    child: Card(
                      color: Color.fromARGB(255, 227, 199, 234),
                      elevation: 8,
                      shadowColor: Color.fromARGB(255, 158, 36, 150),
                      margin: EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 227, 199, 234))),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Text("500\nProtein",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 80,
                        ),
                        Text("250\nFat",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 80,
                        ),
                        Text("1500\nCalories",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "INGREDIENTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /* Padding(
                          padding: const EdgeInsets.only(bottom: 6),*/
                      for (var name in ingredients)
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      //),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "PREPARATION",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum tempus egestas sed sed risus pretium quam. Platea dictumst quisque sagittis purus sit. Senectus et netus et malesuada fames ac turpis egestas sed. Nibh cras pulvinar mattis nunc. Amet consectetur adipiscing elit duis tristique. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. Lectus proin nibh nisl condimentum id venenatis. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Sed adipiscing diam donec adipiscing tristique risus nec feugiat in. Enim tortor at auctor urna. In dictum non consectetur a.

Sit amet risus nullam eget. Viverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Quis risus sed vulputate odio ut enim blandit volutpat maecenas. Turpis cursus in hac habitasse platea dictumst quisque sagittis. Eget mi proin sed libero. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Neque viverra justo nec ultrices dui. Gravida neque convallis a cras semper. Morbi tempus iaculis urna id volutpat lacus laoreet non. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Amet mattis vulputate enim nulla aliquet. Lectus urna duis convallis convallis tellus. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero id. Diam ut venenatis tellus in metus vulputate eu scelerisque felis. Adipiscing vitae proin sagittis nisl. Sed libero enim sed faucibus turpis in. Pulvinar mattis nunc sed blandit. Nisi scelerisque eu ultrices vitae auctor eu augue ut. Diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Sed id semper risus in hendrerit.

Consectetur adipiscing elit duis tristique sollicitudin nibh. Dictumst quisque sagittis purus sit amet volutpat. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Mauris pharetra et ultrices neque. Leo duis ut diam quam nulla porttitor. Sit amet facilisis magna etiam tempor orci eu lobortis elementum. Blandit massa enim nec dui. Aliquam id diam maecenas ultricies mi eget mauris. Mattis rhoncus urna neque viverra justo nec ultrices. Nibh tellus molestie nunc non blandit. Non diam phasellus vestibulum lorem. Ut diam quam nulla porttitor massa id neque aliquam. Eget mauris pharetra et ultrices neque ornare aenean euismod. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Tellus in hac habitasse platea dictumst vestibulum.

Adipiscing commodo elit at imperdiet. Mollis nunc sed id semper risus. Magna fermentum iaculis eu non. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. Amet consectetur adipiscing elit ut aliquam purus sit amet. Ultrices sagittis orci a scelerisque purus semper. Pharetra magna ac placerat vestibulum lectus mauris ultrices eros in. Massa tempor nec feugiat nisl pretium. Etiam dignissim diam quis enim lobortis scelerisque. Duis ut diam quam nulla.

Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Vitae aliquet nec ullamcorper sit amet risus. Malesuada nunc vel risus commodo viverra. Id aliquet risus feugiat in ante metus dictum at tempor. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Ipsum dolor sit amet consectetur. In nibh mauris cursus mattis molestie a. Duis at consectetur lorem donec massa sapien faucibus et molestie. Amet nisl purus in mollis nunc sed id. Sagittis vitae et leo duis ut. Purus in mollis nunc sed id. Mauris ultrices eros in cursus turpis.''',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
