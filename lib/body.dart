// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace, unused_import

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mystylee/men.dart';
import 'package:mystylee/wmen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Body  extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool searchstate = false ;
    return SingleChildScrollView(
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          topwithsearch(size: size),
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
                        Image.asset('images/2.png',),
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
                        Image.asset('images/1.png',),
                        GestureDetector(onTap: (){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> wmen()));
                        },)
                
                      ],
           
                      ),

                    ),

                  ),
                )

              ],              
            )


          )
    
          
        ],
        
      ),
    );
  }
}

class topwithsearch extends StatelessWidget {
  const topwithsearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height *0.2,
    margin:EdgeInsets.only(bottom: 25) ,
    child:Stack(
      children: [
        // ignore: duplicate_ignore, duplicate_ignore
        Container(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 35 + 6),
          height: size.height *0.2 - 27,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36)
        )
        ),
        child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: size.width,
                      width:size.width ,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle),
                    ),
                    Image.asset("images/lo.png",
                    height:200,
                    width: 200,
                    fit: BoxFit.scaleDown,),
                    
            
            
            //هان في صورة 

          ],
        ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child:
           Container( 
             alignment: Alignment.center,
             margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
             height: 54,
             decoration: BoxDecoration(
               color:Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Colors.blue.withOpacity(0.23), 
              ),
              ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged:(value){} ,
                      decoration: InputDecoration(
                        hintText: "1".tr,
                        hintStyle: TextStyle(color:Colors.blueGrey.withOpacity(0.5),
                         ),
                         enabledBorder: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         suffixIcon: Icon(Icons.search),
                  
                      ),
                    ),
                  ),

                ],
              ),
        
        
      )
        
        
        
        )
      ],)
    );
  }
}