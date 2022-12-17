// ignore_for_file: dead_code, deprecated_member_use



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/main.dart';
import 'package:flutter_login_ui/pages/addexercise.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/dite.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


 class passdatepage extends StatefulWidget {
 //const HomeScreen({super.key});

  @override
   State<passdatepage> createState() => _passdatepageState();
   }

   class _passdatepageState extends State<passdatepage> {
    List<Method> items = []; // => List of items that come form next page.
      List<Method> _items = [];


  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
  
    }
  }
   Crud _crud = Crud();
 //late final TextEditingController mycontroller;
 TextEditingController id=  new TextEditingController ();

 
onDelete()async{
  
    var response= await _crud.postRequest(linkdelete, {
      "id": SharedPre.getString("id"),
    
         //   "id": items[index].toString() , 
             //  "id":SharedPre.getString("id").toString(),
             //   "id": items['notes_id'].toString() ,
             //items.removeAt(index); 
             
    });
       return response;
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
  title: Text("                   Today Exercises"),
     backgroundColor: Color.fromARGB(255, 162, 79, 194),
  
),

floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.of(context)
        .push<Method>(MaterialPageRoute(builder: (_) => AddData()))
        // fetching data form next page.
        .then((value) =>setState(() {
              if (value?.nameexercise != "" && value?.durationexercise != "") {
                items.add(Method(
                  
                  nameexercise: value!.nameexercise,
                   durationexercise: value.durationexercise));
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
                        title: Text(items[index].nameexercise),
                        subtitle: Text(items[index].durationexercise),
                        leading:  Image(
                           width:120,
                           height: 800,
                         fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                          
                          image: AssetImage('assets/Marching in place.png',),
                           ),
                      trailing: IconButton(
                      icon: Icon(Icons.delete_forever),
                      
                       onPressed: ()async { 
                        items.removeAt(index) ;
                              await onDelete(); 
                             // items.removeAt(index);
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