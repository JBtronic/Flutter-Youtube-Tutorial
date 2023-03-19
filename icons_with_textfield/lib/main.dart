import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final txtEmailID = TextEditingController();
  final txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons Tutorial"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.email_outlined),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                  ),
                  SizedBox(
                    width: 325.0,
                    child: TextField(
                      controller: txtEmailID,
                      decoration: InputDecoration(
                        hintText: "Email ID",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.password_outlined),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                  ),
                  SizedBox(
                    width: 325.0,
                    child: TextField(
                      controller: txtPassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
