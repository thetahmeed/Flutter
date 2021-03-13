import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text("-"),
              ),
              Expanded(
                child: Text(
                  counter.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("+"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
