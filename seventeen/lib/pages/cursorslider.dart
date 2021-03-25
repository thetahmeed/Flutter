import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CursorSliderPrac extends StatefulWidget {
  @override
  _CursorSliderPracState createState() => _CursorSliderPracState();
}

class _CursorSliderPracState extends State<CursorSliderPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CursorSlider'),
        centerTitle: true,
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 120,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.ease,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.purple),
        ],
      ),
    );
  }
}
