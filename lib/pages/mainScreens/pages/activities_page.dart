import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});
  static const String id = 'ActivityPage';

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Turon',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
        ),
    );
  }

  Widget lessonPlanResponse(){
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.all(4.0),
      height: size.height * 0.20,
      child: ListView(
        children: [
          Container(
            color: Colors.cyan,
            height: size.height * 0.16,
            width: size.width * 0.09,
            child: Column(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }

}
