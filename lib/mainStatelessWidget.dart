import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '无状态组件',
        home: Scaffold(
          appBar: AppBar(title: Text('StatelessWidget')),
          body: Container(child: Center(child: Text('Hello World'))),
          bottomNavigationBar: Container(
              height: 80, child: Center(child: Text('bottomNavigationBar'))),
        ));
  }
}
