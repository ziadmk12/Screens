import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widget2.dart';
import 'package:flutter_application_1/screens/widget3.dart';


class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme:IconThemeData(color: Color.fromARGB(255, 31, 147, 91)) ,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.videocam),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: ''),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color:Colors.black,
          child: SingleChildScrollView(
            child: Column(
                    children: [                     
                        Container(padding: EdgeInsets.all(10), margin: EdgeInsets.only(top: 40), child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Watch Now',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                          Icon(Icons.search,color: Colors.white,)
                        ],)),
                      SizedBox(height: 20,),                  
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Container(padding: EdgeInsets.only(left: 10), child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                              children: [    
                                Widget2(text: 'Populars',color: Color.fromARGB(255, 31, 147, 91),routeNamed:'screen5'),
                                SizedBox(width: 5,),
                                Widget2(text: 'Coming Soon',color: Color.fromARGB(255, 69, 72, 71),routeNamed:'screen5'),                   
                                SizedBox(width: 5,),
                                Widget2(text: 'Top Realited',color: Color.fromARGB(255, 69, 72, 71),routeNamed:'screen5'),
                                SizedBox(width: 5,),
                                Widget2(text: 'Best Series',color: Color.fromARGB(255, 69, 72, 71),routeNamed:'screen5'),
                                SizedBox(width: 5,),
                                Widget2(text: '1998',color: Color.fromARGB(255, 69, 72, 71),routeNamed:'screen5'),
                                SizedBox(width: 5,),
                                Widget2(text: '2023',color: Color.fromARGB(255, 69, 72, 71),routeNamed:'screen5'),
                                SizedBox(width: 5,),                                                                                                
                              ]
                            ),),
                          ],
                        ),                  
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child:  Column(
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Wrap(
                                      children:[                       
                                          Widget3(ImagePath: './images/11.jpg', Title: 'Dont Breathe 2\n(2021)',Discription: 'Norman a visually challenged navy veteran , lives in quiet solace with his foster ',routeName: 'screen4',),
                                          Widget3(ImagePath: './images/12.jpg',Title: 'The Tomorrow War\n(2021)',Discription: 'The word is stunned when a group of time travellers arrive from the year 2051 to deliver an urgent message ',routeName: 'screen4',),
                                          Widget3(ImagePath: './images/13.jpg',Title: 'The Suicide Squad\n(2021)',Discription: 'A government agent manipulates supervillains to become a part of a dangerous',routeName: 'screen4',),                                                                                                                                 
                                          Widget3(ImagePath: './images/15.jpg',Title: 'Shang-Chi and the Legend of the Ten Rings\n(2021)',Discription: 'Norman a visually challenged navy veteran ,',routeName: 'screen4',),                                                                                                                                 
                                      ]
                                    )
                                ),                                
                              ],
                            ),
                          ), 
                    ],
              ),
          ),
          ),
        );
    
  }
}

