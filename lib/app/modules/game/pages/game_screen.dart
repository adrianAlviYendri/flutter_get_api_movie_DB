// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main/controllers movie/movie_api_controller.dart';

class GameScreen extends GetView<MovieControllerAPI> {
  GameScreen({super.key});
  // final UserModels? models; this.models

  List<String> allMobileGame = [
    'https://i.pinimg.com/236x/7a/75/7a/7a757a4e272afb3e79568a48d9299bb3.jpg',
    'https://i.pinimg.com/236x/d8/f3/95/d8f395fadb9b9b014e826461c1b01f1b.jpg',
    'https://i.pinimg.com/236x/29/2f/1c/292f1ceb0166cd43a7290dd31be3d0f8.jpg',
    'https://i.pinimg.com/236x/e9/d6/68/e9d668bdd7c1c9a04ceb60b1dfe150c2.jpg',
    'https://i.pinimg.com/236x/21/9f/2c/219f2cac2b0ff6949d6828528a1de230.jpg',
  ];

  List<String> moreMobileGame = [
    'https://i.pinimg.com/236x/ec/67/01/ec67011b56dfc9cdb8fba6f1190f2c97.jpg',
    'https://i.pinimg.com/236x/bd/11/0c/bd110c6612e1b0b7a99da4d836d0e5e5.jpg',
    'https://i.pinimg.com/236x/4b/ef/52/4bef5282b0bae47eaacfe7ba278f3443.jpg',
    'https://i.pinimg.com/236x/bf/d4/a5/bfd4a5e5a33d3f726b67a8f16061eeb2.jpg',
    'https://i.pinimg.com/236x/36/4e/e9/364ee95a95cfcca30bb0abadf8639e4a.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Games',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_bag,
            size: 35,
            color: Colors.yellow,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 56, 30, 60),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Positioned(
                      top: 150,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Container(
                          height: 300,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomLeft,
                              colors: [Colors.transparent, Colors.red],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 295,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: SizedBox(
                                  height: 30,
                                  child: Image.asset(
                                      'assets/images/logo-N-netflix.png'),
                                ),
                              ),
                              const Text(
                                "",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Unlimited access to',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'exclusive games',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            'No ads. No exstra fees. No in-app purchases.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'Included with your membership.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 450),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            itemCount: allMobileGame.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                    width: 150,
                                    child: Image.network(
                                      allMobileGame[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'More Mobile Games',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            itemCount: moreMobileGame.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                    width: 150,
                                    child: Image.network(
                                      moreMobileGame[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'Shows and Movies You Might Like',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Obx(() => SizedBox(
                              height: 150,
                              child: ListView.builder(
                                itemCount: controller
                                    .movieModels.value?.results?.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var showsAndMovie = controller
                                      .movieModels.value?.results?[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: showsAndMovie
                                                        ?.backdropPath !=
                                                    null
                                                ? DecorationImage(
                                                    image: NetworkImage(
                                                        'https://image.tmdb.org/t/p/original${showsAndMovie?.backdropPath}'),
                                                    fit: BoxFit.cover)
                                                : null,
                                          ),
                                        )),
                                  );
                                },
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            'Shows and Movies You Might Like',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Obx(() => SizedBox(
                              height: 150,
                              child: ListView.builder(
                                itemCount: controller
                                    .movieModels.value?.results?.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var showsAndMovie = controller
                                      .movieModels.value?.results?[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: showsAndMovie?.posterPath !=
                                                    null
                                                ? DecorationImage(
                                                    image: NetworkImage(
                                                        'https://image.tmdb.org/t/p/original${showsAndMovie?.posterPath}'),
                                                    fit: BoxFit.cover)
                                                : null,
                                          ),
                                        )),
                                  );
                                },
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
