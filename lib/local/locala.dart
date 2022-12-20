import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mylocale implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    "ar":{
      "1":"البحث",
      "2":" رقم التواصل",
      "3":" هل المحلقة مغتوحة ؟ ",
      "4": " رقم التواصل :0594136011 ",


    },
    "en":{
      "1":"search",
      "2":"number",
      "3": " it is open ",
      "4": "call :0594136011 ",

    }


  };
  
}