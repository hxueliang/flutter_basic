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
              title: Text('GridView.builder 网格视图'),
            ),
            body: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: Container(
                alignment: Alignment.center,
                height: 240,
                color: Colors.blue,
                child: Text(
                  '轮播图',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverPersistentHeader(
                  delegate: _SliverPersistentHeaderDelegate(), pinned: true),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverList.separated(itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('第${index + 1}个',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                );
              }, separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              })
            ])));
  }
}

class _SliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: 100,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Text('第${index + 1}个',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            );
          }),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 60;

  @override
  // TODO: implement minExtent
  double get minExtent => 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw false;
  }
}
