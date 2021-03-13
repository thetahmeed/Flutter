import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  getPreviousValue() async {
    final prefs = await SharedPreferences.getInstance();
    final c = prefs.getInt('counter') ?? 0;

    setState(() {
      this.counter = c;
    });
  }

  _incre() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      this.counter++;
      prefs.setInt('counter', this.counter);
    });
  }

  _decre() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      this.counter--;
      prefs.setInt('counter', this.counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    this.getPreviousValue();

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
                    this._decre();
                  });
                },
                child: Text("-"),
              ),
              Expanded(
                child: Text(
                  "$counter",
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
                    this._incre();
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
