import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fourteen/models/user.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List users = [];

  _loadData() async {
    // When request is from Android
    var jsonString = await rootBundle.loadString("assets/data.json");
    // When request is from Web

    setState(() {
      this.users = json.decode(jsonString);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _launchURL(var _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  void _callOrSmsUser(var _phone) async {
    await canLaunch(_phone)
        ? await launch(_phone)
        : throw 'Could not launch $_phone';
  }

  listPopUpMenu(User user) {
    return PopupMenuButton(
      offset: Offset(0, 40),
      onSelected: (value) {
        switch (value) {
          case "call":
            _callOrSmsUser("tel:${user.employeeSalary}");
            break;

          case "message":
            _callOrSmsUser("sms:${user.employeeSalary}");
            break;

          case "website":
            _launchURL("https://pub.dev/packages/url_launcher");
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.call),
                SizedBox(
                  width: 10,
                ),
                Text("Call"),
              ],
            ),
            value: "call",
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.message),
                SizedBox(
                  width: 10,
                ),
                Text("Send message"),
              ],
            ),
            value: "message",
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.web),
                SizedBox(
                  width: 10,
                ),
                Text("Visit website"),
              ],
            ),
            value: "website",
          )
        ];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            offset: Offset(0, 55),
            elevation: 10,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Share"),
                  value: "share",
                ),
                PopupMenuItem(
                  child: Text("About"),
                  value: "about",
                ),
                PopupMenuItem(
                  child: Text("Website"),
                  value: "website",
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        // it will take rest of all space

        width: double.infinity,
        child: ListView.builder(
          itemCount: users == null ? 0 : users.length,
          itemBuilder: (BuildContext context, index) {
            // Displaying data by using a Model

            User singleUser = User.fromJson(users[index]);

            return ListTile(
              leading: CircleAvatar(
                child: Text(singleUser.employeeName[0]),
              ),
              title: Text(singleUser.employeeName),
              subtitle: Text("Age: " + singleUser.employeeAge.toString()),
              trailing: listPopUpMenu(singleUser),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
