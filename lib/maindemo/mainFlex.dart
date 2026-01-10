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
              title: Text("Flox 组件"),
            ),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber,
                child: Flex(direction: Axis.horizontal, children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                  )
                ]))));
  }
}
