import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  var nameEditTextController = TextEditingController();
  var phoneEditTextController = TextEditingController();
  var emailEditTextController = TextEditingController();

  var name, phone, email;

  void handleReset() {
    nameEditTextController.clear();
    phoneEditTextController.clear();
    emailEditTextController.clear();
  }

  void handleSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      // TODO: Save the data where ever you want
      // Or:
      // We can use pre dec. variables name, phone and email
      print("Name: ${this.name}\nPhone: ${this.phone}\nEmail: ${this.email}\n");
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
                  TextFormField(
                    controller: phoneEditTextController,
                    maxLength: 11,
                    keyboardType: TextInputType.phone,
                    decoration:
                        InputDecoration(labelText: "Enter your Phone Number"),
                    validator: (value) {
                      if (value.length < 11) {
                        return "Phone Number is invalid";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
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
