import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

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
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: "Enter your name"),
                    validator: (value) {
                      if (value.length == 0) {
                        return "Name is required";
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    maxLength: 11,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(labelText: "Enter your Phone"),
                    validator: (value) {
                      if (value.length == 0) {
                        return "Phone is required";
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Enter your Email"),
                    validator: (value) {
                      if (value.length == 0) {
                        return "Email is required";
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
