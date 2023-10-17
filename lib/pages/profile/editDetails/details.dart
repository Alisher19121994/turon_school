import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  static const String id = 'DetailsPage';

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editDetails(),
    );
  }
  Widget editDetails(){
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(5.0),
      height:size.height * 1,
      width: size.width * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:size.height * 0.09,
            width: size.width * 0.35,
            child: const Center(
              child: Text('Update',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 34),),
            ),
          ),
          const SizedBox(height: 8.0),
          //#username
          TextFormField(
            // controller: controller.controllerUsername,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Username must not be empty';
                }
                return null;
              },
              onChanged: (value) =>{
                // controller.username = value,
                // controller.isValidLogin(controller.username)
              }
          ),
          const SizedBox(height: 8.0),
          //#password
          TextFormField(
            // controller: controller.controllerPassword,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              //obscureText: controller.passwordVisible,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      // controller.passwordVisible
                      //     ? Icons.visibility
                      //     :
                        Icons.visibility_off
                    ),
                    onPressed: () {
                      // controller.passwordVisible = !controller.passwordVisible;
                      // controller.isValidPassword(controller.passwordVisible);

                    },
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_open_rounded,
                    color: Colors.black,
                  ),
                  labelText: 'Password',
                  border: const OutlineInputBorder()
              ),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Password must not be empty';
                }
                return null;
              },
              onChanged: (value) => {
                // controller.password = value,
                // controller.isValidLogin(controller.password)
              }
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            // controller: controller.controllerUsername,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Username must not be empty';
                }
                return null;
              },
              onChanged: (value) =>{
                // controller.username = value,
                // controller.isValidLogin(controller.username)
              }
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            // controller: controller.controllerUsername,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Username must not be empty';
                }
                return null;
              },
              onChanged: (value) =>{
                // controller.username = value,
                // controller.isValidLogin(controller.username)
              }
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            // controller: controller.controllerUsername,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Username must not be empty';
                }
                return null;
              },
              onChanged: (value) =>{
                // controller.username = value,
                // controller.isValidLogin(controller.username)
              }
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            // controller: controller.controllerUsername,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Username must not be empty';
                }
                return null;
              },
              onChanged: (value) =>{
                // controller.username = value,
                // controller.isValidLogin(controller.username)
              }
          ),
          const SizedBox(height: 8.0),
          //#button
          SizedBox(
            height: 52.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00C2FF),),
              onPressed: () {

            },
              child: const Center(
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          const SizedBox(height: 68.0),
        ],
      ),
    );
  }
}
