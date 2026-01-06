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
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Row(children: [
      TextButton(
          onPressed: () {
            count--;
            print(count.toString());
            setState(() {});
          },
          child: Text('-')),
      Text(count.toString()),
      TextButton(
          onPressed: () {
            count++;
            print(count.toString());
            setState(() {});
          },
          child: Text('+')),
    ])));
  }
}
