 import 'package:flutter/material.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/main.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/passsdateexercies.dart';

     class Adddite extends StatefulWidget {
     //const AddData({super.key});

        @override
        State<Adddite> createState() => _AddditeState();
  }

 // Creating a Class and constructor.
 class Method1 {
 late String food;
  late String time;
 
  Method1({ required this.food, required this.time});
           }

    class _AddditeState extends State<Adddite> {
   // Creating a TextEditingController for two Fiends,
    //one is for title TextField and second is for Description TextField.
    

   // Creating a Method for Passing a data to back page.
   OnPressed(BuildContext context) {
     var data = Method1(food: food.text, time: time.text);
     Navigator.pop(context, data);
       }
       GlobalKey<FormState> formstate = GlobalKey<FormState>();
        Crud _crud = Crud();
 //late final TextEditingController mycontroller;
 
  TextEditingController food=  new TextEditingController ();
  TextEditingController time =  new TextEditingController ();
  
  

adddite()async{

    var response = await _crud.postRequest(linkadddite, {
                "id":SharedPre.getString("id"),
                " food" : food.text,
                "time" :time.text,
               
    });
   
   if (response['status'] == "success") {
        Navigator.of(context).pushReplacementNamed("home");
      } else {
        //
      }
    
  }
  
       
       @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Color.fromARGB(255, 227, 199, 234),
          appBar: AppBar(title: Text("               Add Food"),
          backgroundColor: Color.fromARGB(255, 162, 79, 194),

          ),
          
          
             body: Form(child: Builder(builder: (context) {
              return Column(children: [
                 SizedBox(
                height: 15,
              ),
               Text("    Today you have 5 time meal plan",style: TextStyle(color: Color.fromARGB(193, 162, 0, 255), fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
                height:50,
              ),
             
                TextFormField(
                  controller: food,
      decoration: InputDecoration(hintText: "The name of the food"),
      validator: (value) {
        var newValue = value ?? "";
        if (newValue.isEmpty) {
          return 'title is Required';
        }
        return null;
      },
    ),
     SizedBox(
                height: 30,
              ),
    TextFormField(
      controller: time,
      decoration: InputDecoration(hintText: "time of food "),
      validator: (value) {
        var newValue = value ?? "";
        if (newValue.isEmpty) {
          return 'Discription is Required';
        }
        return null;
      },
    ),
    
     SizedBox(
                height: 30,
              ),
              ///  if (Form.of(context)?.validate() ?? false) {
          //OnPressed(context);
    MaterialButton(
      color: Color.fromARGB(230, 152, 35, 206),
       onPressed: () async{
        if (Form.of(context)?.validate() ?? false) {
          OnPressed(context);
                                  await adddite(); 
                                    }
       },
     /* onPressed: () {
        if (Form.of(context)?.validate() ?? false) {
          OnPressed(context);
        }
      },*/
      child: Text("Save"),
    )
  ]);
})));
   }
   }