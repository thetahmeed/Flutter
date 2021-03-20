import 'package:fifteen/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        title: 'My Mat App',
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.open_in_new),
            onPressed: ()
                // start
                {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(i.toString())));
            },
            // end
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(i.toString()),
            TextButton(
              onPressed: () {
                setState(() {
                  i++;
                });
              },
              child: Text("+1"),
            ),
          ],
        ),
      ),
    );
  }
}
