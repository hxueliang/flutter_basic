import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("登录"),
            ),
            body: Container(
                alignment: Alignment.center,
                color: Colors.white,
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "请输入用户名",
                          contentPadding: EdgeInsets.only(left: 12),
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "请输入密码",
                          contentPadding: EdgeInsets.only(left: 12),
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("登录",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))))
                  ],
                ))));
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Text 组件"))));
  }
}
