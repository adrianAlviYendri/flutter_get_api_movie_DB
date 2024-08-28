import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_router.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/main/conttrollers/main_controllers.dart';
import 'package:get/get.dart';

class MainScreen extends GetView<MainControllers> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppRoutes.homeScreen.name,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade800,
          onTap: (index) {
            controller.changePage(index);
          },
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Games',
              icon: Icon(
                Icons.gamepad_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'New & Hot',
              icon: Icon(
                Icons.play_circle_sharp,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Fast Laughs',
              icon: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Download',
              icon: Icon(
                Icons.arrow_circle_down_outlined,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
