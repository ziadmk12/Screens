import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}


class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.white),
          selectedIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 14, 40, 62),
          unselectedIconTheme:  IconThemeData(color: Colors.white) ,
          unselectedLabelStyle:TextStyle(color: Colors.white) ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.military_tech_sharp),label: 'My cart'),     
      ]),
      resizeToAvoidBottomInset: false,
      body: Container(  
      
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 80,
          
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(                   
                    children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row( 
                    children: [Text('Daily \nGrocery Food',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 17, 36, 50)),),],),
                        ),                                  
                    ],
                  ),                
                  Column(
                    children: [Container(
                      margin: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 34, 
                        decoration: BoxDecoration(border:Border.all(color: Color.fromARGB(255, 209, 205, 205),width: 2 ),borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Icon(Icons.notifications,color: Color.fromARGB(255, 6, 23, 36),),
                      )],
                  )
                ],
              ),     
            ), 
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  listfruits(texte: 'Fruits',colors: Color.fromARGB(255, 6, 23, 36),fontColors: Colors.white,),
                  SizedBox(width: 10,),
                  listfruits(texte: 'Vegetable',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                  SizedBox(width: 10,),
                  listfruits(texte: 'Fast-Food',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                  SizedBox(width: 10,),
                  listfruits(texte: 'Snack',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                   SizedBox(width: 10,),
                  listfruits(texte: 'Healthy-Food',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                   SizedBox(width: 10,),
                  listfruits(texte: 'Snack',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                   SizedBox(width: 10,),
                  listfruits(texte: 'Snack',colors: Color.fromARGB(255, 221, 219, 219),fontColors: Color.fromARGB(255, 6, 23, 36)),
                ],
              ),
             
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Fruits',style: TextStyle(color:Color.fromARGB(255, 6, 23, 36),fontSize: 23,fontWeight: FontWeight.w600),),
                Text('see all',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 128, 126, 126)),)
              ],
            ),         
          ), 
          Container(           
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                children: [
                ListFood(fruitName: 'Apple',weightFruits:'1.50/kg',fruitName2: 'Dragon',weightFruits2:'5.50/kg'),             
                ListFood(fruitName: 'Banana',weightFruits:'4/kg',fruitName2: 'Capsicum',weightFruits2:'2.50/kg'),              
                ListFood(fruitName: 'Strawberry',weightFruits:'3.2/kg',fruitName2: 'Broccoli',weightFruits2:'4.50/kg'),
                ],
              ),),
            ),
          )         
        ],
        
      ),
    ),
    );
    
  }
}

class listfruits extends StatelessWidget {
  const listfruits({super.key,required this.texte,required this.colors,required this.fontColors});
final String texte;
final Color colors;
final Color fontColors;
  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(color:colors ,borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 35,                    
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(texte,style: TextStyle(fontSize: 15,color:fontColors),),
                    )),
                  );
  }
}

class ListFood extends StatelessWidget {
  const ListFood({super.key,required this.fruitName,required this.weightFruits,required this.fruitName2,required this.weightFruits2});
  final String fruitName;
  final String weightFruits;
  final String fruitName2;
  final String weightFruits2;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          Row(children: [Container(
                            height: 128,width:170,
                            // child:Image.asset('fruits_picture/3.png')       
                            )],),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7), child: Text(fruitName,style:TextStyle(fontWeight: FontWeight.w500),),),],),
                           SizedBox(height: 5,),
                          Row(children: [Container(margin: EdgeInsets.only(left: 7),child:Row(children: [
                            Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                            Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                            Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                            Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                            Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),)
                            ],))],),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                          children: [Container(margin: EdgeInsets.only(left: 10),child: Text(weightFruits),),
                          Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.favorite,color: Colors.white,), 
                          decoration: BoxDecoration(color: Color.fromARGB(255, 249, 164, 158),borderRadius: BorderRadius.all(Radius.circular(10))), height: 30,width: 30,)],),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 200,
                    //   width: 170,
                    //   decoration: BoxDecoration(
                    //     color: Color.fromARGB(255, 238, 235, 235),
                    //     borderRadius: BorderRadius.all(Radius.circular(20))),
                    //   child: Column(
                    //     children: [
                    //       Row(children: [Container(height: 128,width:170)],),
                    //       Row(children: [Container(margin: EdgeInsets.only(left: 7), child: Text(fruitName2,style:TextStyle(fontWeight: FontWeight.w500),),),],),
                    //        SizedBox(height: 5,),
                    //       Row(children: [Container(margin: EdgeInsets.only(left: 7),child:Row(children: [
                    //         Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                    //         Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                    //         Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                    //         Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),),
                    //         Icon(Icons.star,size: 18,color: Color.fromARGB(255, 219, 219, 3),)
                    //         ],) )],),
                    //       Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    //       children: [Container(margin: EdgeInsets.only(left: 10),child: Text(weightFruits2),),
                    //       Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.favorite,color: Colors.white,), 
                    //       decoration: BoxDecoration(color: Color.fromARGB(255, 249, 164, 158),borderRadius: BorderRadius.all(Radius.circular(10))), height: 30,width: 30,)],),
                    //     ],
                    //   ),
                    // ),
                    
                  ],
                 ),
    );
  }
}