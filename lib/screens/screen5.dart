import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widget3.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        }, child: Icon(Icons.arrow_back_ios)),   
        title: Center(child: Text('Finder')),     
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search,color: Colors.white,),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text('Comming Soon',style: TextStyle(color: Colors.white),),
                      Icon(Icons.mic,color: Colors.white,)
                    ],),
                    height: 30,
                    width: MediaQuery.of(context).size.width-90,                
                  )
                ],
              ),
               Column(
                                children: [
                                   Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Wrap(
                                        children:[                       
                                            Widget3(ImagePath: './images/11.jpg',Title: 'Black Panther\n(2021)',Discription: 'Norman a visually challenged navy veteran , lives in quiet solace with his foster ',routeName: 'screen4',),
                                            Widget3(ImagePath: './images/12.jpg',Title: 'Green Book\n(2021)',Discription: 'The word is stunned when a group of time travellers arrive from the year 2051 to deliver an urgent message ',routeName: 'screen4',),
                                            Widget3(ImagePath: './images/13.jpg',Title: 'The Tomorrow Wear\n(2021)',Discription: 'A government agent manipulates supervillains to become a part of a dangerous',routeName: 'screen4',),                                                                                                                                 
                                            Widget3(ImagePath: './images/17.jpg',Title: 'Titanic\n(2021)',Discription: 'Norman a visually challenged navy veteran ,',routeName: 'screen4',),                                                                                                                                 
                                            Widget3(ImagePath: './images/15.jpg',Title: 'Shawshank\n(2021)',Discription: 'Norman a visually challenged navy veteran ,',routeName: 'screen4',),                                                                                                                                 
                                            Widget3(ImagePath: './images/16.jpg',Title: 'Shang-Chi and the Legend of the Ten Rings\n(2021)',Discription: 'Norman a visually challenged navy veteran ,',routeName: 'screen4',),                                                                                                                                 
                                        ]
                                      )
                                  ),
                                                
                                ],
                              ),
                            
        
            ],
          ),
        ),
      ),
    );
  }
}