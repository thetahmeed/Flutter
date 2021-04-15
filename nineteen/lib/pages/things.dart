import 'package:flutter/material.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  List<bool> _selections = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ToggleButtons(
            children: [
              Icon(Icons.camera_rounded),
              Icon(Icons.photo_size_select_actual_rounded),
              Icon(Icons.info)
            ],
            isSelected: _selections,
            onPressed: (i) {
              setState(() {
                _selections[i] = !_selections[i];
              });
            },
            color: Colors.grey,
            selectedBorderColor: Colors.pink,
            selectedColor: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
