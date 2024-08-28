import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/component/app_eleveted_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/register/controllers/register_controllers.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObsure = true;
  RegisterControllers controllers = RegisterControllers();
  TextEditingController nameControllers = TextEditingController();
  TextEditingController emailControllers = TextEditingController();
  TextEditingController passwordControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.loginScreen.name);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Registration',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: nameControllers,
                onTap: () {},
                decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
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
                  labelStyle: const TextStyle(color: Colors.black),
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
                  Get.toNamed(AppRoutes.loginScreen.name);
                },
                // onPressed: () async {
                //   await controllers.handleRegister(
                //     name: nameControllers.text,
                //     email: emailControllers.text,
                //     password: passwordControllers.text,
                //     context: context,
                //   );
                // },
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(5),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
