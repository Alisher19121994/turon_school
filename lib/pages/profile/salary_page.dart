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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salary',style: TextStyle(color: Colors.white,fontSize:24,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.black12
        ),
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: const Color(0xFFE1E8ED),
              height: 50,
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(width: 1.0,),
                    Text('Date',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 1.0,),
                    Text('Residue',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 1.0,),
                    Text('Received',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 1.0,),
                    Text('Total',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 1.0,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                  salary(),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Widget salary(){
    return Container(
      color: Colors.white,
      height: 58,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('2023.10.12',style: const TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                Text('120.300.00',style: const TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                Text('400.000',style: const TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                Text('2.000.000',style: const TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
              ],
            ),
            const Divider(thickness: 1.0,)
          ],
        ),
      ),
    );
  }
}
