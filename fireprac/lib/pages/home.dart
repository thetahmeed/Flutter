import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _logOutUser() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _teNameControler = TextEditingController();

    final CollectionReference userCollection =
        FirebaseFirestore.instance.collection('users');

    Future<void> _updateCollectionField() {
      return userCollection
          .doc('eSrhvjyafMfDebUOGnv5')
          .update({'name': 'Shafoyan'})
          .then((value) => print("User Updated"))
          .catchError((error) => print("Failed to update user: $error"));
    }

    Future<void> addUser(String name) {
      // Call the user's CollectionReference to add a new user
      return userCollection
          .add({
            'name': name,
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _logOutUser();
              })
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _teNameControler,
                      maxLength: null,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.save, color: Colors.blue),
                    onPressed: () {
                      addUser(_teNameControler.text)
                          .then((value) => _teNameControler.clear());
                    },
                  )
                ],
              ),
              Divider(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _doQuery,
                      child: Text('QuerySnapshot'),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: _getDocument,
                      child: Text('DocumentSnapshot'),
                    ),
                  ],
                ),

                /*FutureBuilder(
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> map = snapshot.data.data();

                      return Text(map['age'].toString());
                    }

                    return Center(child: CircularProgressIndicator());
                  },
                  future: userCollection.doc('1DYct3XuYS1g7XTaexnb').get(),
                ),*/
              ),

              /*StreamBuilder(
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        children: snapshot.data.docs
                            .map((e) => ListTile(
                                  leading:
                                      CircleAvatar(child: Text(e['name'][0])),
                                  title: Text(e['name']),
                                  subtitle:
                                      Text('Click the name for more details'),
                                ))
                            .toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error found'));
                    } else if (!snapshot.hasData) {
                      return Text('No data found');
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                  stream: userCollection.snapshots(),
                ),
                  ),*/
              ElevatedButton(
                  onPressed: _updateCollectionField,
                  child: Text('Update data')),
            ],
          ),
        ),
      ),
    );
  }

  // to get all the data
  _doQuery() {
    FirebaseFirestore.instance.collection('users').get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            print(doc["name"]);
          },
        );
      },
    );
  }

  // to get a specific data
  _getDocument() {
    FirebaseFirestore.instance
        .collection('users')
        .doc('1DYct3XuYS1g7XTaexnb')
        .get()
        .then(
      (DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          print(
              'Document data: ${documentSnapshot.data()['name']}'); // data method, which returns a Map<String, dynamic>, or null if it does not exist
        } else {
          print('Document does not exist on the database');
        }
      },
    );
  }
}
