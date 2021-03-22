import 'package:flutter/material.dart';

class CustomDialoguePrac extends StatefulWidget {
  @override
  _CustomDialoguePracState createState() => _CustomDialoguePracState();
}

class _CustomDialoguePracState extends State<CustomDialoguePrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dialogue'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Custom Dialogue'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      //backgroundColor: Colors.pink,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: -50,
                            child: CircleAvatar(
                              radius: 50,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: Image.asset(
                                  "images/bb.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 240,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Name: Tahmeedul Islam",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Bio: Gfodsi diu is d aiu  og i jogijo i jogidj; ofjogjo ifjog ofijo oidjfoj idjfo ojdof shd d dh kjfdjh fdhfj hdfhjdhsla  sdhh  suhdh fjdhfij df df hd jdk")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ));
                });
          },
        ),
      ),
    );
  }
}
