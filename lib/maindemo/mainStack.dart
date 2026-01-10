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
              title: Text("Stack 组件"),
            ),
            body: Container(
                color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    color: Colors.red,
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 20,
                    height: 20,
                  ),
                ]))));
  }
}
