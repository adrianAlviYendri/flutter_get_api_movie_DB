import 'package:flutter/material.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            left: 0,
            child: Image.network(
              'https://i.pinimg.com/236x/91/e7/69/91e769b51c90053529bec4aae5da8de2.jpg',
             fit: BoxFit.cover,
             ),
          ),
          const Positioned(
            top: 40,
            left: 20,
            child: Text('AFTER\nEVERYTHING',
             style: TextStyle(
              color: Color.fromARGB(255, 254, 244, 155),
               fontSize: 40,
                fontWeight: FontWeight.bold,
            ),
           ),
          ),
          const Positioned(
            bottom: 10,
            right: 20,
            child: Column(
              children: [
                Column(
                  children: [
                    Icon(Icons.emoji_emotions,
                     size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(height: 5),
                    Text('LOL',
                     style: TextStyle(
                      color: Colors.white,
                       fontSize: 15,
                     ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Icon(Icons.add,
                       size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text('My List',
                       style: TextStyle(
                        color: Colors.white,
                         fontSize: 15,
                       ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Icon(Icons.send_rounded,
                       size: 35,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text('Share',
                       style: TextStyle(
                        color: Colors.white,
                         fontSize: 15,
                       ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Icon(Icons.play_arrow_rounded,
                       size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text('Play',
                       style: TextStyle(
                        color: Colors.white,
                         fontSize: 15,
                       ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const Positioned(
            bottom: 30,
            left: 20,
            child: Icon(Icons.volume_off,
             size: 30,
              color: Colors.white,
           ),
          ),
          
        ],
      ),
    );
  }
}