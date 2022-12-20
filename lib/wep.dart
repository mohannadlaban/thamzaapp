import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: camel_case_types
class wep extends StatelessWidget {
   wep({ Key? key }) : super(key: key);

  String _whatsapp = '';

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
            height: 400,
            width: 400,
            child:  Image.asset("images/we.png",fit: BoxFit.scaleDown,),
            
          ),
          
             Container(
               
            child: 
          
            
            RaisedButton(
              child: Text("التواصل على واتس اب"),
              
              color: Colors.green,
              onPressed: ((){whatsapp();})),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
           Container(
               
            child: 
          
            
            RaisedButton(
              child: Text("التواصل عن طريق الهاتف"),
              
              color: Colors.yellowAccent,
              onPressed: ((){calling();})),
          )
        ],
      ),
      
      );
  }
  calling()async{
    const url = 'tel:+972569835831';
    if ( await canLaunch(url)){
      await launch(url);

    }
    else{
      throw'could not launch $url';
    }
  }
  whatsapp()async{
    const url = "whatsapp://send?phone=++972569835831";
     if ( await canLaunch(url)){
      await launch(url);

    }
    else{
      throw'could not launch $url';
    }

  }
}