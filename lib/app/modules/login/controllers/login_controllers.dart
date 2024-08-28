// ignore_for_file: unused_import, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/login/models/user_models.dart';
import 'package:flutter_get_api_movie/app/modules/main/models/id_model.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginControllers extends GetxController {
  RxBool isloadingLogin = false.obs;

  Future<void> handleLogin(
      {required String? email,
      required String? password,
      required BuildContext context}) async {
    isloadingLogin.value = true;

    try {
      final body = {
        "email": email,
        "password": password,
      };
      // final prefs = await SharedPreferences.getInstance();

      var response = await http.post(
        Uri.parse(''),
        body: jsonEncode(body),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        debugPrint('Data: ${response.body}');

        var responbody = jsonDecode(response.body);

        if (responbody['data'] != null) {
          var userModels = UserModels.fromJson(jsonDecode(response.body));

          debugPrint('UserModels: $userModels');

          Get.toNamed(AppRoutes.mainScreen.name);
        }

        // cara menyimpan id dan token ke sharedPreferences
        var userModelsss = UserModels.fromJson(jsonDecode(response.body));

        final prefs = await SharedPreferences.getInstance();
        // var userId = prefs.getInt('id');
        // var userToken = prefs.getString('token');

        if (userModelsss.data != null) {
          // await prefs.setInt('id', userModelsss.data!.id!);
          // Menyimpan token pengguna ke dalam preferences jika data UserModel tidak null
          await prefs.setString('token', userModelsss.data!.token!);

          // debugPrint(" Iser ID Disimpan ==> ${UserModels().data!.id}");
          debugPrint(" User Token Disimpan ==> ${UserModels().data!.token}");
          Get.toNamed(AppRoutes.mainScreen.name);
        }
      } else {
        debugPrint('Error: ${response.body}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isloadingLogin.value = false;
    }
  }
}
