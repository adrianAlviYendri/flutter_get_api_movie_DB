// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_import, unused_import, prefer_const_literals_to_create_immutables, must_be_immutable

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cube_transition_plus/cube_transition_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/modules/component/app_eleveted_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/home/widgets/pop_up_menu_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/main/controllers%20movie/movie_api_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MovieControllerAPI> {
  HomeScreen({super.key});

  List<String> listCarouselSliderHome = [
    // 27
    'https://i.pinimg.com/736x/fa/a0/46/faa046f513df9f21eb124af8b8ebd9cf.jpg',
    'https://i.pinimg.com/564x/a4/fe/69/a4fe696cd9dc3c245b63aa11462bf3ac.jpg',
    'https://i.pinimg.com/564x/9a/d9/ed/9ad9edabc134b3a29d3e7bb60c0d8a8e.jpg',
    'https://i.pinimg.com/564x/af/80/f2/af80f290f46ffe3b0083c08ae5f6b92e.jpg',
    'https://i.pinimg.com/236x/ba/11/d1/ba11d1157b01c8b4222083152b8e0502.jpg',
    'https://i.pinimg.com/236x/19/ad/e0/19ade0e5a35f7e9c81dfe501725ff840.jpg',
    'https://i.pinimg.com/564x/f4/45/73/f445730e28e657c716fe6babbd25198f.jpg',
    'https://i.pinimg.com/236x/70/ef/2a/70ef2a61feb331d6600db30a3f6b92a0.jpg',
    'https://i.pinimg.com/236x/bd/fc/54/bdfc54248fee03868db523092f85895b.jpg',
    'https://i.pinimg.com/236x/1c/8f/9a/1c8f9a8bef82bc411bb88939bb763946.jpg',
    'https://i.pinimg.com/736x/62/86/75/628675e912a257f0cebdc1211335c248.jpg',
    'https://i.pinimg.com/236x/6f/82/07/6f8207c8be4680746ec89aa178eea0ba.jpg',
    'https://i.pinimg.com/236x/cd/d1/ec/cdd1ec4a75f9de30454a26f485372e44.jpg',
    'https://i.pinimg.com/236x/32/46/26/32462676a0090e498b8b953f56488535.jpg',
    'https://i.pinimg.com/236x/ad/63/ec/ad63ec77bb340bf2ab6f862a5b1c0e91.jpg',
    'https://i.pinimg.com/236x/3a/ac/e7/3aace75dd5eb17a8704fdd1093973666.jpg',
    'https://i.pinimg.com/236x/61/87/1c/61871c5e636f7b2a34cc332d3e2a32ae.jpg',
    'https://i.pinimg.com/236x/4b/92/8d/4b928df2e10c4a525b3273be8156c3e5.jpg',
    'https://i.pinimg.com/236x/7c/26/2f/7c262fbbaefa251b57fb517738486212.jpg',
    'https://i.pinimg.com/236x/a2/a0/ca/a2a0ca872b7bbdd195b5da738990bd44.jpg',
    'https://i.pinimg.com/236x/39/f1/b3/39f1b365ba637c858bef6a27496f45b5.jpg',
    'https://i.pinimg.com/236x/51/0a/e3/510ae3488094a61207564f0a821981bc.jpg',
    'https://i.pinimg.com/236x/58/60/5b/58605b4f277b94533a1b9290b21b232d.jpg',
    'https://i.pinimg.com/236x/8a/6a/44/8a6a44a39a7c4620d0d4bc92be5f29e8.jpg',
    'https://i.pinimg.com/474x/6b/c3/b1/6bc3b18d905c2ee81b9ec197006c1ab2.jpg',
    'https://i.pinimg.com/236x/89/8b/91/898b91dd3705367c74f8be1e4913123b.jpg',
    'https://i.pinimg.com/236x/35/b3/ac/35b3ac9b34e926095453096d88a26adb.jpg',
  ];

  List<String> popularOnNetflix = [
    'https://i.pinimg.com/474x/90/39/7a/90397ab892763f3b938d8902f0c33109.jpg',
    'https://i.pinimg.com/564x/25/df/48/25df48e35d501efd9c8f014b9699ac95.jpg',
    'https://i.pinimg.com/236x/d5/e3/0d/d5e30ddc915eb87782a5bc686fe0726a.jpg',
    'https://i.pinimg.com/564x/3d/93/18/3d9318f12408d1df24bfe8a6fb208a9a.jpg',
    'https://i.pinimg.com/236x/50/c6/97/50c697e2f443d461c221793f78818b94.jpg',
  ];

  List<String> downloadForYou = [
    'https://i.pinimg.com/236x/2f/69/1e/2f691e72d133d4f6a1dc87ba97fae808.jpg',
    'https://i.pinimg.com/236x/74/a8/6f/74a86fe1080636519ca60b9e60340c26.jpg',
    'https://i.pinimg.com/236x/eb/7e/f7/eb7ef72a19eb7f2f0351a09c5950e5a7.jpg',
    'https://i.pinimg.com/236x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg',
    'https://i.pinimg.com/236x/7a/ad/87/7aad8701d4f22245b826014e91d5ede1.jpg',
  ];

  List<String> trendingNowNetflix = [
    'https://i.pinimg.com/236x/5c/6f/ec/5c6fec522d1d3c97f2622e26e90905aa.jpg',
    'https://i.pinimg.com/236x/c5/51/a6/c551a62bd126498c9cf6e97c42ae1b49.jpg',
    'https://i.pinimg.com/236x/98/2a/b9/982ab98e5c9f7f0e1db4e9ea4813d9d4.jpg',
    'https://i.pinimg.com/236x/f2/01/24/f20124c4cf5b54c18f38e72d44e73d28.jpg',
    'https://i.pinimg.com/236x/61/cb/46/61cb4698d25d623622ae8f0f61d984db.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                toolbarHeight: 50,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/logo-N-netflix.png'),
                  ),
                ),
                title: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade800,
                      maximumSize: Size(300, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.yellow,
                      size: 35,
                    ),
                  )
                ],
              ),
              SliverAppBar(
                pinned: true,
                toolbarHeight: 25,
                backgroundColor: Colors.black,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Series',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(width: 23),
                      Text(
                        'Films',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(width: 23),
                      Text(
                        'Categories',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      PopUpMenuButtonCategoriesWidgets(),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: SizedBox(
                        height: 500,
                        child: CubePageView.builder(
                          itemCount: listCarouselSliderHome.length,
                          itemBuilder: (context, index, pageNotifier) {
                            return CubeWidget(
                              index: index,
                              pageNotifier: pageNotifier,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        listCarouselSliderHome[index],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: const [
                              Colors.transparent,
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: const [
                              Colors.transparent,
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 20,
                                  child: Image.asset(
                                      'assets/images/logo-N-netflix.png')),
                              SizedBox(width: 10),
                              Text(
                                'S E R I E S',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Wrap(
                              children: [
                                Text(
                                  'Swoonworthy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 3,
                                  ),
                                ),
                                Text(
                                  'Wittiy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 3,
                                  ),
                                ),
                                Text(
                                  'Emotional',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 3,
                                  ),
                                ),
                                Text(
                                  'Romantic',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 3,
                                  ),
                                ),
                                Text(
                                  'action',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      Text(
                                        'My List',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 7,
                                            bottom: 7,
                                            right: 13,
                                            left: 10),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: Icon(
                                                Icons.play_arrow,
                                                size: 30,
                                              ),
                                            ),
                                            Text(
                                              'Play',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      Text(
                                        'Info',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular on Netflix',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: popularOnNetflix.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            popularOnNetflix[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Download For You',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: downloadForYou.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            downloadForYou[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Trending Now Netflix',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingNowNetflix.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            trendingNowNetflix[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Only on Netflix',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Obx(() => SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount:
                            controller.movieModels.value?.results?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var onlyOnNetflix =
                              controller.movieModels.value?.results?[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: onlyOnNetflix?.posterPath != null
                                          ? DecorationImage(
                                              image: NetworkImage(
                                                  'https://image.tmdb.org/t/p/original${onlyOnNetflix?.posterPath}'),
                                              fit: BoxFit.cover)
                                          : null),
                                )),
                          );
                        },
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
