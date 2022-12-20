
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// ignore: camel_case_types
class log extends StatelessWidget {
  const log({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.white38,
       
      )),
      // ignore: avoid_unnecessary_containers
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,width: double.infinity
          ),
          buildpostop(),

            buildbobottom(),
            buildcontainer(),
            
        

            BuildFormBox(),
                 Container(
              margin:EdgeInsets.only (left: 150,top:420),
              child:
              Column(
                children: [
                  // ignore: deprecated_member_use
                  InkWell(onTap: (){},child: Text("هل نسيت كلمة المرور؟ ")),
                  SizedBox(height: 23,),
                  RaisedButton(
                    color: Colors.blueAccent,
                    padding:EdgeInsets.symmetric(vertical: 10,horizontal: 30) ,
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    mainAxisSize:MainAxisSize.min ,
                    children: [
                      Text("تسجيل الدخول",style: TextStyle(color: Colors.white,fontSize: 20),),
                       Icon(Icons.arrow_back)

                    ],
                  ),)
                  
                ] 
              ) ,

            ),
          Container(
            margin: EdgeInsets.only(left: 160,top:500),
            child: RichText(text:TextSpan(style: TextStyle(color: Colors.black, fontFamily: 'cairo'),children: <TextSpan>[
              TextSpan(text:"في حال ليس لديك حساب ", ),
              TextSpan(text:"يمكنك انشاء حساب من هنا",style: (TextStyle(color: Colors.blue)) ),
            ])),
          )
            
        ],



      )




    
      );
      
      
  }

  // ignore: non_constant_identifier_names
  Center BuildFormBox() {
    return Center(
            
            child:
            
             Container(
              height: 250,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[ BoxShadow(color: Colors.black,
                spreadRadius: 0.1 , blurRadius: 1, offset: Offset(1,1))
              ]),
              
              child: Form(child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("اسم المستخدم"),
SizedBox(
  height: 10,
),


TextField(
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(4),
    hintText: "ادخل اسم المستخدم هنا" ,
  filled: true,
  fillColor: Colors.grey[200],
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
      color: Colors.grey,
style: BorderStyle.solid,width: 1      ) ),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.blue,style: BorderStyle.none, width: 1)
)

  ),
),
Text("كلمة المرور", ),
SizedBox(
  height: 10,
),

TextField(
  obscureText: true,
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(4),
    hintText: "ادخل كلمة المرور هنا " ,
  filled: true,
  fillColor: Colors.grey[200],
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
      color: Colors.grey,
style: BorderStyle.solid,width: 1      ) ),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.blue,style: BorderStyle.none, width: 1)
)

  ),
)
],

                ),
              ),),
            ),
            
          );
          
  }

  Container buildcontainer() {
    return Container(
       height: 1000,
            child: SingleChildScrollView(
              child: Column(children: [
                Center(
                  child: Container( margin: EdgeInsets.only(top:30),
                 child: Text("تسجيل الدخول",
                 style:TextStyle(color: Colors.white,fontSize: 20) ),
                 ),
                 
                 
                 
                 
                 
                 
                 ),
              
                  
                Padding(
                  padding: EdgeInsets.only(top: 20)),
                
                Container(
                  height: 100,
                width: 100,
                decoration:BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                      ,
                      blurRadius: 8,
                      spreadRadius: 0.6,
                    )
                  ]
                ),
                child: Stack(children: [
                   Positioned(
                     
                     top: 25 ,
                     right: 25,
                     child: Icon(Icons.person_outlined,
                     size: 50,color: Colors.grey[100],)
               ),
               Positioned(
                     
                     top: 35 ,
                     left: 60,
                     child: Icon(Icons.arrow_back,
                     size: 30,color: Colors.grey[100],)
               ),
               
               
               
                ],
                )
                ),



                



              ],),
              
            ),
            
          );
          
          
  }

  Positioned buildpostop() {
    return Positioned(
          child: Transform.scale(scale:1.3,
            child: Transform.translate(
              offset: Offset(80, -150),

              child: Container(
                height: 300,
        width: 300, 
        
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),
      color: Colors.grey[800]
      ),
        
        
        ),
            ),
          ));
  }

  Positioned buildbobottom() {
    return Positioned(
            top: 200,
            right: 400,
            child: Container(
            
            height: 300,
        width: 300, 
        
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),
      color: Colors.blue[800]?.withOpacity(0.2)
      ),
        
        
        ),
        
        
        );
        
        
  }
}