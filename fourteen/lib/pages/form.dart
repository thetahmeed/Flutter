import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  List users = [];

  _loadData() async {
    // When request is from Android
    var jsonString = await rootBundle.loadString("assets/data.json");
    // When request is from Web

    setState(() {
      this.users = json.decode(jsonString);
    });
  }

  @override
  void initState() {
    super.initState();
    this._loadData();
  }

  var formKey = GlobalKey<FormState>();

  var nameEditTextController = TextEditingController();
  var phoneEditTextController = TextEditingController();
  var emailEditTextController = TextEditingController();

  var name, gender, phone, phone2, email;

  void handleReset() {
    nameEditTextController.clear();
    phoneEditTextController.clear();
    emailEditTextController.clear();

    setState(() {
      gender = null;
      phone2 = null;
    });
  }

  void handleSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      // TODO: Save the data where ever you want
      // Or:
      // We can use pre dec. variables name, phone and email
      print(
          "Name: ${this.name}\nGender: ${this.gender}\nPhone: ${this.phone}\nEmail: ${this.email}\n");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: nameEditTextController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: "Enter your name"),
                    validator: (value) {
                      if (value.length == 0) {
                        return "Name is required";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  DropdownButtonFormField(
                    validator: (v) {
                      if (v == null) {
                        return "Gender is required";
                      } else {
                        return null;
                      }
                    },
                    hint: Text("Select your gender"),
                    onChanged: (v) {
                      setState(() {
                        this.gender = v;
                      });
                    },
                    value: this.gender,
                    items: [
                      DropdownMenuItem(
                        child: Text('Male'),
                        value: 'male',
                      ),
                      DropdownMenuItem(
                        child: Text('Female'),
                        value: 'female',
                      ),
                      DropdownMenuItem(
                        child: Text('Custom'),
                        value: 'custom',
                      ),
                    ],
                  ),
                  DropdownButtonFormField(
                    validator: (v) {
                      if (v == null) {
                        return "Number is required";
                      } else {
                        return null;
                      }
                    },
                    hint: Text("Select your number"),
                    onChanged: (v) {
                      setState(() {
                        this.phone2 = v;
                      });
                    },
                    value: this.phone2,
                    items: users.map((user) {
                      return DropdownMenuItem<String>(
                        value: user['employee_salary'].toString(),
                        child: Text(
                          user['employee_salary'].toString(),
                        ),
                      );
                    }).toList(),
                  ),
                  TextFormField(
                    controller: emailEditTextController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Enter your Email"),
                    validator: (value) {
                      if (value.length == 0) {
                        return "Email is required";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.email = value;
                    },
                  ),
                  Row(
                    // Vertical alignment
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // Horizontal alignment
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          handleReset();
                        },
                        child: Text("Clear"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          handleSubmit();
                        },
                        child: Text("SUBMIT"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
