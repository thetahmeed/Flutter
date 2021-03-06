import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  _showToast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    /*
    Custom Toast will not work on android 11 and above, 
    it will only use msg and toastLength remaining 
    all properties are ignored
    */

  }

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
                _showToast();
              });
            },
          ),
          ElevatedButton(
            child: Text("Show Snack"),
            onPressed: () {
              setState(() {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('A SnackBar has been shown.'),
                  ),
                );
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
