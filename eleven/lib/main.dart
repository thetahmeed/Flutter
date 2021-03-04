




import 'package:flutter/material.dart';

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
          Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.all(12),
        height: 80,
        width: 120,
        foregroundDecoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg"),
            )
        ),
        child: Text("Text on container"),
      ),
      Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.all(12),
        height: 80,
        width: 120,
        foregroundDecoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg"),
            )
        ),
        child: Text("Text on container"),
      ),
      ],
        )
    );
  }
}