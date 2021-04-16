import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  bool _checked1 = false;
  bool _checked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: TextButton(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      applicationIcon: Image.network(
                        'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
                        height: 50,
                        width: 50,
                      ),
                      applicationName: 'App Name',
                      applicationVersion: '1.0',
                      applicationLegalese: 'bids ehfwje',
                      children: [Text('data'), Text('data2')]);
                },
                child: Text('About'))),
      ),
    );
  }
}
