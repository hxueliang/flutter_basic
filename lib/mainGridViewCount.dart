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
              title: Text('GridView.count 网格视图'),
            ),
            body: GridView.count(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(100, (index) {
                  return Container(
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
                }))));
  }
}
