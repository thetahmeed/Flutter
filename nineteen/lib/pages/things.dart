import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              Slidable(
                actionPane: SlidableScrollActionPane(),
                actions: [
                  IconSlideAction(
                    icon: Icons.save_rounded,
                    caption: 'Save',
                    color: Colors.green,
                    onTap: () {},
                  ),
                  IconSlideAction(
                    icon: Icons.share_rounded,
                    caption: 'Share',
                    color: Colors.green,
                    onTap: () {},
                  ),
                ],
                secondaryActions: [
                  IconSlideAction(
                    icon: Icons.save_rounded,
                    caption: 'Delete',
                    color: Colors.red,
                    onTap: () {},
                  ),
                ],
                actionExtentRatio: 0.2,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('f'),
                  ),
                  title: Text('Name'),
                  subtitle: Text('eamil@gmail.com'),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text('f'),
                ),
                title: Text('Name'),
                subtitle: Text('eamil@gmail.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _theImage() {
    return Image.network(
      'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
      height: 150,
      width: 150,
    );
  }
}

class BigPage extends StatefulWidget {
  @override
  _BigPageState createState() => _BigPageState();
}

class _BigPageState extends State<BigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'This is a title',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 10),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
