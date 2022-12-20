// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mystylee/body.dart';
import 'package:mystylee/log.dart';
import 'package:mystylee/marcket.dart';
import 'package:mystylee/salon.dart';
import 'package:mystylee/salonw.dart';
import 'package:mystylee/search.dart';
import 'package:mystylee/socail.dart';
import 'package:mystylee/wep.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'home_screen.dart';

// ignore: camel_case_types
class wmen extends StatelessWidget {
  const wmen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List user = ["صالون vip", "صالون العتيق ","صالون رمزي"];
    return Scaffold(
      appBar: (AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          icon:Icon(Icons.arrow_back) ,
          onPressed: () {
            Navigator.pop(context);
          },
          ),
          
        title: Text(
          "my style for women "
        ),
        toolbarHeight: 120,
        centerTitle: true,
        backgroundColor: Colors.pink,
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30),top: Radius.circular(30))),
      )
      
      
      



      ),
      endDrawer: Drawer(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.red,
              child:Icon(Icons.line_style_outlined) ,),
              accountName: Text("my style"),
               accountEmail: Text("")),
               ListTile(
                 title: Text("home page"),
                 leading: Icon(Icons.home,size: 30,),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                   
                 },
 
 
               ),   ListTile(
                 title: Text("من نحن"),
                 leading: Icon(Icons.compare),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> socail()));
                   
                 },
 
 
               ),   ListTile(
                 title: Text("للتواصل"),
                 leading: Icon(Icons.contact_mail),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> wep()));
                   
                   
                 },
 
 
               ),   ListTile(
                 title: Text("log in"),
                 leading: Icon(Icons.login),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> log()));
                   
                   
                 },
 
 
               ),
               
 
               ListTile(
                 title: Text("لاعلاناتكم على التطبيق"),
                 leading: Icon(Icons.money),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> marcket()));
                   
                   
                 },
 
 
               ),ListTile(
                 title: Text("Search"),
                 leading: Icon(Icons.search),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
                   
                   
                 },
 
 
               ),



          ],
        ),


      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        
      

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
        children: [ 
          
            Padding(padding: EdgeInsets.only(top: 10,bottom: 0,left:15)),
            Card(
              margin: EdgeInsets.only(bottom: 0),
              color: Colors.cyan[900],
              elevation: 10,
              shadowColor: Colors.teal,
               shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(80),
               top: Radius.circular(80))),
              

            ),
           SizedBox(
              height: 200,
              width: 500,
              
              
              child:
              
               PageView(
                
                children: [
                  
               
                Image.asset("images/mmm.jpg",fit: BoxFit.cover,),
               
                
               
                
                Image.asset("images/12.jpg",fit: BoxFit.cover,),
                ],
              ),
              
              
                
                
                
                
                
                
              

            


            
         ),
         Padding(padding: EdgeInsets.only(top:0)),
         // ignore: avoid_unnecessary_containers
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           padding: const EdgeInsets.all(30),
           child: Row(
             children: [
              Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: .6,fit:BoxFit.fill ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 80,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.cover ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salonw()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),

                ],),
                ),
                


              
                 
                 
                 

                   
               
                
               
             ],
            





           ),



         )
       ,
        
        
        
     
      
      

    
    
    
    );
  }
}