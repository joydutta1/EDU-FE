import '/home.dart';
import '/signup.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        child: 
        SingleChildScrollView(
          reverse: true,
          child: Column(
          children: [
            Image.asset('images/EDUlogo.png'),
            Text('EDU Evaluation',
            style: TextStyle(fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'roboto',
            color: Color.fromARGB(255, 102, 0, 30)
            ),),

            Container(
              margin:EdgeInsets.only(top:40),
              
              child:Column(
                children: [
                  Container(

                  child: Row(children:[Text('Login',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'roboto',
                  color: Color.fromARGB(255, 72, 77, 88)
                  ),
                 
                  ),])
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "something@xyz.com",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "*******",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      textStyle: TextStyle(fontWeight: FontWeight.w300,
                      fontSize: 18),
                      primary: Color.fromARGB(255, 102, 0, 30)
                    ),
                    child: Text('Login'),
                    onPressed: ()=>{
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHome()))
                    },
                  ),
                  SizedBox(height: 20,),
                  Container(
                    
                    child: Row(children: [
                     const Text("New to here? "),
                      GestureDetector(
                        child: const Text("Signup"),
                        onTap: ()=>{
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MySignup()))
                        },
                      )
                    ]),
                  )     
                ],
              )
            )
          ]),
      ))
    );
  }
}