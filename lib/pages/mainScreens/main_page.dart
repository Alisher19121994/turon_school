import 'package:flutter/material.dart';
import 'package:turon_school/pages/mainScreens/pages/activities_page.dart';
import 'package:turon_school/pages/mainScreens/pages/lesson_plan_page.dart';
import 'package:turon_school/pages/mainScreens/pages/students_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String id = 'MainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      const StudentsList(),
      const ActivityPage(),
      const LessonPlanPage(),
    ];

    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13.0,
        selectedItemColor: const Color(0xff38003c),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        elevation: 10,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.list_alt) ,label: 'List'),
          BottomNavigationBarItem(icon:Icon(Icons.pending_actions) ,label: 'Activity'),
          BottomNavigationBarItem(icon:Icon(Icons.queue_play_next) ,label: 'Lesson plan'),
        ],
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
