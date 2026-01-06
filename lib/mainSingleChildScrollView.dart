import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('滚动组件'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: List.generate(100, (index) {
              return Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Text(
                  '我是第${index + 1}个组件',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              );
            }),
          )),
    ));
  }
}
