import 'package:flutter/material.dart';
import 'package:turon_school/pages/groups/groups_page.dart';
import 'package:turon_school/pages/login/sign_in_page.dart';
import 'package:turon_school/pages/mainScreens/main_page.dart';
import 'package:turon_school/pages/mainScreens/pages/activities_page.dart';
import 'package:turon_school/pages/mainScreens/pages/lesson_plan_page.dart';
import 'package:turon_school/pages/mainScreens/pages/students_list.dart';
import 'package:turon_school/pages/profile/editDetails/details.dart';
import 'package:turon_school/pages/profile/editDetails/photo_page.dart';
import 'package:turon_school/pages/profile/edit_details_page.dart';
import 'package:turon_school/pages/profile/profile.dart';
import 'package:turon_school/pages/profile/salary_page.dart';
import 'package:turon_school/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      routes: {
        MainPage.id: (context)=> const MainPage(),
        GroupsPage.id: (context)=> const GroupsPage(),
        StudentsList.id: (context)=> const StudentsList(),
        ActivityPage.id: (context)=> const ActivityPage(),
        LessonPlanPage.id: (context)=> const LessonPlanPage(),
        ProfilePage.id: (context)=> const ProfilePage(),
        EditDetails.id: (context)=> const EditDetails(),
        SalaryPage.id: (context)=> const SalaryPage(),
        SignIn.id: (context)=> const SignIn(),
        PhotoPage.id: (context)=> const PhotoPage(),
        DetailsPage.id: (context)=> const DetailsPage(),
      },
    );
  }
}
