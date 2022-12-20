import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mystylee/home_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'local/locala.dart';



void main()async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mystyle',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
        primaryColor: Colors.brown[300],
        scaffoldBackgroundColor:Colors.white ,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      
      locale: Get.deviceLocale,
      
      
      
      home: const HomeScreen(),
    );
  }
}

