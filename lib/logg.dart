import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logg extends StatefulWidget {
  const logg({ Key? key }) : super(key: key);

  @override
  State<logg> createState() => _loggState();
}

final _emailcontroller = TextEditingController();
final _passwordcontroller = TextEditingController();
Future signIn() async{
  await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text.trim(),
   password: _passwordcontroller.text.trim());
}


@override
void dispose(){
 
  _emailcontroller.dispose();
  _passwordcontroller.dispose();
}


class _loggState extends State<logg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                Image.asset('lo.png',
                height: 150,
                
                ),
          
                SizedBox(height: 20,),
          
          
                Text('Sign In' ),
          
          
                Text('welcome to mazun app' ),
          
          
                SizedBox(height: 50,),
          
                
          
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'email',
          
          
                      ),
                    ),
                  ),
                ),
          SizedBox(height: 10,),
                
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextField(
                      controller: _passwordcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                        
          
                      ),
                    ),
                  ),
                ),
          
                SizedBox(height: 15,),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(16),
                            
                      decoration: BoxDecoration(color: Colors.amber[900],
                      borderRadius: BorderRadius.circular(12)
                      ),
                      
                      child: Center(child: Text('log in ',
                            
                      )
                                  
                      ),
                      
                            
                    ),
                  ),
                )
          
          
          
          
          
          
          
                
              ],
                
                
                
                
                
                
            ),
          ),
        ),
      ),








    );
  }
}