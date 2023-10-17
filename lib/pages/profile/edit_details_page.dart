import 'package:flutter/material.dart';
import 'editDetails/details.dart';
import 'editDetails/photo_page.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});
  static const String id = 'EditDetails';

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
       appBar: AppBar(
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text('Profile',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
             SizedBox(width: 60)
           ],
         ),
         bottom:  const TabBar(
             physics: ScrollPhysics(),
             isScrollable: true,
             indicatorColor: Colors.white,
             unselectedLabelStyle: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.normal,
                 fontSize: 18),
             labelStyle: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 20),
             tabs:[
               Tab(
                 child: Text(
                   "Photo",
                   style: TextStyle(color: Colors.white),
                 ),
               ),
               Tab(
                 child: Text(
                   "Details",
                   style: TextStyle(color: Colors.white),
                 ),
               ),
             ]
         ),
       ),
        body: const TabBarView(
          children: [
            PhotoPage(),
            DetailsPage()
          ],
        ),
      ),
    );
  }
}
