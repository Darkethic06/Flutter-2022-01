import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currencies = ["Select", "INR", "USD", "BDT"];
  var currentItem = "Select";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: DropdownButton(
          value: currentItem, // default value
          items: currencies.map((String dropItems) {
            return DropdownMenuItem<String>(
              value: dropItems,
              child: Text(
                dropItems,
                style: TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              currentItem = newValue!;
              // print(currentItem);
            });
          },
        ),
      )),
    );
  }
}
