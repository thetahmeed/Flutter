import 'package:flutter/material.dart';
import 'package:twelve/pages/page1.dart';

void main() {
  runApp(
    MaterialApp(home: Dashboard()),
  );
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text("Click here to go to next activity"),
            ElevatedButton(
              child: Text("Go"),
              onPressed: () {
                // Going to another activity
                Route route = MaterialPageRoute(builder: (context) => PageOne());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
