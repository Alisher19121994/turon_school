import 'package:flutter/material.dart';
import 'package:turon_school/pages/login/sign_in_page.dart';
import 'package:turon_school/pages/profile/edit_details_page.dart';
import 'package:turon_school/pages/profile/salary_page.dart';
import '../../components/app_images.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const String id = 'ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profilePage(),
    );
  }
  Widget profilePage(){
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(34.0),
                  bottomLeft: Radius.circular(34.0)),
              color: Color(0xff0076ba),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context,'result');
                    },
                    icon: const Icon(Icons.arrow_back,color: Colors.white,)),
              ],
            ),
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.white,width: 1.0),
                  //   borderRadius: BorderRadius.circular(100.0),
                  //   image: DecorationImage(
                  //     image:  AssetImage(AppImages.holland),
                  //   )
                  // ),
                  child: const CircleAvatar(
                    radius: 76.0,
                    backgroundImage: AssetImage(AppImages.holland),
                  ),
                  height: size.height*0.15,
                  width: size.width*0.40,
                ),
                const SizedBox(height: 5.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Alisher',style: TextStyle(
                        color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 8.0,),
                    Text('Daminov',style: TextStyle(
                        color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                const SizedBox(height: 5.0,),
                Text('Teacher',style: TextStyle(
                    color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 40.0),
                Container(
                  width: size.width * 0.86,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: const Color(0xFFE1E8ED),
                  ),
                  height: size.height * 0.60,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          editDetails(),
                          salaryDetails(),
                          logOutDetails(),
                        ],
                      ),
                      const SizedBox(height: 20.0,),
                      teacherDetails('Username','Alisher'),
                      teacherDetails('Age','29'),
                      teacherDetails('Date of birth','1994.12.19'),
                      teacherDetails('Phone number','1234567'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget editDetails(){
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,EditDetails.id);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15.0),
        padding: const EdgeInsets.all(1.0),
        height: size.height * 0.12,
        width: size.width * 0.23,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
         color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.06,
              child: Image.asset(AppImages.edit_data),
            ),
            const SizedBox(height: 5.0,),
            const Text('Edit details',style: TextStyle(
                color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold
            ),)
          ],
        )
      ),
    );
  }

  Widget salaryDetails(){
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,SalaryPage.id);
      },
      child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(1.0),
          height: size.height * 0.12,
          width: size.width * 0.23,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.06,
                child: Image.asset(AppImages.money),
              ),
              const SizedBox(height: 5.0,),
              const Text('Salary',style: TextStyle(
                  color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold
              ),)
            ],
          )
      ),
    );
  }

  Widget logOutDetails(){
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=> const SignIn()));
      },
      child: Container(
          margin: const EdgeInsets.only(right: 15.0),
          padding: const EdgeInsets.all(1.0),
          height: size.height * 0.12,
          width: size.width * 0.23,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.06,
                child: Image.asset(AppImages.log_out),
              ),
              const SizedBox(height: 5.0,),
              const Text('Log out',style: TextStyle(
                  color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold
              ),)
            ],
          )
      ),
    );
  }

  Widget teacherDetails(String title,String name){
    return Container(
          margin: const EdgeInsets.only(right: 15.0,left: 15.0),
          padding: const EdgeInsets.all(1.0),
          height: 50.0,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$title:',style: const TextStyle(
                      color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(width: 16.0,),
                  Expanded(
                    child: Text('$name',style: const TextStyle(
                        color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal
                    ),overflow: TextOverflow.ellipsis,),
                  ),
                ],
              ),
              const Divider(thickness: 1.0)
            ],
          )
    );
  }
}