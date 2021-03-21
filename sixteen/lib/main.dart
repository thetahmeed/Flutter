import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sixteen/data.dart';
import 'package:sixteen/second.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
        actions: [
          IconButton(
              icon: Icon(Icons.open_in_new),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SecondPage()));
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('${context.watch<Counter>().count}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('increment_floatingActionButton'),
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
