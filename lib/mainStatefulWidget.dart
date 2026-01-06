import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() {
    print("生命周期createState");
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    // TODO: implement initState
    print("生命周期initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("生命周期didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyPage oldWidget) {
    // TODO: implement didUpdateWidget
    print("生命周期didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("生命周期deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("生命周期dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("生命周期build");
    return MaterialApp(
        title: '有状态组件',
        home: Scaffold(
            appBar: AppBar(title: Text('有状态组件 appBar')),
            body: Container(
              child: Center(child: Text('有状态组件 body')),
            ),
            bottomNavigationBar: Container(
                height: 80, child: Center(child: Text('有状态组件 bottom')))));
  }
}
