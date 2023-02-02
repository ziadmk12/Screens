import 'package:flutter/material.dart';
import 'package:flutter_application_1/Booking%20BookApp/signup.dart';







class TextformField extends StatelessWidget {
  const TextformField({super.key,required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return  Container(height:42,
    
             width: MediaQuery.of(context).size.width-50,
              child: TextFormField( decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 20), hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(255, 33, 89, 135),fontWeight: FontWeight.w500),filled: true, fillColor: Colors.white,
               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color:Color.fromARGB(255, 165, 206, 239) )), 
               hintText: hinttext,border: UnderlineInputBorder()),));
  }
}

class LoginBook extends StatefulWidget {
  const LoginBook({super.key});

  @override
  State<LoginBook> createState() => _LoginBookState();
}

class _LoginBookState extends State<LoginBook> {
   bool valuefirst=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 195, 223, 247),
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,     
            children: [
            Container(child: Image.asset('./images/logo.png',width: 200,height: 200,color:Color.fromARGB(255, 5, 49, 86)),),
             SizedBox(height: 15,),
                TextformField(hinttext: 'Enter email id',),
                SizedBox(height: 10,),
                TextformField(hinttext: 'Enter password',),               
                Row(
                  children: [
                    Checkbox( value: this.valuefirst, onChanged: (value) => {}, ),
                    Text('Remember Me')
                  ],
                ),
               InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('Homepage');
                },
                 child: Container(height: 40,width: MediaQuery.of(context).size.width-49,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromARGB(255, 5, 49, 86), 
                  ),
                  child: Center(child: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 17,))),
                 ),
               ),
                SizedBox(height:12,),
               Text('Forgot password?'),
                SizedBox(height: 4,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [               
                 Text('Dont have an account ?'),
                 
                 InkWell(child: Text('  Sign Up?',style: TextStyle(fontWeight: FontWeight.w500),),onTap: (){
                  Navigator.of(context).pushNamed('signupBook');
                 }),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}