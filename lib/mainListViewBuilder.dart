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
            title: Text('ListView.builder 按需渲染'),
          ),
          body: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 100,
              itemBuilder: (context, index) {
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
                    '第${index + 1}个',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              })),
    );
  }
}
