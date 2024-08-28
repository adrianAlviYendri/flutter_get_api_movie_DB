import 'package:flutter_get_api_movie/app/modules/login/controllers/login_controllers.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginControllers>(() => LoginControllers());
  }
}
