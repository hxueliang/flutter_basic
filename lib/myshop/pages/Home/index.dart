import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/api/home.dart';
import 'package:flutter_basic/myshop/components/home/MyCategory.dart';
import 'package:flutter_basic/myshop/components/home/MyHot.dart';
import 'package:flutter_basic/myshop/components/home/MyMoreList.dart';
import 'package:flutter_basic/myshop/components/home/MySlider.dart';
import 'package:flutter_basic/myshop/components/home/MySuggestion.dart';
import 'package:flutter_basic/myshop/models/home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BannerItem> _bannerList = [
    // BannerItem(
    //     id: '1',
    //     imgUrl:
    //         'https:////img14.360buyimg.com/jdcms/s480x480_jfs/t1/353540/5/21653/235122/693153f5F895149c7/e4ce3626372527dc.jpg'),
    // BannerItem(
    //     id: '1',
    //     imgUrl:
    //         'https:////img20.360buyimg.com/jdcms/s480x480_jfs/t1/327383/22/7240/71370/68a41279F3c654ae9/b588ab59750807b8.jpg'),
    // BannerItem(
    //     id: '1',
    //     imgUrl:
    //         'https://img30.360buyimg.com/jdcms/s480x480_jfs/t1/243434/4/11282/91502/668280abFfcf8f2ff/1cd615a88e464bf1.jpg'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBannerList();
  }

  _getBannerList() async {
    _bannerList = await getBannerListApi();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChildren());
  }

  List<Widget> _getScrollChildren() {
    return [
      SliverToBoxAdapter(child: MySlider(bannerList: _bannerList)),
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
