import 'package:flutter/material.dart';
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
            color: Colors.teal[900],
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
          child: Column(
            children: [
              Container(
                margin:EdgeInsets.symmetric(vertical: 30) ,
                height: size.width*0.8,
                
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: size.width*0.3,
                      width:size.width*0.7 ,
                      decoration: BoxDecoration(
                        color: Colors.teal[900],
                        shape: BoxShape.circle),
                    ),
                    Image.asset("images/lo.png",
                    height: size.width*0.3,
                    width: size.width*0.75,
                    fit: BoxFit.cover,),
                    
                  ],
                ),
                

              ),
            ],
          ),
          

        ),
        GridView(
           
           
           
           
           gridDelegate:
           SliverGridDelegateWithFixedCrossAxisCount
           (crossAxisCount: 3,
           mainAxisSpacing:10,
           crossAxisSpacing: 10  ), 
           children: [
             
             Container(
               
               child:Card(
                 
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
                      Image.asset('images/a.jpg',),
                      
              
                    ],
         
                    ),

                  ),
               ),
               
               
              
               color: Colors.pink[200],
           
         ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical:80),
          child: Text("Always there for you",
          style: Theme.of(context).textTheme.headline6),
        ),
        Text("دائما موجودون لاجلكم ",
        style:TextStyle(fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.black12,
        
        
        )),

         Container(
           child: 
           Icon(Icons.maps_ugc)
           ,
         )
        

         
        
      ]
      )
    ],
      
    );
  }
}