import 'package:flutter/material.dart';

class NavigationrailPrac extends StatefulWidget {
  @override
  _NavigationrailPracState createState() => _NavigationrailPracState();
}

class _NavigationrailPracState extends State<NavigationrailPrac> {
  int _selectedIndex = 0;
  final _pages = [
    One(),
    Two(),
    Three(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationRail'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            //extended: true,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.post_add),
                selectedIcon: Icon(
                  Icons.post_add,
                  color: Colors.blue,
                ),
                label: Text('Create'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                selectedIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: Text('Profile'),
              ),
            ],
            selectedIndex: _selectedIndex,
            labelType: NavigationRailLabelType.selected,
            elevation: 10,
            onDestinationSelected: (i) {
              setState(() {
                _selectedIndex = i;
              });
            },
          ),
          Expanded(
              child: Container(
            child: _pages[_selectedIndex],
          )),
        ],
      ),
    );
  }
}

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('One'),
    );
  }
}

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Two'),
    );
  }
}

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Three'),
    );
  }
}
