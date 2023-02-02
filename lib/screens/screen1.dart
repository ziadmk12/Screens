import 'package:flutter/material.dart';

var selectedContry = "USA";
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}
  int _selectedIndex=0;
class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
      return Scaffold( 
        appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 32, 35, 86),
          elevation: 0,
          leading: Icon(Icons.menu),
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          
          selectedLabelStyle: TextStyle(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.grey),
          
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.album_outlined),label: ''),
        ],currentIndex: _selectedIndex,
        
        ),
        body: Container(child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                  ),
              color: Color.fromARGB(255, 32, 35, 86),),
              height:220 ,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(margin: EdgeInsets.only(left: 15), child: Text('Covid-19',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),)),
                        Container(
                          child: DropdownButton(borderRadius: BorderRadius.all(Radius.circular(20),),
                            items: ['USA','UK'].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),onChanged: (value){
                            value:selectedContry;
                          },),
                        )
                      ],
                    ),                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text('Are you feeling sick ?',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),),
                      )],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                        child: Container( margin: EdgeInsets.only(left: 20),child: Text('If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help. ?',style: TextStyle(color: Colors.white,fontSize: 12,),)),                
                  ),
                    SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(            
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 201, 83, 75),),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.call,color: Colors.white,),
                            Text("Call Now",style: TextStyle(color: Colors.white),),                 
                          ],
                        )
                        ,),
                        height: 35,
                        width: 120,                       
                      ),
                      Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 9, 131, 231),),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.sms,color: Colors.white,),
                            Text('Send SMS',style: TextStyle(color: Colors.white),),
                          ],
                        )),
                        height: 35,
                        width: 120,                        
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Prevention',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(70)),color: Color.fromARGB(255, 250, 183, 205)),
                      ),
                      SizedBox(height: 10,),
                      Text('Avoid close contact')
                    ],       
                  ),  
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(70)),color: Color.fromARGB(255, 250, 183, 205)),
                      ),
                      SizedBox(height: 10,),
                      Text('Clean your hands often')                      
                    ],       
                  ),
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(70)),color: Color.fromARGB(255, 250, 183, 205)),
                      ),
                      SizedBox(height: 10,),
                      Text('Wear a facemask')                   
                    ],       
                  ),       
                ],            
              ),
            ),
            SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(20),
             child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
              
              gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomCenter,stops: [0.2,0.9],
              colors: [Color.fromARGB(255, 32, 35, 86),Color.fromARGB(255, 148, 153, 238),             
              ])
              ),
              height: 130,
              width: double.infinity,
              
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Text("data")
                    ],),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [           
                      Text("Do your own test !",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Follow the instructions to\n do your own test",style: TextStyle(color: Colors.white),),
                    ],),

                  ],
               ),
             ),
           ),
           
          ],         
        ),
        ),
      );
  }
}

