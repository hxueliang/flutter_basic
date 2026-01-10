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
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('滚动组件'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
              controller: _controller,
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
          Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  print('点击了⬆');
                  // _controller.jumpTo(0);
                  _controller.animateTo(0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red),
                  child: Text('⬆',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              )),
          Positioned(
              bottom: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  print('点击了⬇');
                  // _controller.jumpTo(_controller.position.maxScrollExtent);
                  _controller.animateTo(_controller.position.maxScrollExtent,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red),
                  child: Text('⬇',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ))
        ],
      ),
    ));
  }
}
