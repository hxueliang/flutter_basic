import 'package:flutter/material.dart';

class MyCategory extends StatefulWidget {
  MyCategory({Key? key}) : super(key: key);

  @override
  _MyCategoryState createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Container(
                  width: 80,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '分类$index',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                );
              })),
        ));
  }
}
