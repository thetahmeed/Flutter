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
    home: HomePage2(),
  ));
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Center(
                child: Text(
                  "Menu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mail"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          
          ElevatedButton(
            child: Text("Show Toast"),
            onPressed: () {
              setState(() {
                
              });
            },
          ),
          
          ElevatedButton(
            child: Text("Show Snack"),
            onPressed: () {
              setState(() {
                
              });
            },
          ),
          
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Center(
                child: Text(
                  "Menu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mail"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [Text("Hello")],
      ),
    );
  }
}
