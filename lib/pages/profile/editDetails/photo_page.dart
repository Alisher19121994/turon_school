import 'package:flutter/material.dart';

import '../../../components/app_images.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});
  static const String id = 'PhotoPage';

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: size.height * 0.5,
          width: size.width * 0.8,
          child: Column(
            children: [
              const InkWell(
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.lightGreenAccent,
                  backgroundImage: AssetImage(AppImages.holland),
                ),
              ),
              const SizedBox(height: 16.0,),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 30),
                  onPressed: (){

                  },
                  child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
