import 'dart:ui';

import 'package:flutter/material.dart';



class books extends StatefulWidget {
  const books({super.key});

  @override
  State<books> createState() => _booksState();
}

class _booksState extends State<books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Color.fromARGB(255, 213, 226, 237),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 40),
                child: Row(children: [
                InkWell(onTap: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back)),
                SizedBox(width: 20,),
                Text("Arts Books",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
                ],)),
                SizedBox(height: 15,),
               Column(
               children: [
                bookList(textBook1: 'See the more story part 2',textBook2: 'The Crusial Decade',routeNamed: 'detailsbook',ImagePatch: './images/3.jpg',ImagePatch2: './images/4.jpg',),
                bookList(textBook1: 'By the Edition',textBook2: 'The leo Dominica',routeNamed: 'detailsbook',ImagePatch: './images/5.jpg',ImagePatch2: './images/6.jpg',),
                bookList(textBook1: 'See the More Story',textBook2: 'Find The Wave Book',routeNamed: 'detailsbook',ImagePatch: './images/8.jpg',ImagePatch2: './images/9.jpg',),
                
                
               ],
               )
            ],
          ),
        ),
      ),
    );
  }
}

class bookList extends StatelessWidget {
  const bookList({super.key,required this.ImagePatch2,required this.ImagePatch,required this.textBook1,required this.textBook2,required this.routeNamed});
    final String textBook1;
    final String textBook2;
    final String routeNamed;
    final String ImagePatch;
    final String ImagePatch2;
  @override
  Widget build(BuildContext context) {
    
    return  Column(
      children: [      
             
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [                                                        
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(routeNamed);
                        },
                        child: Container(child: Column(children: [
                          Row(children: [Container(child: Image.asset(ImagePatch,fit: BoxFit.fill) , 
                          margin: EdgeInsets.all(10), height: 250,width: 160)],),
                          Row(children: [Text(textBook1)],)
                        ],),),
                      ),                                                              
                      Container(child: Column(children: [
                        Row(children: [Container(child: Image.asset(ImagePatch2,fit: BoxFit.fill), margin: EdgeInsets.all(10), height: 250,width: 160)],),
                        Row(children: [Text(textBook2)],)
                      ],),),
                     ],),            
      ],
    );
  }
}