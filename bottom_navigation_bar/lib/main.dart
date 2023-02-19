import 'package:flutter/material.dart';

void main() => runApp(BottomNav());

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom NavBar"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (value){
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Photos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'Albums',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Colors.green,
          ),
        ]),
      ),
    );
  }
}
