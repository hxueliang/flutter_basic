import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: '有状态组件',
        home: Scaffold(
            appBar: AppBar(title: Text('有状态组件 appBar')),
            body: Container(
              child: Center(child: Text('有状态组件 body')),
            ),
            bottomNavigationBar: Container(
                height: 80, child: Center(child: Text('有状态组件 bottom')))));
  }
}
