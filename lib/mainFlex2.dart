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
              title: Text("Flox 组件 2"),
            ),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber,
                child: Flex(direction: Axis.vertical, children: [
                  Container(
                    color: Colors.green,
                    height: 80,
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Container(
                    color: Colors.blue,
                    height: 80,
                  ),
                ]))));
  }
}
