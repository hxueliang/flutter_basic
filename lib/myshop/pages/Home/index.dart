import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/components/home/MyCategory.dart';
import 'package:flutter_basic/myshop/components/home/MyHot.dart';
import 'package:flutter_basic/myshop/components/home/MyMoreList.dart';
import 'package:flutter_basic/myshop/components/home/MySlider.dart';
import 'package:flutter_basic/myshop/components/home/MySuggestion.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChildren());
  }

  List<Widget> _getScrollChildren() {
    return [
      SliverToBoxAdapter(child: MySlider()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: MyCategory()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: MySuggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(child: MyHot()),
                  SizedBox(width: 10),
                  Expanded(child: MyHot()),
                ],
              ))),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      MyMoreList(),
    ];
  }
}
