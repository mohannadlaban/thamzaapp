// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class search extends StatelessWidget {
  const search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool searchstate = false ;
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.white38,
       
      )),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          Container(
            child: TextField(
               decoration: InputDecoration(
    contentPadding: EdgeInsets.all(4),
    hintText: " ادخل اسم الصالون" ,
  filled: true,
  fillColor: Colors.grey[200],
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
          color: Colors.grey,
style: BorderStyle.solid,width: 1      ) ),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.blue,style: BorderStyle.none, width: 1)
)

  ),






            ),
            
            



            





          ),
        ],
      ),
      
      );
  }
}