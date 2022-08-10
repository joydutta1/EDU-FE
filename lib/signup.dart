import '/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySignup extends StatelessWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          reverse: true,
          child:
          Column(
          
          children: [
            Image.asset('images/signup.png',
            width: 250,
            height: 250,),
           Container(

                  child: Row(children:[Text('Sign up',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'roboto',
                  color: Color.fromARGB(255, 72, 77, 88)
                  ),
                 
                  ),])
                  ),

            Container(
              //margin:EdgeInsets.only(top:50),
              child:Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "something@xyz.com",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "*******",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Mark Jackson",
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      textStyle: TextStyle(fontWeight: FontWeight.w300,
                      fontSize: 18),
                      primary: Color.fromARGB(255, 102, 0, 30)
                    ),
                    child: Text('Signup'),
                    onPressed: ()=>{
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>MyLogin())
                      )
                    },
                  ),
                  SizedBox(height: 15,),
                  Container(
                    
                    child: Row(children: [
                      Text("Joined us before? "),
                      GestureDetector(
                        child: Text("Login"),
                        onTap: ()=>{
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyLogin()))
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