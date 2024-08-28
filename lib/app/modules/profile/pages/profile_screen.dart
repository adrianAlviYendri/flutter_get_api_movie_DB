// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/config/routers/app_routes.dart';
import 'package:flutter_get_api_movie/app/modules/component/app_eleveted_button_widgets.dart';
import 'package:flutter_get_api_movie/app/modules/login/models/user_models.dart';
import 'package:flutter_get_api_movie/app/modules/main/controllers%20movie/movie_api_controller.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, this.models});
  final UserModels? models;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var controllerProfile = Get.put(MovieControllerAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.mainScreen.name);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '${widget.models?.data?.name}',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            const Text(
              'Member since 2023',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Titles',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Badges',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Audible Premium Plus',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      '1 Credit Monthly',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: AppElevetedButtonWidgets(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.grey),
                      child: const Text(
                        'Your Account',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You have 0 Credits\nYour next credit arrives Mar 15, 2023',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Included with membership',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount:
                    controllerProfile.movieModels.value?.results?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  var movieProfile =
                      controllerProfile.movieModels.value?.results?[index];
                  return Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: movieProfile?.backdropPath != null
                              ? DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/original${movieProfile?.backdropPath}'),
                                  fit: BoxFit.cover)
                              : null));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Condierge',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 3,
                          child: Text(
                            'Get support and recommendations 24/7.\nlearn more.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: AppElevetedButtonWidgets(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.white),
                            child: const Text(
                              'Call us',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Achievements',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Badge Collection',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Listening Level',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Listening Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Recent Activity',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Listen History',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Customer Support',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Help & Support',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Membership',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Legal',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Privacy Notice',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Additional Notices',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Audible Android Application Legal Notices and\nAttributions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: AppElevetedButtonWidgets(
                      onPressed: () {
                        // controllerProfile.removeData('token');
                        Get.toNamed(AppRoutes.loginScreen.name);
                      },
                      backgroundColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Log Out',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Audible 3.44.0 (125008)',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Judy's 2nd Audible for Android",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    'Account: judy.mobbin@gmail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    'Marketplace:Audible.com',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
