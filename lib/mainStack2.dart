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
              title: Text("Stack 组件 2"),
            ),
            body: Container(
                color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Container(
                    color: Colors.green[200],
                    width: 200,
                    height: 200,
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        color: Colors.red,
                        width: 50,
                        height: 50,
                      )),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        color: Colors.blue,
                        width: 50,
                        height: 50,
                      ))
                ]))));
  }
}
