import 'package:flutter/material.dart';

final _longText =
    "Trust me or not\n\n\n but this is a very very\n\n very very long text.\n\n\n Not very big. But big";

Widget _makeAGap(){
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
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Orange",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.red),
                ),

                _makeAGap(),

                Expanded(
                  child: Container(
                    child: Icon(Icons.face, color: Colors.white,),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),

                _makeAGap(),

                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.purple),
                ),
              ],
            )
          ],
        ));
  }
}
