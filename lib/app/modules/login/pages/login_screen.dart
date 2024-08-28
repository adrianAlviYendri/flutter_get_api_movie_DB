// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/component/app_eleveted_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/login/controllers/login_controllers.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsure = true;
  LoginControllers controllers = LoginControllers();
  TextEditingController emailControllers = TextEditingController();
  TextEditingController passwordControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: const Text(
            'NETFLIX',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailControllers,
              onTap: () {},
              decoration: InputDecoration(
                fillColor: Colors.white54,
                filled: true,
                hintText: 'Email or phone number',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: passwordControllers,
                obscureText: isObsure,
                onTap: () {
                  setState(() {
                    isObsure = !isObsure;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  hintText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(
                    isObsure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  suffixIconColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: AppElevetedButtonWidgets(
                onPressed: () {
                  Get.toNamed(AppRoutes.mainScreen.name);
                },
                // onPressed: () async {
                //   await controllers.handleLogin(
                //     email: emailControllers.text,
                //     password: passwordControllers.text,
                //     context: context,
                //   );
                // },
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Obx(() {
                    if (controllers.isloadingLogin.value) {
                      return const CircularProgressIndicator(
                        color: Colors.white,
                      );
                    } else {
                      return Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Need Help?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    'Need help?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.register.name);
                  },
                  child: Text(
                    'Sign in up now.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
