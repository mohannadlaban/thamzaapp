// ignore_for_file: prefer_const_constructors, unused_import

// ignore: avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mystylee/body.dart';
import 'package:mystylee/home_screen.dart';
import 'package:mystylee/login_widget.dart';
import 'package:mystylee/salon.dart';
import 'package:mystylee/search.dart';
import 'package:mystylee/socail.dart';
import 'package:mystylee/wep.dart';
import 'log.dart';
import 'marcket.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: import_of_legacy_library_into_null_safe


// ignore: camel_case_types
class men extends StatefulWidget {
  const men({ Key? key }) : super(key: key);

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
    List user = ["صالون vip", "صالون العتيق ","صالون رمزي"];
    bool searchstate = false ;
    
    List <bool> favlist = [];
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: (AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          icon:Icon(Icons.arrow_back) ,
          onPressed: () {
            Navigator.pop(context);
          },
          ),
          
        title: !searchstate?Text(
          "my style for men "
        ):  TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: "search....", 
            hintStyle: TextStyle(color: Colors.white)
            ),onChanged: (Text){
              SearchMethod(Text);
            },
        )  ,
        actions: [
           !searchstate?IconButton(onPressed: (){
            setState((){

              searchstate = !searchstate ;
            }
            
            
            
            );



          }, icon: Icon(Icons.cancel,color: Colors.white,)
          ):IconButton(onPressed: (){
            setState((){

              searchstate = !searchstate ;
            }
            
            
            
            );



          }, icon: Icon(Icons.search,color: Colors.white,)
          ),
        ],
        toolbarHeight: 120,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30),top: Radius.circular(30))),
      )
      
      
      



      ),
      endDrawer: Drawer(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.red,
              child:Icon(Icons.qr_code) ,),
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
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                 builder: (context,snapshot){
                  if (snapshot.hasData)
                  return salon();
                  else {
                    return HomeScreen();
                  }
                 }
                 
                 )));
                   
                   
                 },
 
 
               ),ListTile(
                 title: Text("لاعلاناتكم على التطبيق"),
                 leading: Icon(Icons.money),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> marcket()));
                   
                   
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
          
            Padding(padding: EdgeInsets.only(top: 3,bottom: 15,left:15)),
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
              
              child: PageView(
                children: [
                  
               
                Image.asset("images/12.jpg",fit: BoxFit.fitWidth,),
               
                
               
                
                Image.asset("images/mmm.jpg",fit: BoxFit.fitWidth,),
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
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit .scaleDown,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.horizontal(
                 left: Radius.circular(20),
               right: Radius.circular(20)),
              
               ),
               

               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 150,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: 1,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
                    },),
                    Padding(padding: EdgeInsets.all(20)),
             
                  ],),
                ),
                 
                 
                 
                 
                 
                 
                 
                ),
                  Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20))),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 80,
                  child: Stack(children: [
                    Image.asset("images/lo.png",scale: .6,fit:BoxFit.scaleDown ,),
                    GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => salon()));
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

  void SearchMethod( String text) {

    DatabaseReference searchRef = FirebaseDatabase.instance.reference().child("Data");
    searchRef . once().then((DataSnapshot snapShot ){

      var keys = snapShot.value.keys ;
      var values = snapShot.value ;
     
      
    });
    
  }
}