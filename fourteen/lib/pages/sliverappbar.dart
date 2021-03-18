import 'package:flutter/material.dart';

class SliverAppBarPrac extends StatefulWidget {
  @override
  _SliverAppBarPracState createState() => _SliverAppBarPracState();
}

class _SliverAppBarPracState extends State<SliverAppBarPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            elevation: 10,
            //actions: [IconButton(icon: Icon(Icons.more), onPressed: () {})],
            pinned: true,
            expandedHeight: 200,
            //backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("This is the title"),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _singleListItem("Tahmeed"),
                _singleListItem("Sahmeed"),
                _singleListItem("Uahmeed"),
                _singleListItem("Vahmeed"),
                _singleListItem("Wahmeed"),
                _singleListItem("Xahmeed"),
                _singleListItem("Yahmeed"),
                _singleListItem("Zahmeed"),
                _singleListItem("Aahmeed"),
                _singleListItem("Bahmeed"),
                _singleListItem("Cahmeed"),
                _singleListItem("Dahmeed"),
                _singleListItem("Eahmeed"),
                _singleListItem("Fahmeed"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _singleListItem(var name) {
  return ListTile(
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
    title: Text(name),
    subtitle: Text("Trust me this is a subtitle"),
  );
}
