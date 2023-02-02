import 'package:flutter/material.dart';



class Widget2 extends StatelessWidget {
  final String text;
  final Color color;
  final String routeNamed;
  
  const Widget2({super.key, required this.text,required this.color,required this.routeNamed}  
  );
    //final String title;
  @override
  Widget build(BuildContext context) {
    
   
    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(routeNamed);
      },
      child: Container(
          height: 30,width: 90,decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color:color
           ),
      child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),),
    );
  }
}