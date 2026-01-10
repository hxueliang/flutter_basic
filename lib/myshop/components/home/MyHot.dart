import 'package:flutter/material.dart';

class MyHot extends StatefulWidget {
  MyHot({Key? key}) : super(key: key);

  @override
  _MyHotState createState() => _MyHotState();
}

class _MyHotState extends State<MyHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text(
        'MyHot',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
