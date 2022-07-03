import 'package:app/pages/chat.dart';
import 'package:app/pages/feed.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentindex = 0;
  // final Screens = [
  //   Center(
  //     child: Text("Home"),
  //   ),
  //   Center(
  //     child: Text("Feed"),
  //   ),
  //   Center(
  //     child: Text("Chat"),
  //   ),
  //   Center(
  //     child: Text("Wishlist"),
  //   )
  // ];

  final Screens = [HomePage(), FeedPage(), ChatPage(), WishPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) => setState(() {
                currentindex = index;
              }),
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 4, 0, 245),
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              // backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: "Feed",
              // backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Wishlist")
          ]),
    );
  }
}
