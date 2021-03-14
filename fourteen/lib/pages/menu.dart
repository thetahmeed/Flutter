import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List users = [];

  _loadData() async {
    var jsonString = await rootBundle.loadString("data.json");
    setState(() {
      this.users = json.decode(jsonString);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page"),
        centerTitle: true,
      ),
      body: Container(
        // it will take rest of all space
        width: double.infinity,
        child: ListView.builder(
          itemCount: users == null ? 0 : users.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(users[index]["employee_name"]),
              subtitle: Text("Age: " + users[index]["employee_age"].toString()),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
