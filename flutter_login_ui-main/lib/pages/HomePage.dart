import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/ContactModel.dart';

//import 'ContactModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ContactModel> contacts = [
    ContactModel(
      "Zaman\nYoga specialist\n",
      "5 Years\nexperience",
      'https://cdn.imgbin.com/20/15/20/imgbin-coach-personal-trainer-health-man-flu-sport-health-r6n35EpbhYz0pMVmdkiE5CFKX.jpg',
    ),
    ContactModel("Naim\nS&D\n", "5 Years\nexperience",
        'https://tse1.mm.bing.net/th?id=OIP.bzl6LyO3s8cm6Nfz3ZUXRwHaEK&pid=Api&P=0'),
    ContactModel("Sardar\nFood dietitians\n", "5 Years\nexperience",
        'https://hitchcockhealthcare.org/wp-content/uploads/2019/04/Fitness-Training.png'),
    ContactModel("Baqer\nS&D\n", "6 Years\nexperience",
        'https://cdn-ami-drupal.heartyhosting.com/sites/muscleandfitness.com/files/styles/full_node_image_1090x614/public/media/personal-trainer_2_0.jpg?itok=a0TO5lIP'),
    ContactModel("Yasin\nHiit\n", "5 Years\nexperience",
        'https://tse4.mm.bing.net/th?id=OIP.bPVsUIJASSOo8wYQt1Pe-gHaIF&pid=Api&P=0'),
    ContactModel("Hurmat\nYoga specialist\n", "6 Years\nexperience",
        'https://tse1.mm.bing.net/th?id=OIP.K7kszbbEqzBuvNU_FZEJ2wHaJn&pid=Api&P=0'),
    ContactModel("Ali\nHiit\n", "6 Years\nexperience",
        'https://tse2.mm.bing.net/th?id=OIP.nEi9Q4rsYhG_jcxmdtl5DwHaEK&pid=Api&P=0'),
  ];

  List<ContactModel> selectedContacts = [];
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

  Widget ContactItem(String name, String phoneNumber, String imag, int index) {
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
    );
  }
}