import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  List<Widget> getList() {
    return List.generate(10, (index) {
      return Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Wrap 组件"),
            ),
            body: Container(
                color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    children: getList()))));
  }
}
