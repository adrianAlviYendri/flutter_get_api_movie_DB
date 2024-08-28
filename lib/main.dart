import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_router.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  String? userToken = prefs.getString('token');

  runApp(MyApp(userToken: userToken));
}

class MyApp extends StatelessWidget {
  final String? userToken;
  // const MyApp({super.key, required this.userToken});
  const MyApp({Key? key, this.userToken}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute:
          // AppRoutes.mainScreen.name,
          (userToken != null)
              ? AppRoutes.mainScreen.name
              : AppRoutes.register.name,
      getPages: AppRouter.pages,
    );
  }
}
