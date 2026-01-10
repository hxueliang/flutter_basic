import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      transform: Matrix4.rotationZ(0.05),
      child: Text(
        'hello world',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.yellowAccent),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15)),
    )));
  }
}
