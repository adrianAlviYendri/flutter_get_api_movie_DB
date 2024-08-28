import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:get/get.dart';

class MainControllers extends GetxController {
  var currentIndex = 0.obs;

  final pages = <String>[
    AppRoutes.homeScreen.name,
    AppRoutes.gamesScreen.name,
    AppRoutes.newAndHotScreen.name,
    AppRoutes.fastLaughsScreen.name,
    AppRoutes.downloadScreen.name,
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }
}
