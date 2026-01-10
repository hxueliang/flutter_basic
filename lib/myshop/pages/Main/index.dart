import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, String>> _items = [
    {
      'icon': 'lib/myshop/assets/ic_home.png',
      'activeIcon': 'lib/myshop/assets/ic_home_fill.png',
      'label': '首页'
    },
    {
      'icon': 'lib/myshop/assets/ic_message.png',
      'activeIcon': 'lib/myshop/assets/ic_message_fill.png',
      'label': '消息'
    },
    {
      'icon': 'lib/myshop/assets/ic_cart.png',
      'activeIcon': 'lib/myshop/assets/ic_cart_fill.png',
      'label': '购物车'
    },
    {
      'icon': 'lib/myshop/assets/ic_my.png',
      'activeIcon': 'lib/myshop/assets/ic_my_fill.png',
      'label': '我的'
    },
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Text('Main Page'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {
            _currentIndex = index;
            setState(() {});
          },
          currentIndex: _currentIndex,
          items: _getBottomNavigationBar(),
        ));
  }

  List<BottomNavigationBarItem> _getBottomNavigationBar() {
    return List.generate(_items.length, (index) {
      return BottomNavigationBarItem(
          icon: Image.asset(
            _items[index]['icon']!,
            width: 30,
            height: 30,
          ),
          activeIcon: Image.asset(
            _items[index]['activeIcon']!,
            width: 30,
            height: 30,
          ),
          label: _items[index]['label']);
    });
  }
}
