import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flag"),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              color: Colors.green,
            ),
            Positioned(
              top: -50,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
              ),
            ),
            Image.asset(
              "images/place_holder.png",
              height: 100,
              width: 100,
            ),
            Image.network(
              "https://blindspotetc.com/wp-content/uploads/2019/03/dummy-man-570x570.png",
              height: 50,
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
