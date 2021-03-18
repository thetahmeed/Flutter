import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NuemorphicPage extends StatefulWidget {
  @override
  _NuemorphicPageState createState() => _NuemorphicPageState();
}

class _NuemorphicPageState extends State<NuemorphicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neumorphic'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Neumorphic(
              style: _neumorphicStyle(),
              padding: EdgeInsets.all(20),
              child: Text("HELLO"),
            ),
            NeumorphicIcon(
              Icons.person,
              size: 80,
              style: _neumorphicStyle(),
            ),
            NeumorphicButton(
              style: _neumorphicStyle(),
              child: Text("Clikc me"),
              padding: EdgeInsets.all(28),
              onPressed: () {},
            ),
            NeumorphicRadio(
              padding: EdgeInsets.all(28),
              child: Row(
                children: [
                  NeumorphicButton(
                    style: _neumorphicStyle(),
                    child: Text("A"),
                    padding: EdgeInsets.all(28),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    style: _neumorphicStyle(),
                    child: Text("B"),
                    padding: EdgeInsets.all(28),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _neumorphicStyle() {
    return NeumorphicStyle(
        intensity: 4,
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 4,
        lightSource: LightSource.topLeft,
        color: Colors.white);
  }
}
