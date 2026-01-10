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
            appBar: AppBar(
              title: Text('Align 组件'),
            ),
            body: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.center,
                widthFactor: 2,
                heightFactor: 3,
                child: Icon(Icons.star, color: Colors.amber, size: 60),
              ),
            )));
  }
}
