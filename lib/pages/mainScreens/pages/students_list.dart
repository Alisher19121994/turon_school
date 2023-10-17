import 'package:flutter/material.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key});
  static const String id = 'StudentsList';

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Turon',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body:Container(
        margin: const EdgeInsets.only(right: 4.0,left: 4.0),
        padding: const EdgeInsets.all(5.0),
        height: size.height * 1,
        width: double.infinity,
        child: ListView(
          children: [
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
            studentsList(),
          ],
        ),
      )
    );
  }

  Widget studentsList(){
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(5.0),
      color: Colors.white,
      height: size.height * 0.07,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children:  [
              Text('Alisher',style: const TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
              SizedBox(width: 10.0,),
              Text('Daminov',style: const TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
            ],
          ),
          const Divider(thickness: 1.0,)
        ],
      ),
    );
  }
}
