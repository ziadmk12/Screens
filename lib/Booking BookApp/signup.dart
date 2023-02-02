import 'package:flutter/material.dart';

import 'login.dart';


class SignupBK extends StatefulWidget {
  
  const SignupBK({super.key});

  @override
  State<SignupBK> createState() => _SignupBKState();
}

class _SignupBKState extends State<SignupBK> {
  bool valuefirst=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: InkWell(onTap: (){
        Navigator.of(context).pushNamed('loginbook');
       }, child: Icon(Icons.arrow_back,color: Color.fromARGB(255, 5, 49, 86))),
       backgroundColor: Color.fromARGB(255, 195, 223, 247),
       elevation: 0,
      ),
      body: Container(
        color: Color.fromARGB(255, 195, 223, 247),
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,     
            children: [
            Container(child: Icon(Icons.supervised_user_circle,size: 150,color: Color.fromARGB(255, 5, 49, 86),),),
             SizedBox(height: 15,),
                TextformField(hinttext: 'Enter Full Name',),
                SizedBox(height: 10,),
                TextformField(hinttext: 'Enter Email id',),
                SizedBox(height: 10,),
                TextformField(hinttext: 'Enter password',),
                SizedBox(height: 10,),
                TextformField(hinttext: 'Enter Re-Enter password',),
                         
                SizedBox(height: 15,),
                
               Container(height: 40,width: MediaQuery.of(context).size.width-49,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromARGB(255, 5, 49, 86), 
                ),
                child: Center(child: Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 17,))),
               ),
                SizedBox(height:12,),
               
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [               
                 Text('Already have an account?'),
                 InkWell(onTap: (){
                  Navigator.of(context).pushNamed('loginbook');
       }, child: Text('  Sign in?',style: TextStyle(fontWeight: FontWeight.w500),)),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}