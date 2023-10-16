import 'package:flutter/material.dart';

class SalaryPage extends StatefulWidget {
  const SalaryPage({super.key});
  static const String id = 'SalaryPage';

  @override
  State<SalaryPage> createState() => _SalaryPageState();
}

class _SalaryPageState extends State<SalaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SalaryPage',style: TextStyle(color: Colors.cyan,fontSize: 35),),
      ),
    );
  }
}
