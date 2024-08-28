import 'package:get/get.dart';
import 'main_controllers.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainControllers>(() => MainControllers());
  }
}
