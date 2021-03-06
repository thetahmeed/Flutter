import 'package:flutter/material.dart';

final _longText = "Trust me or not but this is a very very" +
    "Trust me or not but this is a very very" +
    " very very long text. Not very big. But big";

final List _myList = [
  {"name": "Tahmeed", "email": "audgk@fhd.com"},
  {"name": "Another Tahmeed", "email": "iagdqi@fuhd.com"},
  {"name": "Again Another Tahmeed", "email": "jhfdsk@fdj.com"}
];

Widget _makeAGap() {
  return SizedBox(
    width: 10,
  );
}

void main() {
  runApp(MaterialApp(
    title: "Eleven",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      body: ListView.builder(
        itemCount: _myList.length,
        itemBuilder: (BuildContext context, int index){
          return Column(children: [
            ListTile(
              leading: CircleAvatar(
                child: Text(_myList[index]["name"][0]),
              ),
              title: Text(_myList[index]["name"]),
              subtitle: Text(_myList[index]["email"]),
            )
          ],);
        },
      ),
    );
  }
}
