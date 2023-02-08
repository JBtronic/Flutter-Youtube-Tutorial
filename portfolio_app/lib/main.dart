import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar(
      title: Text('Jawwad ID Card'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: Container(
      padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/jawwad.jpg'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Divider(
            height: 60,
            color: Colors.red[500],
          ),
          Text(
            'Name',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Syed Jawwad Ahmad Bilgrami',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Designation',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Software Developer',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[800],
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'jawwadbilgrami98@gmail.com',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    ),
  )));
}
