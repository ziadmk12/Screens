import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widget2.dart';


class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.black,
       actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
       ],
       leading: InkWell(onTap: (){
        Navigator.pop(context);
       }, child: Icon(Icons.arrow_back_ios_new)),
       elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
               Container(
                height: 150,
                color: Colors.black,
               ),
               SizedBox(height: 25,),
               Container(
                child: Row(children: [
                  Text('Jungle Cruise ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                  Text('(2021)',style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),               
               ),
               Row(
                children: [
                  Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                    Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                    Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                    Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                    Icon(Icons.star,size: 17,color: Colors.white,)
                ],
               ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Row(            
                children: [
              Widget2(text: 'Adventure', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
                SizedBox(width: 5,),
               Widget2(text: 'Action', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
               SizedBox(width: 5,),
               Widget2(text: 'Fantasy', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
               SizedBox(width: 5,),
               Widget2(text: 'Herror', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
               SizedBox(width: 5,),
               Widget2(text: 'Drama', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
               SizedBox(width: 5,),
               Widget2(text: 'War', color: Color.fromARGB(255, 113, 106, 106),routeNamed:'screen5'),
                ],
              ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      child: Text('Storyline',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(children: [
                  Container(child: Flexible(child: Text('An intrepid researcher, doctor Lily Houghton leaves London to explore the Amazon jungle in search of a miraculous cure. To go down the river, she hires Frank Wolff, a cunning captain as dubious as his dilapidated old tub. Determined to discover the age-old tree whose extraordinary healing powers could change the future of medicine, Lily embarks on an epic quest.',style: TextStyle(color: Colors.white,fontSize: 15),)),)
                ],)
                
             
               
            ],
          ),
        ),
      ),
    );
  }
}