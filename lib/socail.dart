// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// ignore: camel_case_types
class socail extends StatelessWidget {
  const socail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.white38,
       
      )),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          Container(
            child:  Image.asset("images/we.png",fit: BoxFit.fitWidth,),
            padding: EdgeInsets.all(10),


          ),
          Container()
        ],
      ),
      
      );
  }
}