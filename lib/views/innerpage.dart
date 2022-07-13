import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InnerPage extends StatefulWidget {
  // const InnerPage({Key? key}) : super(key: key);
  final String text;
  final String name;
  InnerPage({required this.text, required this.name});

  @override
  State<InnerPage> createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo page"),
      ),
      body: Center(
        child: Text(widget.text),
        // stateful
      ),
    );
  }
}
