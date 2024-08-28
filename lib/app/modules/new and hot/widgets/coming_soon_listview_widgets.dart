import 'package:flutter/material.dart';

class ComingSoonWidgetsListView extends StatelessWidget {
  const ComingSoonWidgetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 35,
            child: Image.network(
              "https://i.pinimg.com/236x/9e/44/33/9e4433d0e87b784917ad2d1e6044c21a.jpg"
              ),
          ),
          const Text('Coming Soon',
           style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18
           ),
          ),
        ],
      ),
     ),
    );
  }
}