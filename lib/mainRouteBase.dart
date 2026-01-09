import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListPage());
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("列表页")),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 100,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPage()));
                },
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Text("列表项${index + 1}"),
                ),
              );
            }));
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("详情页")),
        body: Container(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("返回上一页", style: TextStyle(fontSize: 16))),
        ));
  }
}
