import 'package:flutter/material.dart';
import 'package:fourteen/pages/receivedata.dart';
import 'package:provider/provider.dart';

class StateManagementPage extends StatefulWidget {
  @override
  _StateManagementPageState createState() => _StateManagementPageState();
}

class _StateManagementPageState extends State<StateManagementPage> {
  @override
  Widget build(BuildContext context) {
    final _dataFromDataClass = Provider.of<Data>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("State Managemnet"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.open_in_new),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RecevePage()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20.0,
        onPressed: () {
          _dataFromDataClass._increament();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
            )
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueAccent,
        elevation: 10,
      ),
      body: Center(
        child: Text(
          _dataFromDataClass._currentNumber.toString(),
          style: TextStyle(
            fontSize: 190,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  int _currentNumber = 0;

  _increament() {
    _currentNumber++;
    notifyListeners();
  }
}
