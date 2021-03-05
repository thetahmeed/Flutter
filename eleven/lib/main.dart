import 'package:flutter/material.dart';

final _longText =
    "Trust me or not\n\n\n but this is a very very\n\n very very long text.\n\n\n Not very big. But big";

void main() {
  runApp(MaterialApp(
    title: "Eleven",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar Title"),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/dp2.jpg"),
                Positioned(
                    bottom: 40,
                    left: 40,
                    child: Text(
                      "21315",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text("ufiwhifi"),
          ],
        ));
  }
}
