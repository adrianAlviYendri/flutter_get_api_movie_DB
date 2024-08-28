import 'package:flutter/material.dart';
import 'package:flutter_get_api_movie/app/modules/landing%20page/widgets/pop_up_menu_button_landingPage_widgets.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Image.asset('assets/images/logo-N-netflix.png'),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'PRIVACY',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const PopUpMenuButtonLandingPageWidgets()
        ],
      ),
    );
  }
}
