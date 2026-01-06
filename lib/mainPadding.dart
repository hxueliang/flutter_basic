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
            appBar: AppBar(title: Text('Padding 组件')),
            body: Container(
              color: Colors.amber,
              child: Padding(
                  // padding: EdgeInsets.all(20),
                  // padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Container(color: Colors.blue)),
            )));
  }
}
