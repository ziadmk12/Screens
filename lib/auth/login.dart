import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Center(child: Image.asset('images/login.png')),
          Center(child: Container(child: Text('Login'),),),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'username',
                    prefixIcon: Icon(Icons.person),








                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',                  
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)
                    )
                  ),
                ),
                SizedBox(
                  height:10
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     child: Text("If you haven't account ",style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 5,),
                    InkWell(child: Text('Click here!',style: TextStyle(color:Colors.blueAccent,fontSize: 17,fontWeight: FontWeight.bold),),),
                  ],
                ),
                 SizedBox(
                  height:10
                ),
                ElevatedButton(onPressed: (){},child: Text('Login'),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blueAccent)),
            )],
            )),
          )
        ],
      ),
    );
  }
}
