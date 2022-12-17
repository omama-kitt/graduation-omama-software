
/*
// ignore_for_file: dead_code, unused_local_variable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/Screens/GetStarted/Widgets/2PageView.dart';
import 'package:flutter_login_ui/model/event.dart';
import 'package:flutter_login_ui/pages/provider/event_provider.dart';
import 'package:flutter_login_ui/utils.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:provider/provider.dart';

class editingcalenderPage extends StatefulWidget {
   final Event ? event;

   const editingcalenderPage({
    Key ?key,
    this.event,
   }):super(key: key);

   
  @override
  _editingcalenderPageState createState() => _editingcalenderPageState();
}
class _editingcalenderPageState extends State<editingcalenderPage> {
  final titlecontroller =TextEditingController();
 late DateTime fromDate;
 late DateTime toDate;
 
 @override
 void initState(){
  super.initState();
  if(widget.event==null){
    fromDate = DateTime.now();
    toDate = DateTime.now().add(Duration(hours: 2));
  }
 }
 @override
 void dispose(){
  titlecontroller.dispose();
  super.dispose();
 }
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     
      return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      appBar: AppBar(
      leading: CloseButton(),
      actions:buildEditingActions(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _fromKey,
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildTitle(),
              SizedBox(height: 12),
              buildDateTimePickers(),
            ],
          ),
        ),
      )
      );

  }

  List<Widget>buildEditingActions() =>[
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: saveFrom,
        icon: Icon(Icons.done),
        label:  Text('SAVE'),
      ),
    ];
    Widget buildTitle () =>TextFormField(
      style: TextStyle(fontSize: 24),
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Add Title',
      ),
      onFieldSubmitted: (_)=>saveFrom,
      validator: (title)=>
      title !=null && title.isEmpty ?'title cannot be empty':null,
      controller: titlecontroller,
    
    );
   Widget buildFrom()=>buildHeader(
    header:'FROM',
    child: Row(
    children :[  
      Expanded(
        flex:2,
      child:buildDropdownField (
        text:Utils.toDate(fromDate),
        onClicked:()=>pickFromDateTime(pickDate:true),
      ),
     ),
      Expanded(
      child:buildDropdownField (
        text:Utils.toTime(fromDate),
        onClicked:()=>pickFromDateTime(pickDate:false),
      ),
     ),
  ],
    ) 
    ) ;
    Widget buildTo()=>buildHeader(
    header:'To',
    child: Row(
    children :[  
      Expanded(
        flex:2,
      child:buildDropdownField (
        text:Utils.toDate(toDate),
        onClicked:()=>pickFromDateTime(pickDate:true),
      ),
     ),
      Expanded(
      child:buildDropdownField (
        text:Utils.toTime(toDate),
        onClicked:()=>pickFromDateTime(pickDate:false),
      ),
     ),
  ],
    ) 
    ) ;
Future pickFromDateTime({fromDate,required bool pickDate}) 
async {
  final date =await pickFromDateTime(fromDate: fromDate,pickDate: pickDate);
  if(date==null) return;

  if(date.isAfter(toDate)){
    toDate = DateTime(date.year,date.month,date.day,toDate.hour,toDate.minute);
  }
  setState(()=> fromDate =date );
}
Future pickToDateTime({required bool pickDate}) 
async {
  final date =await pickDateTime( 
    toDate,
    pickDate: pickDate,
    firstDate: pickDate ? fromDate:null,
    );
  if(date==null) return;

  if(date.isAfter(toDate))
    
  
  setState(()=> toDate =date );
}
  Future<DateTime?>pickDateTime(
    DateTime initialDate,{
      required bool pickDate,
      DateTime? firstDate,

    } )async {
      if (pickDate){
        final date = await showDatePicker(context: context, 
        initialDate: initialDate,
         firstDate: firstDate ?? DateTime(2015,8), 
         lastDate: DateTime(2101),
         );
         if(date ==null)return null;
         final time = Duration(hours: initialDate.hour,minutes: initialDate.minute );
         return date.add(time);
      }else{
        final timeOfDay = await showTimePicker(
          context: context, 
          initialTime:TimeOfDay.fromDateTime(initialDate),
          );
          if( timeOfDay == null)return null;
           final date= DateTime(initialDate.year, initialDate.month,initialDate.day );
           final time= Duration(hours: timeOfDay.hour,minutes: timeOfDay.minute);
              return date.add(time);
      }
    }
 Widget buildDateTimePickers()=> Column(
  children :[
  buildFrom(),

  ], 
   );

  
 Widget buildDropdownField({
  required String text, 
  required VoidCallback onClicked,
  })=>ListTile(
    title:Text(text),
    trailing: Icon(Icons.arrow_drop_down),
    onTap: onClicked,
  );
  
  
Widget buildHeader({
  required String header, 
  required Widget child,
  })=>
  Column(
    crossAxisAlignment:  CrossAxisAlignment.start,
    children: [
      Text(header,style: TextStyle(fontWeight: FontWeight.bold)),
      child,
      
    ],
  );
  
  Future saveFrom()async{
    final isVaild =_fromKey.currentState!.validate();
    if(isVaild){
      final event =Event(
        title: titlecontroller.text,
        description: 'Description',
        from: fromDate,
        to:toDate,
        isAllDay: false,
      );
      final provider = Provider.of<EventProvider>(context,listen:isVaild);
      provider.addEvent(event);
      Navigator.of(context).pop();
    }
  }
}


*/

