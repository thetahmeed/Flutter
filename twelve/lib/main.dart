import 'package:flutter/material.dart';
import 'package:twelve/pages/page1.dart';

import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(home: Dashboard()),
  );
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List _myList;
  Future<bool> _getPosts() async {
    // https://jsonplaceholder.typicode.com/posts (The main URL)

    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/posts'));

    setState(() {
      _myList = convert.jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: _myList == null ? 0 : _myList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.book),),
            title: Text(_myList[index]["title"]),
            subtitle: Text(_myList[index]["body"]),
            onTap: () {
              Route route = MaterialPageRoute(
                  builder: (context) => PageOne(_myList[index]));
              Navigator.push(context, route);
            },
          );
        },
      ),
    );
  }
}
