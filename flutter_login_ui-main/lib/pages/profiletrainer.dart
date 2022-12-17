import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/ContactModel1.dart';
import 'package:flutter_login_ui/pages/profilebasic.dart';
//import 'package:profiletrainer/profilebasic.dart';

import 'ContactModel.dart';

class profiletrainer extends StatefulWidget {
  @override
  _profiletrainer createState() => _profiletrainer();
}

class _profiletrainer extends State<profiletrainer> {
  List<ContactModel1> contacts = [
    ContactModel1(
      "Zaman\nYoga specialist\n",
      "5 Years\nexperience",
      'https://media.istockphoto.com/photos/happy-personal-trainer-working-at-the-gym-picture-id852401732?k=6&m=852401732&s=170667a&w=0&h=8MdqOEZAt6Y_mxyGYEwf7oEf4SUnWT4ZTds2BiH__pQ=',
      "15\nWork\nexperience",
      "700\nJob\nCompleted",
      "50\nClient\nServing",
      ":09:00 AM to 06:00PM",
      "English&Hindi",
      "Diploma in Yoga specialist",
      "700",
    ),
    ContactModel1(
      "Naim\nS&D\n",
      "5 Years\nexperience",
      'https://tse1.mm.bing.net/th?id=OIP.bzl6LyO3s8cm6Nfz3ZUXRwHaEK&pid=Api&P=0',
      "17\nWork\nexperience",
      "200\nJob\nCompleted",
      "90\nClient\nServing",
      ":010:00 AM to 07:00PM",
      "English&Arabic",
      "Diploma in S&D ",
      "700",
    ),
    ContactModel1(
      "Sardar\nFood dietitians\n",
      "5 Years\nexperience",
      'https://hitchcockhealthcare.org/wp-content/uploads/2019/04/Fitness-Training.png',
      "17\nWork\nexperience",
      "400\nJob\nCompleted",
      "30\nClient\nServing",
      ":011:00 AM to 08:00PM",
      ":Hindi&Arabic",
      ":Diploma in Food dietitians",
      "500",
    ),
    ContactModel1(
      "Baqer\nS&D\n",
      "6 Years\nexperience",
      'https://cdn-ami-drupal.heartyhosting.com/sites/muscleandfitness.com/files/styles/full_node_image_1090x614/public/media/personal-trainer_2_0.jpg?itok=a0TO5lIP',
      "18\nWork\nexperience",
      "800\nJob\nCompleted",
      ":40\nClient\nServing",
      ":12:00 PM to 09:00PM",
      ":Italian&Arabic",
      ":Diploma in S&D",
      "400",
    ),
    ContactModel1(
      "Yasin\nHiit\n",
      "5 Years\nexperience",
      'https://tse4.mm.bing.net/th?id=OIP.bPVsUIJASSOo8wYQt1Pe-gHaIF&pid=Api&P=0',
      "19\nWork\nexperience",
      "600\nJob\nCompleted",
      "60\nClient\nServing",
      ":01:00 PM to 010:00PM",
      ":Italian&Corean",
      ":Diploma in Hiit",
      "500",
    ),
    ContactModel1(
      "Hurmat\nYoga specialist\n",
      "4 Years\nexperience",
      'https://tse1.mm.bing.net/th?id=OIP.K7kszbbEqzBuvNU_FZEJ2wHaJn&pid=Api&P=0',
      "14\nWork\nexperience",
      "500\nJob\nCompleted",
      "50\nClient\nServing",
      ":08:00 AM to 12:00PM",
      ":English&Corean",
      ":Master in Yoga specialist",
      "600",
    ),
    ContactModel1(
      "Ali\nHiit\n",
      "7 Years\nexperience",
      'https://tse2.mm.bing.net/th?id=OIP.nEi9Q4rsYhG_jcxmdtl5DwHaEK&pid=Api&P=0',
      "13\nWork\nexperience",
      "600\nJob\nCompleted",
      "70\nClient\nServing",
      ":08:00 AM to 12:00PM",
      ":English&Corean",
      ":Master in Hiit",
      "700",
    ),
  ];

  List<ContactModel1> selectedContacts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          iconSize: 20,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 227, 199, 234),
          ),
          unselectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 122, 42, 110),
          ),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 158, 36, 150),
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
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 36, 150),
        centerTitle: true,
        title: Text(
          "Trainer",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            /* Navigator.of(context).push(MaterialPageRoute(
                //builder: (BuildContext context) => GYMPage()));*/
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                    labelText: 'Search', suffixIcon: Icon(Icons.search)),
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 20);
                    },
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index) {
                      // retur
                      return ContactItem(
                        contacts[index].name,
                        contacts[index].phoneNumber,
                        contacts[index].imag,
                        contacts[index].workwxperience,
                        contacts[index].jobcompleted,
                        contacts[index].clientserving,
                        contacts[index].Work,
                        contacts[index].speak,
                        contacts[index].Qualification,
                        contacts[index].price,
                        index,
                      );
                    }),
              ),
              selectedContacts.length > 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          //   color: Colors.green[700],
                          child: Text(
                            "Delete (${selectedContacts.length})",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            print(
                                "Delete List Lenght: ${selectedContacts.length}");
                          },
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContactItem(
      String name,
      String phoneNumber,
      String imag,
      String workwxperience,
      String clientserving,
      String jobcompleted,
      String Work,
      String speak,
      String Qualification,
      price,
      int index) {
    return Card(
      color: Color.fromARGB(255, 227, 199, 234),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Color.fromARGB(255, 158, 36, 150),
        ),
      ),
      elevation: 16,
      shadowColor: Color.fromARGB(255, 158, 36, 150),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => profilebasic(
                  name: name,
                  imge: imag,
                  workexperience: workwxperience,
                  jobcompleted: jobcompleted,
                  clientserving: clientserving,
                  Work: Work,
                  Qualification: Qualification,
                  speak: speak,
                  price: price,
                ))),
        child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imag),
              radius: 40,
              onBackgroundImageError: imag != null
                  ? (e, stackTrace) {
                      print('e: ${e}');
                    }
                  : null,
              child:
                  imag == null ? Text("iunnb") : Container(height: 0, width: 0),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(phoneNumber),
            trailing: Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  // TextSpan(text: ''),
                  WidgetSpan(
                      //  alignment: ui.PlaceholderAlignment.middle,
                      child: Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 158, 36, 150),
                    size: 25,
                  )),
                  TextSpan(text: '4.5'),
                ],
              ),
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}