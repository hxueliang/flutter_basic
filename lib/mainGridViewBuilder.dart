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
              title: Text('GridView.builder 网格视图'),
            ),
            body: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5, // 宽高比
                ),
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //     maxCrossAxisExtent: 100,
                //     mainAxisSpacing: 10,
                //     crossAxisSpacing: 10),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.blue,
                    child: Text(
                      '第${index + 1}个',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  );
                })));
  }
}
