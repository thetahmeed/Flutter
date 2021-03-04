import 'package:flutter/material.dart';

final _longText =
    "Trust me or not but this is a very very very very long text. Not very big. But big";

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

            Image.asset("assets/images/guns.png"), 

            Container(
              child: Text(_longText),
              padding: EdgeInsets.all(10),
            ),

            Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.all(12),
              height: 80,
              width: 100,
              child: Icon(Icons.warning),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.all(12),
              height: 80,
              width: 100,
              foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg"),
              )),
              child: Text("Text on container"),
            ),
          ],
        ));
  }
}
