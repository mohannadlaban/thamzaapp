// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mystylee/body.dart';
import 'package:mystylee/salonbody.dart';
import 'package:mystylee/salonbodyw.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: camel_case_types
class salonw extends StatelessWidget {
  const salonw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.white38,
        title: Text(
          " best choise  ",style: Theme.of(context).textTheme.headline6,
        ),
      )



      ),
      body:SalonBodyw()
    );
  }
}