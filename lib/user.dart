// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mystylee/gps.dart';
import 'package:mystylee/image.dart';
import 'package:mystylee/number.dart';
import 'package:mystylee/wmen.dart';

import 'men.dart';


// ignore: camel_case_types
class search extends StatelessWidget {
  const search({ Key? key }) : super(key: key);

  get size => null;

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          
          Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(top: 50,left: 0,right: 0),
            child:Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                SizedBox(
                  height: 200,
                  width: 180,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin:EdgeInsets.all(20),
                    borderOnForeground: true,
                    shadowColor: Colors.blue[200],
                    semanticContainer: true,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: 
                      Stack(alignment:Alignment.center ,
                      children: [
                        Text("ادخل معلومات المستخدم"),
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> men()));
                        },)
                
                      ],
           
                      ),

                    ),

                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 180,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin:EdgeInsets.all(20),
                    borderOnForeground: true,
                    shadowColor: Colors.blue[200],
                    semanticContainer: true,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: 
                      Stack(alignment:Alignment.center ,
                      children: [
                       Text("اضف صورا"),
                        GestureDetector(onTap: (){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> image()));
                        },)
                
                      ],
           
                      ),

                    ),

                  ),
                ),
                  SizedBox(
                  height: 200,
                  width: 180,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin:EdgeInsets.all(20),
                    borderOnForeground: true,
                    shadowColor: Colors.blue[200],
                    semanticContainer: true,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: 
                      Stack(alignment:Alignment.center ,
                      children: [
                        Text("GPS"),
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> gps()));
                        },)
                
                      ],
           
                      ),

                    ),

                  ),
                ),
                  SizedBox(
                  height: 200,
                  width: 180,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin:EdgeInsets.all(20),
                    borderOnForeground: true,
                    shadowColor: Colors.blue[200],
                    semanticContainer: true,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: 
                      Stack(alignment:Alignment.center ,
                      children: [
                        Text("3".tr)  ],
           
                      ),

                    ),

                  ),
                ),
                 SizedBox(
                  height: 200,
                  width: 180,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin:EdgeInsets.all(20),
                    borderOnForeground: true,
                    shadowColor: Colors.blue[200],
                    semanticContainer: true,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: 
                      Stack(alignment:Alignment.center ,
                      children: [
                       Text("2".tr),
                        GestureDetector(onTap: (){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> number()));
                        },)
                
                      ],
           
                      ),

                    ),

                  ),
                ),

                


              ],              
            )


          )
    
          
        ],
        
      ),
    );
  }
}

    
  
