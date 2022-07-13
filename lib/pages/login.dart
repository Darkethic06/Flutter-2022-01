import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Here"),
        centerTitle: true,
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(hintText: "Name"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) => setState(() {
                        name = value!;
                      })),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "email"),
                validator: (value) {
                  final pattern =
                      "^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                  final regExp = RegExp(pattern);
                  if (!regExp.hasMatch(value!)) {
                    return "enter a valid email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() {
                  email = value!;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "password"),
                validator: (value) {
                  if (value!.length < 8) {
                    return "Enter more than 8 characters";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() {
                  pass = value!;
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    final isValid = formkey.currentState!.validate();
                    if (isValid) {
                      formkey.currentState!.save();
                    }
                  },
                  child: Text("Submit")),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(
                children: [
                  Text(name),
                  Text(email),
                  Text(pass),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// data model : quiz(bool) 
// data model : mcq