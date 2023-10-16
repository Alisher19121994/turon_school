import 'package:flutter/material.dart';
import 'package:turon_school/pages/mainScreens/main_page.dart';
import 'package:turon_school/pages/profile/profile.dart';
import '../../components/app_images.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});
  static const String id = 'GroupsPage';

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Image.asset(
                AppImages.logo,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ProfilePage.id);
              },
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(AppImages.holland),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          groupOfStudent(),
          groupOfStudent(),
          groupOfStudent(),
          groupOfStudent(),
        ],
      ),

    );
  }
  Widget groupOfStudent(){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, MainPage.id);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.cyanAccent
            // image: DecorationImage(
            //     image: AssetImage(AppImages.book),
            //     fit: BoxFit.cover
            // )
        ),
        margin: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,right: 8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('EC4685433',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 12.0),
            Text('English',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 12.0),
            Text('Tomson Dowson',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}


