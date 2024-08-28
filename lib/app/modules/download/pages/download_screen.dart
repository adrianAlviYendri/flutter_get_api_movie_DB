// ignore_for_file: unused_import, must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_router.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/component/app_eleveted_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/main/controllers%20movie/movie_api_controller.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../login/models/user_models.dart';

class DownloadScreen extends GetView<MovieControllerAPI> {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          'Downloads',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag,
              size: 30,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.profileScreen.name);
              },
              child: const ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    )),
                title: Text(
                  "",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 6,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                          size: 24,
                        ),
                      ),
                      const Text(
                        'Smart Downloads',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_edit_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Jon Mobbin',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://i.pinimg.com/236x/36/e8/06/36e806d05feb2ef19e4b47d5cbac4c3c.jpg'),
                      ),
                    ),
                    const Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Community',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'TV-14 | 1 Episode | 108 MB',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Introducing Downloads for You',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "We'll download a personalized selection of movies and\nshows for you, so there's always somethig to watch on\nyour phone.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CarouselSlider.builder(
                  itemCount: controller.movieModels.value?.results?.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    var movieDownload =
                        controller.movieModels.value?.results?[index];
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: movieDownload?.backdropPath != null
                              ? DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/original${movieDownload?.backdropPath}',
                                  ),
                                  fit: BoxFit.cover)
                              : null),
                    );
                  },
                  options: CarouselOptions(
                      height: 300,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeInOutQuart,
                      // autoPlayCurve: Curves.easeInOutCirc,
                      // autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 2000),
                      viewportFraction: 0.6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: AppElevetedButtonWidgets(
                  borderRadius: BorderRadius.circular(4),
                  backgroundColor: Colors.blue,
                  child: const Text(
                    'Set Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: AppElevetedButtonWidgets(
                borderRadius: BorderRadius.circular(3),
                backgroundColor: Colors.grey.shade800,
                child: const Text(
                  'Find More to Download',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
