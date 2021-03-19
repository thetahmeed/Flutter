import 'package:flutter/material.dart';

class StateManagementPage extends StatefulWidget {
  @override
  _StateManagementPageState createState() => _StateManagementPageState();
}

class _StateManagementPageState extends State<StateManagementPage> {
  int _currentNumber = 0;

  _increament() {
    setState(() {
      _currentNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Managemnet"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          _increament();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
            )
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueAccent,
        elevation: 10,
      ),
      body: Center(
        child: Text(
          _currentNumber.toString(),
          style: TextStyle(
            fontSize: 190,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
