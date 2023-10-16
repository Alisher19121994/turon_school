import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});
  static const String id = 'EditDetails';

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('EditDetails',style: TextStyle(color: Colors.cyan,fontSize: 35),),
      ),
    );
  }
}
