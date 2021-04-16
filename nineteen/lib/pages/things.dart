import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  var _imgLink =
      'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_2400/https://blog.snappa.com/wp-content/uploads/2017/08/youtube-channel-art-size.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: InteractiveViewer(
        child: Container(
          height: 120,
          width: 600,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.green,
            Colors.pink,
          ])),
        ) /*Image.network(_imgLink)*/,
      ),
    ));
  }
}
