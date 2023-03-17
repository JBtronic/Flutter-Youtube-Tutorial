import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Text Change with Slider"),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(
          "JBtronic",
          style: TextStyle(
            fontSize: _fontSize,
          ),
        ),
        SizedBox(
          width: 270,
          child: Slider(
            value: _fontSize,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            min: 10.0,
            max: 30.0,
            onChanged: (value){
              setState(() {
                _fontSize = value;
              });
            },
          ),
        )
      ]),
    ));
  }
}
