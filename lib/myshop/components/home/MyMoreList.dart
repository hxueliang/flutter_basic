import 'package:flutter/material.dart';

class MyMoreList extends StatefulWidget {
  MyMoreList({Key? key}) : super(key: key);

  @override
  _MyMoreListState createState() => _MyMoreListState();
}

class _MyMoreListState extends State<MyMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              '商品${index + 1}',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          );
        });
  }
}
