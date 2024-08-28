// ignore_for_file: use_build_context_synchronously, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class RegisterControllers {
  Future<void> handleRegister(
      {required String? name,
      required String? email,
      required String? password,
      required BuildContext context}) async {
    try {
      final body = {
        "name": name,
        "email": email,
        "password": password,
      };

      var response = await http.post(
        Uri.parse(''),
        body: jsonEncode(body),
        headers: {'Content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.loginScreen.name);

        debugPrint('Data: ${response.body}');
      } else {
        debugPrint('Error: ${response.body}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
