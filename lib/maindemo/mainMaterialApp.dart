import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
      title: 'Flutter MaterialApp',
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('appBar'),
        ),
        body: Container(
          child: Center(
            child: Text('body'),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: Center(
            child: Text('bottomNavigationBar'),
          ),
        ),
      )));
}
