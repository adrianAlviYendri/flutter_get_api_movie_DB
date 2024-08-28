import 'package:flutter/material.dart';

class TopTenWidgetsListview extends StatelessWidget {
  const TopTenWidgetsListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
      width: 150,
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
              "https://i.pinimg.com/236x/64/93/5c/64935c1c0e470f0c979e78e6783d0312.jpg"
              ),
          ),
          const Text('Top 10',
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