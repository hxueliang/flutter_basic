import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/models/home.dart';

class MyCategory extends StatefulWidget {
  final List<CategoryItem> categoryList;
  MyCategory({Key? key, required this.categoryList}) : super(key: key);

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
              children: List.generate(widget.categoryList.length, (index) {
                return Container(
                  width: 80,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 236, 236),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        widget.categoryList[index].picture,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        widget.categoryList[index].name,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                );
              })),
        ));
  }
}
