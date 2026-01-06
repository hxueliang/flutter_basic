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
              title: Text("Column 组件"),
            ),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 100, height: 100, color: Colors.blue),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        margin: EdgeInsets.only(top: 10)),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        margin: EdgeInsets.only(top: 10)),
                  ],
                ))));
  }
}
