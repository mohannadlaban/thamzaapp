import 'package:flutter/material.dart';
import 'package:mystylee/map.dart';
import 'package:mystylee/save.dart';

import 'home_screen.dart';
import 'save.dart';
import 'map.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
//AIzaSyD3Yo0x4XhvzfL6JzM7iGJD9RjFghuJrxU
class SalonBodyw extends StatelessWidget {
  const SalonBodyw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding:  EdgeInsets.symmetric(horizontal: 20),
          
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
          child: Column(
            children: [
              Container(
                margin:EdgeInsets.symmetric(vertical: 30) ,
                height: size.width*0.4,
                
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        shape: BoxShape.circle),
                    ),
                    Container(
                      child:
                    Image.asset("images/h1.png",
                    height: size.width*0.4,
                    width: size.width*0.75,
                    fit: BoxFit.fill,),),


                    Container(
                      child:
                      Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
           
               ListTile(
                 
                 leading: Icon(Icons.maps_ugc_outlined,size: 25,),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> map()));
                   
                 },
                 
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    ListTile(
                 
                 leading: Icon(Icons.watch_later , size: 25,),
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>save()));
                   
                 },
                    ),
                    
                    Padding(padding: EdgeInsets.only(top: 10)),
                    ListTile(
                 
                 leading: Icon(Icons.online_prediction , size: 25,color: Colors.green,),
                 onTap: () {},
                 
                    ),

                    
                    
                    
                  ],
                  
                ),
                

              ),
            ],
          ),
          

        ),
        Container(
          child:
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(0),
                child: Text("?????????? style - ?????????????? "),
                margin: EdgeInsets.only(top: 10),
                






              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(" ?????? ?????????????? :0594136011  "),
                margin: EdgeInsets.only(top: 10),






              ),
                Container(
                padding: EdgeInsets.all(20),
                child: Text(" inst: style.ps  "),
                margin: EdgeInsets.only(top: 10),
                )









            ],


          )
      
        )
      ],
      
    )
    ),
    Padding(padding: EdgeInsets.all(10)),
    
     
         // ignore: avoid_unnecessary_containers
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           padding: const EdgeInsets.all(10),
           child: Row(
             children: [
              Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                   
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      
      
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                    
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                    
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                   
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
       ] ),
    



         ),
         SingleChildScrollView( scrollDirection: Axis.vertical,
           padding: const EdgeInsets.all(10),
           child: Row(
             children: [
              Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                   
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      
      
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                    
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                    
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
      Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder
               (borderRadius: 
               BorderRadius.vertical(bottom: Radius.circular(20),
               top: Radius.circular(20)),
               
               ),
               
               borderOnForeground: true,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Stack(children: [
                   
                    GestureDetector(),
                    Padding(padding: EdgeInsets.all(30)),
             
                  ],),
                ),
      ),
       ] ),






         )
    ]);


    
    
  }
}