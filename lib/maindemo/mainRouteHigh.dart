import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/goodsList',
        routes: {
          '/goodsList': (context) => GoodsList(),
        },
        onGenerateRoute: (settings) {
          print(settings.name);
          if (settings.name == '/cardList') {
            bool isLogin = false;
            if (isLogin) {
              return MaterialPageRoute(builder: (context) => CardList());
            } else {
              return MaterialPageRoute(builder: (context) => LoginPage());
            }
          }
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => NotFound());
        });
  }
}

class GoodsList extends StatefulWidget {
  GoodsList({Key? key}) : super(key: key);

  @override
  _GoodsListState createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表')),
        body: Container(
            alignment: Alignment.center,
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cardList');
                  },
                  child: Text('加入购物车')),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/abc');
                  },
                  child: Text('abc')),
            ])));
  }
}

class CardList extends StatefulWidget {
  CardList({Key? key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('购物车列表')),
      body: Container(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/CardList');
              },
              child: Text('去结算'))),
    );
    ;
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录页')),
      body: Container(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/CardList');
              },
              child: Text('登录'))),
    );
  }
}

class NotFound extends StatefulWidget {
  NotFound({Key? key}) : super(key: key);

  @override
  _NotFoundState createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NotFound')),
      body: Container(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/CardList');
              },
              child: Text('404'))),
    );
  }
}
