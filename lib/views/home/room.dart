import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 50,
            child: Row(
              
            ),
          ),
          Container(
            color: Colors.blue,
            height: 300,
          )
        ],
      ),
    );
  }
} 