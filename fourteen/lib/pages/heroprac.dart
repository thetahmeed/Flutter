import 'package:flutter/material.dart';
import 'package:fourteen/pages/heroprac2.dart';

class HeroPractice extends StatefulWidget {
  @override
  _HeroPracticeState createState() => _HeroPracticeState();
}

class _HeroPracticeState extends State<HeroPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 50,
            bottom: 0,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeroPractice2()));
                  },
                  child: Hero(
                    tag: 'image1',
                    child: Icon(
                      Icons.audiotrack,
                      size: 70,
                    ),
                  ),
                ),
                Icon(
                  Icons.video_call,
                  size: 70,
                ),
                Icon(
                  Icons.group,
                  size: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
