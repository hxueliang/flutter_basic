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
          appBar: AppBar(
            title: Text("Main Page"),
          ),
          body: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                  child: Text(
                "Hello",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          )),
    );
  }
}
