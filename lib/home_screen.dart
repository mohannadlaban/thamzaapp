import 'package:flutter/material.dart';
import 'package:mystylee/body.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    bool searchstate = false ;
    return  Scaffold(
      appBar: buildappbar(),
      // ignore: prefer_const_constructors
      body:  Body(),
    );
  }

  AppBar buildappbar() {
    return AppBar(
      elevation: 0,
      
    )
    ;
  }
}






