import 'package:flutter/material.dart';

class LessonPlanPage extends StatefulWidget {
  const LessonPlanPage({super.key});
  static const String id = 'LessonPlanPage';

  @override
  State<LessonPlanPage> createState() => _LessonPlanPageState();
}

class _LessonPlanPageState extends State<LessonPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text('LessonPlanPage',style: TextStyle(
            color: Colors.lightBlueAccent,fontSize: 35
        ),),
      ),
    );
  }
}
