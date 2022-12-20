//import 'dart:html';
//import 'package:firebase_auth/firebase_auth.dart';


//import 'package:flutter/material.dart';
//import 'package:flutter/gestures.dart';


//class login extends StatefulWidget {
  //const login({ Key? key }) : super(key: key);

  //@override
  //State<login> createState() => _loginState();
//}

//c/ass _loginState extends State<login> {
  //@override
  //Widget build(BuildContext context) {
  //final emailController = TextEditingController();
  //final passwordController = TextEditingController(); 
    //return Scaffold();
  
//}


//class _Loginwidgetstate extends State<loginwidget> {
  //final emailController = TextEditingController();
  //final passwordController = TextEditingController(); 




//@override 
//void dispose(){

//emailController.dispose() ;
//passwordController.dispose();

//super.dispose();


//}
//@override
//Widget build (BuildContext context) => SingleChildScrollView(
//padding:  EdgeInsets.all(16),
//child:Column(
  //mainAxisAlignment: MainAxisAlignment.center,
  //children: [
    //SizedBox(height: 40,),
    //TextField(
      //controller: emailController,
      //cursorColor: Colors.white,
      //textInputAction: TextInputAction.next,
      //decoration: InputDecoration(labelText:'Email'),
    
    //),
    //SizedBox(height: 4,),
    //TextField(
      //controller:passwordController ,
      //textInputAction: TextInputAction.done,
      //decoration: InputDecoration(labelText:'password'),
      //obscureText: true,
    //),
    //SizedBox(height: 20,),
    //ElevatedButton.icon(style: ElevatedButton.styleFrom(
     // minimumSize: Size.fromHeight(50),

    //) ,icon: Icon(Icons.lock_open,size:32 ),
    //label: Text('sign in',
    
    //style: TextStyle(fontSize: 24),
    
    //),
    //onPressed: signIn,

   // ),

  //],
//)
//);

///Future signIn () async{
 // await FirebaseAuth.instance.signInEmailAndPassword(

   // email: emailController.text.trim(),
   // password: passwordController.text.trim(),
  //);
//}
//}
