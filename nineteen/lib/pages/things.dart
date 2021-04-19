import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  List<bool> _myBoolList = [true, true, false, true, true];
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      print(_myBoolList);
                    },
                    child: Text('data')),
                ExpansionPanelList(
                  expansionCallback: (c, isOpen) {
                    setState(() {});
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (c, isOpen) {
                        return Text('data');
                      },
                      body: Text('data'),
                      isExpanded: _isOpen,
                    ),
                    ExpansionPanel(
                      headerBuilder: (c, isOpen) {
                        return Text('data');
                      },
                      body: Text('data'),
                      isExpanded: _isOpen,
                    ),
                    ExpansionPanel(
                      headerBuilder: (c, isOpen) {
                        return Text('data');
                      },
                      body: Text('data'),
                      isExpanded: _isOpen,
                    ),
                    ExpansionPanel(
                      headerBuilder: (c, isOpen) {
                        return Text('data');
                      },
                      body: Text('data'),
                      isExpanded: _isOpen,
                    ),
                    ExpansionPanel(
                      headerBuilder: (c, isOpen) {
                        return Text('data');
                      },
                      body: Text('data'),
                      isExpanded: _isOpen,
                    ),
                  ],
                ),
              ],
            ),
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
