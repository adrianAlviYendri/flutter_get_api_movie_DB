import 'package:flutter/material.dart';

class EveryoneWatchingWidgetListView extends StatelessWidget {
  const EveryoneWatchingWidgetListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
      width: 250,
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
              "https://i.pinimg.com/236x/af/ab/26/afab26f2c1d6ef0cd3402dd5ef77e2de.jpg"
              ),
          ),
          const Text("Everyone's Watching",
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