import 'package:flutter/material.dart';



class ListFood extends StatelessWidget {
  const ListFood({super.key});

  @override
  Widget build(BuildContext context) {
    final name;
    final icon; 
    final poids;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 235, 235),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Row(children: [Container(height: 128,width:170)],),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7), child: Text('Apple',style:TextStyle(fontWeight: FontWeight.w500),),),],),
                           SizedBox(height: 5,),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7),child: Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),)],),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                          children: [Container(margin: EdgeInsets.only(left: 10),child: Text("1.50/kg"),),
                          Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.favorite,color: Colors.white,), 
                          decoration: BoxDecoration(color: Color.fromARGB(255, 249, 164, 158),borderRadius: BorderRadius.all(Radius.circular(10))), height: 30,width: 30,)],),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 235, 235),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Row(children: [Container(height: 128,width:170)],),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7), child: Text('Apple',style:TextStyle(fontWeight: FontWeight.w500),),),],),
                           SizedBox(height: 5,),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7),child: Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),)],),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                          children: [Container(margin: EdgeInsets.only(left: 10),child: Text("1.50/kg"),),
                          Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.favorite,color: Colors.white,), 
                          decoration: BoxDecoration(color: Color.fromARGB(255, 249, 164, 158),borderRadius: BorderRadius.all(Radius.circular(10))), height: 30,width: 30,)],),
                        ],
                      ),
                    ),
                    
                  ],
                 ),
    );
  }
}