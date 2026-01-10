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
              title: Text("父子组件通信"),
            ),
            body: GridView.count(
                padding: EdgeInsets.all(10),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(_list.length, (index) {
                  return ChildWidget(
                    text: _list[index],
                    index: index,
                    onDelete: (int) {
                      _list.removeAt(int);
                      setState(() {});
                    },
                  );
                }))));
  }
}

class ChildWidget extends StatefulWidget {
  final String text;
  final int index;
  final Function(int) onDelete;
  ChildWidget(
      {Key? key,
      required this.text,
      required this.index,
      required this.onDelete})
      : super(key: key);

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(widget.text),
        ),
        IconButton(
          icon: Icon(Icons.delete),
          color: Colors.red,
          onPressed: () {
            print("删除${widget.index}");
            widget.onDelete(widget.index);
          },
        )
      ],
    );
  }
}
