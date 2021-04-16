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
          child: ListView(
            children: [
              CheckboxListTile(
                title: Text('Title'),
                subtitle: Text('Subtitle'),
                secondary: Icon(Icons.more_vert),
                controlAffinity: ListTileControlAffinity.leading,
                value: _checked1,
                onChanged: (v) {
                  setState(() {
                    _checked1 = v;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Title'),
                subtitle: Text('Subtitle'),
                secondary: Icon(Icons.more_vert),
                controlAffinity: ListTileControlAffinity.leading,
                value: _checked2,
                onChanged: (v) {
                  setState(() {
                    _checked2 = v;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
