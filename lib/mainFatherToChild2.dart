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
  List<String> _list = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("父传子安全"),
            ),
            body: GridView.count(
                padding: EdgeInsets.all(10),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(_list.length, (index) {
                  return ChildWidget(text: _list[index]);
                }))));
  }
}

class ChildWidget extends StatefulWidget {
  final String text;
  ChildWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(widget.text),
    );
  }
}
