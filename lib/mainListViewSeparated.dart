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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('ListView.separated 分隔线'),
          ),
          body: ListView.separated(
              padding: EdgeInsets.all(10),
              itemCount: 100,
              separatorBuilder: (context, index) {
                return (index % 3 == 0)
                    ? Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber,
                        ),
                      )
                    : SizedBox(
                        height: 10,
                      );
              },
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Text(
                    '第${index + 1}个',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              })),
    );
  }
}
