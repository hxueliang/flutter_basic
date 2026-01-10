import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text(
        '轮播图',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
