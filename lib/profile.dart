import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w600
        ),),
        backgroundColor: Color.fromARGB(255, 102, 0, 30),
        
      ),

      body: Container(
        
        margin: EdgeInsets.all(20),
       // color: Colors.blue[800],
        width: double.infinity,
        
        child:SingleChildScrollView(
          reverse: true, 
          child: Column(
          
          children: [
          Image.asset('images/profile.png',height: 300, width: 300,),
          //Text('Full Name'),
          TextField(
            decoration: InputDecoration(
            hintText: "Alex Corner",
            labelText: "Full Name",
            prefixIcon: Icon(Icons.person)
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
            hintText: "jhon@xyz.com",
            labelText: "Email",
            prefixIcon: Icon(Icons.email)
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
            hintText: "******",
            labelText: "Password",
            prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
             Fluttertoast.showToast(
              msg: "profile updated",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
            );

          },
          style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      textStyle: TextStyle(fontWeight: FontWeight.w300,
                      fontSize: 18),
                      primary: Color.fromARGB(255, 102, 0, 30)
          ), 
          child:Text('Save'))


        ])),
      )
    );
  }
}