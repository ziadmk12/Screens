import 'package:flutter/material.dart';



class Widget3 extends StatelessWidget {
  final String Title;
  final String Discription;
  final String routeName;
  final String ImagePath;
  const Widget3({super.key, required this.Title,required this.ImagePath, required this.Discription,required this.routeName});

  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: (){
      Navigator.of(context).pushNamed(routeName);
    },
      child: Container(
        padding: EdgeInsets.all(5),
                                 
                                  margin: EdgeInsets.all(5), height: 310,width: 180,
                                  child: Column(
                                    children: [
                                    Container(
                                      height: 160,            
                                      child:  Image.asset(ImagePath)
                                    ),
                                    Container(                                                    
                                      child:  Row(
                                        children: [
                                          Flexible(child: Text(Title,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17,color: Colors.white),)),
                                        ],
                                      ),                        
                                    ),
                                    Row(children: [
                                      Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                      Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                      Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                      Icon(Icons.star,size: 17,color: Color.fromARGB(255, 165, 165, 17),),
                                      Icon(Icons.star,size: 17,)
                                    ],),
                                    Wrap(
                                      children : [
                                        Container(
                                        child: Row(
                                          children: [
                                            Flexible(child: Text(Discription,style: TextStyle(color: Colors.white),))
                                          ],
                                        ),
                                      ),
                                      ] 
                                    )
                                                                     
                                    ],
                                  ),
                                ),
    ) ;
  }
}