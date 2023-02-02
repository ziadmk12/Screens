import 'package:flutter/material.dart';


class detailsBook extends StatefulWidget {
  const detailsBook({super.key});

  @override
  State<detailsBook> createState() => _detailsBookState();
}

class _detailsBookState extends State<detailsBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Color.fromARGB(255, 213, 226, 237),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column( 
            children: [
              Container(padding: EdgeInsets.only(left: 20,right: 20), margin: EdgeInsets.only(top: 50), height: 320, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [Row(children: [InkWell(onTap: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back))],)],),
                  Column(children: [Container(
                      child: Image.asset('./images/9.jpg'),
                     height: 300,width: 200,color: Color.fromARGB(255, 255, 255, 255),)],),
                  Column(children: [Icon(Icons.turned_in_not)],),               
                ],
              )),
              Container(child: Text('What Comes After - Joanne Tompkins',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),),
              SizedBox(height: 20,),   
              Container( child: Center(child: Text('View Files',style: TextStyle(color: Colors.white,fontSize: 15),)),
                height: 40,width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromARGB(255, 5, 60, 109)),
              ),
              SizedBox(height: 20,),                    
               Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white,),
                    width: MediaQuery.of(context).size.width-50,
                    child: Column(
                      children: [
                        Row(children: [Container(padding: EdgeInsets.only(left: 20,top: 20), 
                        child: Text('Into',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),))],),
                        Row(children: [Container(padding: EdgeInsets.only(left: 20,top: 20), 
                        child: Text('What is Lorem Ipum ?',style: TextStyle(color: Color.fromARGB(255, 7, 39, 64), fontSize: 16,fontWeight: FontWeight.w600),))],),
                        Row(children: [Container(padding: EdgeInsets.only(left: 20,top: 20), 
                        child: Text('Lorem Ipum',style: TextStyle(color: Color.fromARGB(255, 7, 39, 64),fontSize: 12,fontWeight: FontWeight.w600),))],),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('An intrepid researcher, doctor Lily Houghton intrepid researcher, doctor Lily Houghtonintrepid researcher, doctor Lily Houghtonintrepid researcher, doctor Lily Houghton leaves An intrepid researcher, doctor Lily Houghton leaves London to explore the Amazon jungle in search of a miraculous cure. To go down the river, she hires Frank Wolff, a cunning captain as dubious as his dilapidated old tub. Determined to discover the age-old tree whose extraordinary healing powers could change the future of medicine, Lily embarks on an epic quest.',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 7, 39, 64)),),
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