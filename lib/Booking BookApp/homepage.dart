import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 213, 226, 237),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 50),
                child: Row(children: [Text('Hello, Eliot',style: TextStyle(fontSize: 20),)],),
              ),
              SizedBox(height: 10,),
              Container(margin: EdgeInsets.only(left: 10), child: Row(children: [Text('Explore Books',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 2, 33, 53)),)],)),
             
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(left: 10,top:20),
                  child: 
                      Row(
                      children: [
                         ExploreBk(),
                        SizedBox(width: 10,),
                            ExploreBk(),                
                      ],
                    ),        
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 12,top: 20,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container( child: Text('Arts Book',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                    InkWell(onTap: (){Navigator.of(context).pushNamed('books');}, child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    book(routeName: 'detailsbook',ImagePatch: './images/4.jpg',),
                    SizedBox(width: 10,),
                    book(routeName: 'detailsbook',ImagePatch: './images/5.jpg'),
                    SizedBox(width: 10,),
                     book(routeName: 'detailsbook',ImagePatch: './images/6.jpg'),
                    SizedBox(width: 10,),
                     book(routeName: 'detailsbook',ImagePatch: './images/4.jpg'),
                    SizedBox(width: 10,),               
                  ],),
                ),
              ),
               Container(
                margin: EdgeInsets.only(left: 12,top: 20,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container( child: Text('Business & Economics',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    book(routeName: 'detailsbook',ImagePatch: './images/8.jpg'),
                    SizedBox(width: 10,),
                    book(routeName: 'detailsbook',ImagePatch: './images/9.jpg'),
                    SizedBox(width: 10,),
                     book(routeName: 'detailsbook',ImagePatch: './images/10.jpg'),
                    SizedBox(width: 10,),
                     book(routeName: 'detailsbook',ImagePatch: './images/11.jpg'),
                    SizedBox(width: 10,),
                
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExploreBk extends StatelessWidget {
  const ExploreBk({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(padding: EdgeInsets.all(20), child: Column(children: [
      Row(children: [Text('Newest Ebooks',style:TextStyle(color: Colors.white,fontSize: 18),)],),
      Row(children: [Text('Explore Newest Books',style:TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500))],),
      Row(children: [Container(height: 150,width: 100,color: Colors.white,),
      Container(height: 150,width: 100,color: Colors.blue,)],)
    ],),
      height: 250,width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30),),
                    color: Color.fromARGB(255, 124, 157, 221),),
                    );
  }
}
class book extends StatelessWidget {
  const book({super.key,required this.routeName,required this.ImagePatch});
  final String routeName;
  final String ImagePatch;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(    
        child: Image.asset(ImagePatch,fit: BoxFit.fill,), 
        height: 200,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      ),
    );
  }
}