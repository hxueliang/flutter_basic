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
                title: Text('父组件向子组件通信',
                    style: TextStyle(fontSize: 40, color: Colors.black))),
            body: Container(
              child: Column(
                children: [
                  Text(
                    '父组件',
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  ChildLessWidget(message: '1'),
                  ChildLessWidget(message: '2'),
                  ChildFulWidget(message: 'a'),
                  ChildFulWidget(message: 'b'),
                ],
              ),
            )));
  }
}

class ChildLessWidget extends StatelessWidget {
  final String message;
  const ChildLessWidget({Key? key, this.message = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'less子组件接收到信息：${message}',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}

class ChildFulWidget extends StatefulWidget {
  final String message;
  ChildFulWidget({Key? key, required this.message}) : super(key: key);

  @override
  _ChildFulWidgetState createState() => _ChildFulWidgetState();
}

class _ChildFulWidgetState extends State<ChildFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'ful子组件接收到信息：${widget.message}',
        style: TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }
}
