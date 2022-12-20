// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// ignore: camel_case_types
class save extends StatelessWidget {
  const save({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.cyan,
        title: Text("حجز موعد"),
       
      )),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          Container(
        
        child: TextField(
           decoration: InputDecoration(
    contentPadding: EdgeInsets.all(4),
    hintText: " اسم الزبون  " ,
  filled: true,
  fillColor: Colors.cyan,
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
      color: Colors.pink,
style: BorderStyle.solid,width: 1      ) ),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.pink,style: BorderStyle.none, width: 1)
)

  ),






        ),

        
        



        





      ),
      Padding(padding: EdgeInsets.only(top: 10)),
      Container(
        
        
        child: TextField(
           decoration: InputDecoration(
    contentPadding: EdgeInsets.all(4),
    hintText: "  ساعة الحجز  " ,
  filled: true,
  fillColor: Colors.cyan,
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
      color: Colors.pink,
style: BorderStyle.solid,width: 1      ) ),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.pink,style: BorderStyle.none, width: 1)
)

  ),






        ),









      ),
      Padding(padding:EdgeInsets.only(top: 10)),
      FloatingActionButton(
        backgroundColor: Colors.cyan,
        child:
        
         Icon(Icons.add,color: Colors.pink,),
        
        onPressed: (){})
        ]
      )

      
      
      
     
      );
  }
}