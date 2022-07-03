import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stackpage extends StatefulWidget {
  const Stackpage({Key? key}) : super(key: key);

  @override
  State<Stackpage> createState() => _StackpageState();
}

class _StackpageState extends State<Stackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackPage"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: 350,
                  height: 350,
                  alignment: Alignment.topRight,
                  child: Text("Top"),
                  color: Colors.red,
                ),
                Container(
                  width: 300,
                  height: 300,
                  alignment: Alignment.topLeft,
                  child: Text("ProfileName"),
                ),
                Container(
                  height: 350,
                  width: 350,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("../assets/cimg1.jpg"))),
                  child: Text("This is Image"),
                ),
                Container(
                  width: 280,
                  height: 280,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Icon Here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
