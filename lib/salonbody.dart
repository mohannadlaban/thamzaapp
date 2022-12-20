import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'home_screen.dart';
import 'save.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class SalonBody extends StatelessWidget {
  const SalonBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding:  EdgeInsets.symmetric(horizontal: 20),
          
          decoration: BoxDecoration(
            color: Colors.cyan[900],
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
                      
                        shape: BoxShape.circle),
                    ),
                    Container(
                      child:
                    Image.asset("images/h2.png",
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
                 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                   
                 },
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    ListTile(
                 
                 leading: Icon(Icons.save , size: 25,),
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
                child: Text("صالون style - السينما "),
                margin: EdgeInsets.only(top: 10),
                






              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("4".tr),
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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
                color: Colors.cyan[700],
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