import 'package:flutter/material.dart';
import 'package:twelve/pages/page1.dart';

import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Dashboard()),
  );
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List _myList;
  List _unFiltered;

  Future<bool> _getPosts() async {
    // https://jsonplaceholder.typicode.com/posts (The main URL)
    // https://api.mocki.io/v1/192ea43d

    var response =
        await http.get(Uri.https('api.mocki.io', '/v1/192ea43d'));

    setState(() {
      _myList = convert.jsonDecode(response.body);
      this._unFiltered = _myList;
    });
  }

  @override
  void initState() {
    this._getPosts();
  }

  searchData(String key) {
    var dataExistOrNot = key.length > 0 ? true : false;

    if (dataExistOrNot) {
      var _filtered = [];

      for(var i = 0; i< this._unFiltered.length; i++){
        if(_unFiltered[i]['title'].toString().toLowerCase().contains(key.toLowerCase())){
          _filtered.add(_unFiltered[i]);
        }
      }

      setState(() {
        this._myList = _filtered;
      });

    } else {
      setState(() {
        this._myList = this._unFiltered;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dashboard"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(hintText: "Search..."),
              onChanged: (String key) {
                this.searchData(key);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _myList == null ? 0 : _myList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.book),
                  ),
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
          )
        ],
      ),
    );
  }
}
