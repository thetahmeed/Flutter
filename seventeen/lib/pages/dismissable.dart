import 'package:flutter/material.dart';

class DismissablePrac extends StatefulWidget {
  @override
  _DismissablePracState createState() => _DismissablePracState();
}

class _DismissablePracState extends State<DismissablePrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dismissible(
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            key: Key("abc"),
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                child: Icon(
                  Icons.lock_outline_rounded,
                ),
              ),
              title: Text('Unread notification'),
              subtitle: Text('Harshita has licked your post'),
              trailing: Icon(Icons.more_vert),
              //tileColor: Colors.blueAccent.shade100,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              child: Icon(
                Icons.lock_outline_rounded,
              ),
            ),
            title: Text('Unread notification'),
            subtitle: Text('Harshita has licked your post'),
            trailing: Icon(Icons.more_vert),
            //tileColor: Colors.blueAccent.shade100,
          ),
        ],
      )),
    );
  }
}
