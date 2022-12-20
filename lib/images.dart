import 'dart:js';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';


class images extends StatefulWidget {
  const images({ Key? key }) : super(key: key);

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar:AppBar(
  title: Text(" اضافة صور "),
) ,

body: Column(
  children: [
    Center(
      child: ElevatedButton(
        onPressed:()async{
        final results = await FilePicker.platform.pickFiles(
          allowMultiple: false,
          type: FileType.custom,
          allowedExtensions: ['png','jpg']
        );
        if (results == null){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content:Text("no file")
          )
          );
        }
        return null ;
      },
       
        
      
      

        
       child:Text("ادخل صورة جديدة"),
    ),
  
),





   ]
   )
   
    );
  }
}