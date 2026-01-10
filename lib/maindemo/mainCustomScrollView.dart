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
  int _currentIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView.builder 网格视图'),
            ),
            body: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 240,
                    color: Colors.blue,
                    child: PageView.builder(
                        controller: _pageController,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.blue,
                            child: Text('第${index + 1}个',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          );
                        }),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(10, (index) {
                            return GestureDetector(
                              onTap: () {
                                _pageController.animateToPage(
                                  index,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                                _currentIndex = index;
                                setState(() {});
                              },
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: _currentIndex == index
                                        ? Colors.red
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                              ),
                            );
                          })))
                ],
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
    return false;
  }
}
