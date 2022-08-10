import 'package:fluttertoast/fluttertoast.dart';

import '/login.dart';
import '/profile.dart';
import '/rank.dart';
import 'package:flutter/material.dart';




class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> _teacherName = ['Wahidul Alam', 'Dr. Mahbubur Rahman', 'javed Anwar', 'Muhammad Asif Hasan']; 
  String? _selectedTeacherName; 
  List<String> _courseName = ['CSE316', 'CSE319', 'PHL102', 'Mobile App Development']; 
  String? _selectedCourseName; 

  //for radio
  Object ?group1 = 1;
  Object ?group2 = 1;
  Object ?group3 = 1;
  Object ?group4 = 1;
  Object ?group5 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 102, 0, 30),
        title: Text("EDU Evaluation",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w600
        ),
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.bar_chart),
            
            onPressed: ()=>{
              
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyRank()))
            },
          ),
          IconButton(
            icon:Icon(Icons.person),
            
            onPressed: ()=>{
              
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyProfile()))
            },
          ),
          IconButton(
            icon:Icon(Icons.logout),
            onPressed: ()=>{
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyLogin()))
            },
          )
        ],
      ),

      body:Container(
        
        margin: EdgeInsets.all(40),
        child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text(
        "Teacher Name",
        style: TextStyle(
          fontSize: 24.0,
          
        ),
        textAlign: TextAlign.left,
      ),
      DropdownButton(
        
        isExpanded: true,
            hint: Text('choose a teacher name'), // Not necessary for Option 1
            value: _selectedTeacherName,
            onChanged: (newValue) {
              setState(() {
                _selectedTeacherName = newValue as String?;
              });
            },
            items: _teacherName.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        SizedBox(height: 20.0,),
        Text(
        "Course Name",
        style: TextStyle(
          fontSize: 24.0,
          
        ),
        textAlign: TextAlign.left,
        ),

        DropdownButton(      
          isExpanded: true,
          hint: Text('choose a course name'), // Not necessary for Option 1
          value: _selectedCourseName,
          onChanged: (newValue) {
              setState(() {
                _selectedCourseName = newValue as String?;
              });
          },
          items: _courseName.map((location) {
            return DropdownMenuItem(
              child: new Text(location),
              value: location,
            );
          }).toList(),
        ),
          SizedBox(height: 20,),
        
        //------------------------------------------ questions
        Container(
          //color: Colors.amber,
          height: 320,
          alignment: Alignment.centerLeft,
          child:SingleChildScrollView(child: Column(children: [
            Text("1. The teacher gave detailed course outline with names of Text and Reference books",
            style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Radio(
                value: 1, 
                groupValue: group1,
                onChanged: (T){          
                  setState(() {group1 = T; });
                },
                ),
                Text("Average"),
                Radio(
                value: 2,
                groupValue: group1,
                onChanged: (T){ setState(() {group1 = T;});
                },
                ),
                Text("Good"),
                Radio(
                value: 3,
                groupValue: group1,
                onChanged: (T){              
                setState(() {group1 = T;});
                },
                ),
                Text("Excellent")
              ],

            ),


            Text("2. Classes began and end on time - the teacher was present online and also gave offline content",
            style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Radio(
                value: 1, 
                groupValue: group2,
                onChanged: (T){          
                  setState(() {group2 = T; });
                },
                ),
                Text("Average"),
                Radio(
                value: 2,
                groupValue: group2,
                onChanged: (T){ setState(() {group2 = T;});
                },
                ),
                Text("Good"),
                Radio(
                value: 3,
                groupValue: group2,
                onChanged: (T){              
                setState(() {group2 = T;});
                },
                ),
                Text("Excellent")
              ],

            ),
           

            Text("3. The teacher took all required quizzes, assignments and evaluated those timely and properly",
            style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Radio(
                value: 1, 
                groupValue: group3,
                onChanged: (T){          
                  setState(() {group3 = T; });
                },
                ),
                Text("Average"),
                Radio(
                value: 2,
                groupValue: group3,
                onChanged: (T){ setState(() {group3 = T;});
                },
                ),
                Text("Good"),
                Radio(
                value: 3,
                groupValue: group3,
                onChanged: (T){              
                setState(() {group3 = T;});
                },
                ),
                Text("Excellent")
              ],

            ),



            Text("4. The teacher was friendly, responsible, helpful and was available during counseling hours",
            style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Radio(
                value: 1, 
                groupValue: group4,
                onChanged: (T){          
                  setState(() {group4 = T; });
                },
                ),
                Text("Average"),
                Radio(
                value: 2,
                groupValue: group4,
                onChanged: (T){ setState(() {group4 = T;});
                },
                ),
                Text("Good"),
                Radio(
                value: 3,
                groupValue: group4,
                onChanged: (T){              
                setState(() {group4 = T;});
                },
                ),
                Text("Excellent")
              ],

            ),


            
            Text("5. The teacher delivered lectures with good effective communication",
            style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Radio(
                value: 1, 
                groupValue: group5,
                onChanged: (T){          
                  setState(() {group5 = T; });
                },
                ),
                Text("Average"),
                Radio(
                value: 2,
                groupValue: group5,
                onChanged: (T){ setState(() {group5 = T;});
                },
                ),
                Text("Good"),
                Radio(
                value: 3,
                groupValue: group5,
                onChanged: (T){              
                setState(() {group5 = T;});
                },
                ),
                Text("Excellent")
              ],

            ),
          
          ],),
        ),),
        SizedBox(height: 20,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
          textStyle: TextStyle(fontWeight: FontWeight.w300,
          fontSize: 18),
          primary: Color.fromARGB(255, 102, 0, 30)
          ),
          child: Text('submit'),
          onPressed: (){
            Fluttertoast.showToast(
              msg: "record submitted successfully",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
            );
            setState(() {
              group1 = 1;
              group2 = 1;
              group3 = 1;
              group4 = 1;
              group5 = 1;
              
            });
          },
        ),

      ],
      
      
      )))
    );
  }
}