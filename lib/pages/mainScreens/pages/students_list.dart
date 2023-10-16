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
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text('StudentsList',style: TextStyle(
            color: Colors.blueAccent,fontSize: 35
        ),),
      ),
    );
  }
}
