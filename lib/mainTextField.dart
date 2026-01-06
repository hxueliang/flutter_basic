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
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
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
                      controller: _phoneController,
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
                      controller: _pwdController,
                      obscureText: true,
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
                            onPressed: () {
                              print(
                                  "账号：${_phoneController.text}，密码：${_pwdController.text}");
                            },
                            child: Text("登录",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))))
                  ],
                ))));
  }
}
