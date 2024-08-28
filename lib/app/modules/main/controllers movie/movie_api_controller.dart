// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/modules/login/models/user_models.dart';
import 'package:flutter_get_api_movie/app/modules/main/models/movie_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MovieControllerAPI extends GetxController {
  RxBool isloadingMovie = false.obs;
  RxBool isloadingMovieDownload = false.obs;
  var movieModels = Rx<DiscoverMovieModel?>(null);

  Future<void> handleMovie() async {
    try {} catch (e) {
      debugPrint('Error : $e');
    } finally {
      isloadingMovie.value = true;
      isloadingMovieDownload.value = true;
    }

    var response = await http.get(
        Uri.parse('https://api.themoviedb.org/3/discover/movie'),
        headers: {
          'Accept': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxOGVmNGEzNjNiMzliNjI4OGQ5M2M3ZjA2YTE3MmU3NCIsInN1YiI6IjY1ODE5ZDc0OGRiYzMzMDhiMDlhMDRhMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.j3QdNaw5eaK904GDgh1_82HtgOd9YrWWgNDVURmSBZI'
        });

    if (response.statusCode == 200) {
      final data = response.body;
      debugPrint('Data : $data');

      movieModels.value =
          DiscoverMovieModel.fromJson(jsonDecode(response.body));

      debugPrint('Discover movie model : $movieModels');
    } else {
      debugPrint('Gagal get data. status code ${response.body}');
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await handleMovie();
  }

  void removeData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
