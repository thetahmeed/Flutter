import 'package:flutter/material.dart';

class BottomSheetPrac extends StatefulWidget {
  @override
  _BottomSheetPracState createState() => _BottomSheetPracState();
}

class _BottomSheetPracState extends State<BottomSheetPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Show Snackbar"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      )
          /*ElevatedButton(
          child: Text("Show Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                enableDrag: true,
                elevation: 20,
                context: context,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    height: 240,
                    child: ListView(
                      children: [
                        _singleItem("Tahmeed"),
                        _singleItem("Uahmeed"),
                        _singleItem("Vahmeed"),
                        _singleItem("Wahmeed"),
                        _singleItem("Xahmeed"),
                        _singleItem("Yahmeed"),
                        _singleItem("Zahmeed"),
                        _singleItem("Aahmeed"),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('CLOSE'))
                      ],
                    ),
                  );
                });
          },
        ),*/
          ),
    );
  }

  Widget _singleItem(var a) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(a[0]),
      ),
      title: Text(a),
      subtitle: Text('Subtitle'),
    );
  }
}
