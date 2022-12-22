// ignore_for_file: dead_code, deprecated_member_use



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/main.dart';
import 'package:flutter_login_ui/pages/adddite.dart';
import 'package:flutter_login_ui/pages/addexercise.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/dite.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


 class passdateditepage extends StatefulWidget {
 //const HomeScreen({super.key});

  @override
   State<passdateditepage> createState() => _passdateditepageState();
   }

   class _passdateditepageState extends State<passdateditepage> {
    List<Method1> items = []; // => List of items that come form next page.
      List<Method1> _items = [];


  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
  
    }
  }
   Crud _crud = Crud();
   TextEditingController id=  new TextEditingController ();
 //late final TextEditingController mycontroller;
 // TextEditingController Coachemail=  new TextEditingController ();
  

onDelete()async{

    var response= await _crud.postRequest(linkdelete, {
               "id":SharedPre.getString("id"),
             //   "id": items['notes_id'].toString() , 
               
                
    });
    if (response['status'] == "success") {
                                      Navigator.of(context)
                                          .pushReplacementNamed("home");
                                    }
  }
   @override
  Widget build(BuildContext context) {
     
return Scaffold(
    backgroundColor: Color.fromARGB(255, 227, 199, 234),
appBar: AppBar(
  title: Text("                            Today dite"),
     backgroundColor: Color.fromARGB(255, 162, 79, 194),
  
),


floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.of(context)
        .push<Method1>(MaterialPageRoute(builder: (_) => Adddite()))
        // fetching data form next page.
        .then((value) => setState(() {
              if (value?.food != "" && value?.time != "") {
                items.add(Method1(
                  
                 food: value!.food,
                   time: value.time));
              }
            }));
            
  },
  child: Icon(Icons.add),
   
),

body: items.isNotEmpty
    ? Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: ((context, index) {
                  return Container(
                    
                    margin:
                        EdgeInsets.only(top: 10, left: 10, right: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 181, 126, 203),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: ListTile(
                        title: Text(items[index].food),
                        subtitle: Text(items[index].time),
                       
                      trailing: IconButton(
                      icon: Icon(Icons.delete_forever),
                      
                       onPressed: ()async { 
                         items.removeAt(index);
                              await onDelete(); 
                             
                            },
                      
                          
                      
            
                    ),
                    
                    ),
                    
                    ),
                    
                  );
                   SizedBox(height: 10,);
                
   
                
  // Text("\n Warm-Up",style: TextStyle(color: Color.fromARGB(219, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
               
             
              
                }))
                
                ),
                
                
      ])
      
    : Center(
        child: Text("No Record Found"),
        
        )
        
        );
     }
    }