import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRank extends StatefulWidget {
  const MyRank({Key? key}) : super(key: key);

  @override
  State<MyRank> createState() => _MyRankState();
}

class _MyRankState extends State<MyRank> {
  List teacherInfo= [['1 Mustafizur Rahman CSE316','2   Wahidul Alam   CSE316','3   Rajib Das   CSE316','4   Esrat Jahan   CSE316'],
  ['1   Imran Mahbub   CSE319','2   Sakil Anwar   CSE319','3   Dr. Mahbubur Rahman   CSE319'],
  ['1   javed Anwar   PHL102','2   Eshika Khan  PHL102'],
  ['1   Muhammad Asif Hasan','2   Sayem Khan','3   Rabeya Begum','4   Md.Khaled bin Jamal']];
  String? _selectedCourseName = 'CSE316'; 
  List<String> _courseName = ['CSE316', 'CSE319', 'PHL102', 'Mobile App Development']; 
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Teacher Ranking",
      style: TextStyle(
      color: Colors.white,
      fontSize: 25.0,
      fontWeight: FontWeight.w600
      ),),
      backgroundColor: Color.fromARGB(255, 102, 0, 30),
        
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                //333print(_courseName.indexOf(newValue.toString()));
                _selectedIndex = _courseName.indexOf(newValue.toString());
              });
            },
            items: _courseName.map((names) {
            return DropdownMenuItem(
              child: new Text(names),
              value: names,
            );
            }).toList(),
            ),

            //Dynamic rank list..................
            SizedBox(height: 20,),
            Text("Rank           Name               Course code",style: TextStyle(fontSize: 18),),
            ...(teacherInfo[_selectedIndex]).map((e){
              return Text(e,style: TextStyle(
                fontSize: 18,
                height: 2,
                wordSpacing: 7
                
              ),);
            }).toList()
          ],
        ),
      ),
    );
  }
}