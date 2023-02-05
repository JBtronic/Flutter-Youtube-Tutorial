import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: SafeArea(
            child: Container(
              height: 200,
              width: 150,
              margin: EdgeInsets.only(bottom: 40),
              padding: EdgeInsets.all(25),
              color: Colors.white,
              child: Text('Jawwad'),
            ),
          ),
        ),
      ),
    );
