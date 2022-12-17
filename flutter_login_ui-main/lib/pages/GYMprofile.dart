
// ignore_for_file: unused_import, unused_label, dead_code
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/call.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/takdeemtalab.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

//import '../common/theme_helper.dart';
import 'activity page.dart';
class GYMPage extends StatefulWidget{
  const GYMPage ({Key? key}): super(key:key);
  @override
  _GYMPageState createState() => _GYMPageState();
}
class _GYMPageState extends State<GYMPage>{
  double _headerHeight = 250;
  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;
  List<String> image = [
    'https://complete-physio.co.uk/wp-content/uploads/2020/06/7-tips-for-a-successful-return-to-the-gym-after-lockdown-1.jpg',
  ];
 double rating =0;
  Key _formKey = GlobalKey<FormState>();
 final ScrollController _scrollController = ScrollController();
 TextEditingController rate= TextEditingController();
   Crud _crud = Crud();
   ratee()async{
    var response = await _crud.postRequest(linkratee,{

                 "rate" :rate.text,
              
    });
    if (response['status'] == "success"){
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => takdeemtalab()
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print(" ratee Fail");
    }

  }
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 227, 199, 234),
      
       appBar: AppBar(
       title: Text("             Activity ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25 ,fontWeight: FontWeight.bold,),
        ),
        
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1,
        
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => GYMPage()));},
        ),
        
      ),
      body: Container(
     child: SingleChildScrollView(
        child:Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             Image.asset('assets/jym.png',),
            
             const SizedBox(height: 10),
            
             Container(
              
              child: Stack(
        children: <Widget>[
            Align(
               
                alignment: Alignment.centerRight,
                child: Icon(Icons.bookmark_outline_outlined,size: 40,color: Color.fromARGB(255, 195, 54, 255) ,),
              //  color: Color.fromARGB(206, 0, 0, 0),
                
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text( " Gold Gym",
                     style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 30 ,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                )
            )
        ],
    ),
             ),
        
             
                    /*Container(
                      
                        margin: const EdgeInsets.only(right: 10.0 ),
                        
             child: Text('                        Gold Gym',
            style: TextStyle(color: Color.fromARGB(255, 195, 54, 255),fontSize: 36 ,fontWeight: FontWeight.bold,),
            ), 
                    ),*/
             const SizedBox(height: 20),
              Align(
               
              //  alignment: Alignment.centerLeft,
              //  child: Icon(Icons.bookmark_outline_outlined,size: 40,color: Color.fromARGB(255, 195, 54, 255) ,),
              //  color: Color.fromARGB(206, 0, 0, 0),
                
            ),
           //  Align(
             //alignment: Alignment.centerLeft,
            //Text('Rating: $rating',
            
           // style: TextStyle(fontSize: 23),
           //),
           // 
            // ),
            /*Container(
               width: 200.0,
                  child:   TextFormField(
                
  //initialValue: 'Input text',
  controller: rate,
  decoration: InputDecoration(
    
   /// contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
    //labelText: 'Label text',
    //errorText: 'Error message',
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
        
    ),
    
   hintText:'            Rating, $rating' ,
   
  ),
),
           
            ),
             const SizedBox(height: 10),
            
              RatingBar.builder(
                
             //initialRating: rating,
                
          minRating:0,
          itemSize:35,
          itemPadding:EdgeInsets.only(right:0),
         itemBuilder:(context,_)=>(Icon(Icons.star,color: Color.fromARGB(214, 166, 0, 255))),
         updateOnDrag:true,
         onRatingUpdate: (rating)=>setState((){
          //rating = rating.toString();
          this.rating=rating;
         
  
  }),
            ),
           
            
             const SizedBox(height: 5),
             
            TextButton(
              
              child:Text('Show Dialog',
              style: TextStyle(fontSize: 23),
              
              ),
              
               onPressed:() => showDialog(context: context,
               
              builder: (context)=>AlertDialog(
                
              title:  Text('Rate this app',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:  Theme.of(context).accentColor,)),
              content: Column(
            //crossAxisAlignment:CrossAxisAlignment.center,
      
           mainAxisSize: MainAxisSize.min,      
          children: [
            Text('Please leave a star rating',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color:  Theme.of(context).accentColor,)
            
            ),
            
            const SizedBox(height:30), 
             RatingBar.builder(
          //   initialRating: rating,
          minRating:0,
          itemSize:43,
          itemPadding:EdgeInsets.symmetric(horizontal: 4),
         itemBuilder:(context, _)=>(Icon(Icons.star,color: Color.fromARGB(214, 166, 0, 255))),
         updateOnDrag:true,
         onRatingUpdate: (rating)=>setState((){
          this.rating=rating;
  
  }),
            ),
            new Divider(
            color: Color.fromARGB(255, 146, 28, 193),),
          ],
          
            ),
            
        actions: [
       TextButton(
        child: Text(
         'OK',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:  Color.fromARGB(255, 157, 0, 255),)
            ),
        onPressed: ()  => Navigator.pop(context), 
        ),
        
        ],
        
      ),
      
    ),
    
    
            ),*/
          /*  Container(
            child: RatingBar.builder(
          initialRating: 3,
          itemCount: 5,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 190, 16, 4),
                );
              case 1:
                return Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 245, 55, 55),
                );
              case 2:
                return Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 253, 191, 3),
                );
              case 3:
                return Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 147, 214, 70),
                );
              case 4:
                return Icon(
                  Icons.star_border,
                  color: Color.fromARGB(255, 31, 148, 35),
                );
            }
            return Text(" ");
          },
          onRatingUpdate: (rate) {
            controller: rate;
            print(rate);
          },
        ),
            ),*/             RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Color.fromARGB(214, 166, 0, 255)),
                        half: const Icon(
                          Icons.star_half,
                          color: Color.fromARGB(214, 166, 0, 255),
                        ),
                        empty: const Icon(
                          Icons.star_outline,
                          color: Color.fromARGB(255, 181, 96, 237),
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        rating = value;
                        container:rate;
                      });
                    }),
                const SizedBox(height: 25),
                // Display the rate in number
                Container(
                  width: 200,
                  height: 40,
                      //color: Colors.red,
                  alignment: Alignment.center,
                  child:  TextFormField(
                
  //initialValue: 'Input text',
  controller: rate,
  decoration: InputDecoration(
    
   /// contentPadding: EdgeInsets.only(left: 200, top: 25, right: 200),
    //labelText: 'Label text',
    //errorText: 'Error message',
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
          
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
        
    ),
    
   hintText:'input Rate' ,
   
  ),
),
                ),
                  SizedBox(height:10.0),
           Divider(color: Theme.of(context).accentColor, height: 3,),
           SizedBox(height:10.0),
            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                  child: Text('Registration', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: ()
                                    async{
     
         // OnPressed(context);
                                  await ratee(); 
                                    },
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>takdeemtalab()));
                                
                              ),
                              
                            ),
                                SizedBox(height: 15),
                         new Divider(
            color: Color.fromARGB(255, 146, 28, 193),height:1,),   
            SizedBox(height: 15.0),
               Container(
      child:Column (
            children: <Widget>[
          ListTile(
             leading: Icon(Icons.location_on,size:35,color: Color.fromARGB(255, 195, 54, 255) ,),
             
            title: Text(' Nablus \n Nablus-Sufyan Street',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color.fromARGB(255, 195, 54, 255),)),
          ),
          ListTile(
            leading: Icon(Icons.person,size: 35,color: Color.fromARGB(255, 195, 54, 255), ),
            title: Text(' gender of people \n males and females',  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color.fromARGB(255, 195, 54, 255),)),
          ),
          
        ],
      ),
    ),
             SizedBox(height: 25),
            Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
             
  children: [
    
    ElevatedButton.icon(
      style: ThemeHelper().buttonStyle(),
      
      onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CallPage()));},
       icon: Icon( // <-- Icon
    Icons.call,
    color:Color.fromARGB(255, 120, 29, 159),
    size: 26.0,
    
  ),
   label: Text('Call Now', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),),
      
    SizedBox(
      width: 20, //<-- SEE HERE
    ),
    ElevatedButton.icon(
       style: ThemeHelper().buttonStyle(),
      onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => activityPage()));},
      icon: Icon( // <-- Icon
    Icons.message,
    color:Color.fromARGB(255, 120, 29, 159),
    size: 26.0,
  ),
    label: Text('Chat', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
    
    ),
  ],
),


            ),
            SizedBox(
      height:20, //<-- SEE HERE
    ),
             
            
     new Divider(
            color: Color.fromARGB(255, 146, 28, 193),height:3,),
             SizedBox(
      height: 15, //<-- SEE HERE
    ),
           Card(
            child:Container(
               alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 199, 234),
                border: Border.all(color: Color.fromARGB(255, 195, 54, 255), width: 4),
              ),
              child: Column(
                children: <Widget>[
                Column(   
                children: <Widget>[             
         SizedBox(
              height: 5.0,
            ),
           
              
            Container(
               alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 199, 234),
                border: Border.all(color: Color.fromARGB(255, 195, 54, 255), width: 4),
              ),
      child: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            ListTile(
           
            title: Text(' Monthly installments\n(not including services) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:8,),
                         SizedBox(

              height: 10.0,
            ),
          
                         ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Monthly :             500₪\nweekly :               100₪\ndaily :                    20₪",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
      ),
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 5.0,
            ),  
            ListTile(
           
            title: Text(' (Available days) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:5,),
                         SizedBox(

              height: 8.0,
            ),  
                         ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Male : Saturday , Monday , Wednesday.\n\nFemales : Sunday ,    Tuesday  ,Thursday. ",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
      ),
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 5.0,
            ),
            ListTile(
           
            title: Text(' (Services) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:8,),
                         SizedBox(

              height: 10.0,
            ),
                         ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  " Provide Meals\n Personal Trainer",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
      ),
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 10.0,
            ),
            ListTile(
           
            title: Text(' Monthly installments\n(not including services) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:8,),
                         SizedBox(

              height: 10.0,
            ),
                         ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Stationary bike device in place.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
      ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Rowing machine.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Treadmill.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Bicycle seat.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Rowing machine.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Kettlebell device.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Balance rubber ball.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Portable weights.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
       ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Chest strengthening device.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
      ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Foot, leg and metatarsal strengthening device.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
      ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Back muscle strengthening device.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
      ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                          
                                 title:Text(
                                  "Upper,lower and rectus abdominoplasty muscle strengthening device.",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
            
      ),
     
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 5.0,
            ),
            ListTile(
           
            title: Text(' (Activities) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 5.0,
            ),
                         ListTile(   
                        //  trailing: Icon(Icons.shekel, size: 25, color: Color.fromARGB(255, 195, 54, 255),),
                        trailing: IconButton(
          icon: Icon(
            Icons.arrow_right_alt_outlined,
            color: Color.fromARGB(255, 195, 54, 255),
            size:58,),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => activityPage()));},
        ),
                                 title:Text(
                                  "A Trip",style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 195, 54, 255),),
            ),
      ),
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 5.0,
            ),
            ListTile(
           
            title: Text(' (Pictures) ',style:
            
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 120, 29, 159),),),
            ),
                        
                         Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 10.0,
            ),
            
                        Container( 
                          child:Column(
                          children: [
                            
                        
             Image.asset('assets/ajym.png',),
             
            
             const SizedBox(height: 8),
             Image.asset('assets/jym.png',),
              const SizedBox(height:8),
             Image.asset('assets/bjym.png',),
             const SizedBox(height:8),
             Image.asset('assets/cjym.png',),
              const SizedBox(height:8),
             Image.asset('assets/djym.png',),
             const SizedBox(height:8),
             Image.asset('assets/ejym.png',),
                          ]
                          ),       
                                
      ),
      Divider(color: Color.fromARGB(255, 179, 0, 255), height:3,),
                         SizedBox(

              height: 10.0,
            ),
                  

           
            
            
        
    Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      color: Colors.black12,
    ),
    ),
    
             SizedBox(
      width: 40, //<-- SEE HERE
    ),
          ],
        ),
     )
      ),
           
                ]
                ),
                ]
        
              )
            )
           )
          ],
        ),
     ),
      
      ),
       bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
         color: Theme.of(context).accentColor,
         //color: Color.fromARGB(255, 158, 36, 150),
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
              


            
          
      
       
               
          /*  RatingBar.builder(
              itemSize:46,
          minRating: 1, 
          itemPadding:EdgeInsets.symmetric(horizontal: 4),
          itemBuilder: (context, _)=>Icon(Icons.star,color:Color.fromARGB(255, 153, 0, 255),),
           updateOnDrag:true,
          onRatingUpdate: (rating)=>setState((){
          this.rating=rating;},
        ),*/
        /*child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rating: $rating',
            style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 32),
           buildRating(),
            const SizedBox(height: 32),
            TextButton(
              child:Text('Show Dialog',
              style: TextStyle(fontSize: 32),
              ),
               onPressed:(() => showRating()
               ),
               ),
          ],
            ),*/
               
  
            Widget buildRating()=>RatingBar.builder(
          minRating:1,
          itemSize:46,
          itemPadding:EdgeInsets.symmetric(horizontal: 4),
         itemBuilder:(context, _)=>(Icon(Icons.star,color: Color.fromARGB(214, 166, 0, 255))),
         updateOnDrag:true,
         onRatingUpdate: (rating)=>setState((){
        //  this.rating=rating;
  
  }),
            );
        void showRating()=> showDialog(context: context,
       builder: (context)=>AlertDialog()
       );

  }
      
  
     
           
            
          /*Widget buildRating()=>RatingBar.builder(
          minRating:1,
          itemSize:46,
          itemPadding:EdgeInsets.symmetric(horizontal: 4),
         itemBuilder:(context, _)=>(Icon(Icons.star,color: Color.fromARGB(213, 174, 40, 237))),
         updateOnDrag:true,
         onRatingUpdate: (rating)=>setState((){
          this.rating=rating;
  
  }),
       */ 
          /*void showRating() => showRating(
         context :context,
         builder(context)=>AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rating: $rating',
            style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 32),
          ],
          ),
         ),*/
          
  }
        
        
      
             
    
      
   /* Widget buildRating()=>RatingBar.builder(
          minRating:1,
          itemsize:46,
          itemPadding:EdgeInsets.symmetric(horizontal: 4),
         itemBuilder:(context, _)=>(Icon(Icons.star,color: Color.fromARGB(214, 166, 0, 255))),
         updateonDrag:true,
         onRatingUpdate: (rating)=>setState((){
          this.rating=rating;
  
  }),*/
    


showRating() {
}
