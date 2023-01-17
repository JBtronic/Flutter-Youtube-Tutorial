import 'package:flutter/material.dart';

//Starting point of a code.
void main() => runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Jbtronic'),
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://picsum.photos/250?image=9'),
          ),
        ),
      )),
    );
