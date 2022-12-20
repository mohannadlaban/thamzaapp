import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// ignore: camel_case_types
class marcket extends StatelessWidget {
  const marcket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.white38,
       
      )),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child:  Image.asset("images/mark.png",fit: BoxFit.fitWidth,),
        





      ),
      
      );
  }
}