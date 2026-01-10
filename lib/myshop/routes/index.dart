import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/main.dart';
import 'package:flutter_basic/myshop/pages/Login/index.dart';
import 'package:flutter_basic/myshop/pages/Main/index.dart';

Widget getRootWidget() {
  return MaterialApp(routes: getRoutes());
}

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) => MainPage(),
    '/login': (context) => LoginPage(),
  };
}
