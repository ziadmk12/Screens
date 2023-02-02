import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Signup'),),
          Form(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              TextFormField(decoration: InputDecoration(
                      hintText: 'username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1)
                      )
                    ),),
                    SizedBox(
                      height: 10,
                    ),
              TextFormField(decoration: InputDecoration(
                      hintText: 'email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1)
                      )
                    ),),
                    SizedBox(
                      height: 10,
                    ),
              TextFormField(decoration: InputDecoration(
                      hintText: 'password',
                      
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1)
                      )
                    ),)
            ],),
          ))
        ],
         
      ), 
      ); 
  
  }
}
