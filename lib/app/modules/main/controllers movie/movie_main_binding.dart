import 'package:flutter_get_api_movie/app/modules/main/controllers%20movie/movie_api_controller.dart';
import 'package:get/get.dart';

class MovieBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MovieControllerAPI>(MovieControllerAPI());
  }
}
