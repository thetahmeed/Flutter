import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavigationPractice extends StatefulWidget {
  @override
  _BottomNavigationPracticeState createState() =>
      _BottomNavigationPracticeState();
}

class _BottomNavigationPracticeState extends State<BottomNavigationPractice> {
  var _currentIndex = 0;

  var _currentPage = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        centerTitle: true,
      ),
      body: _currentPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _currentIndex,
        mouseCursor: SystemMouseCursors.click,
        showUnselectedLabels: false,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Active",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call",
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Chat"),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Active"),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Call"),
    );
  }
}
