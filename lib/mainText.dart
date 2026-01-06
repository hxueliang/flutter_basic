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
              title: Text("Text 组件"),
            ),
            body: Container(
                color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello World!",
                        style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: Colors.red,
                          decorationThickness: 2,
                        ),
                      ),
                      Text(
                        "我知道了，今天很冷。我知道了，今天很冷。我知道了，今天很冷。我知道了，今天很冷。我知道了，今天很冷。我知道了，今天很冷。我知道了，今天很冷。",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text.rich(TextSpan(
                          text: "Hello ",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              decorationThickness: 2),
                          children: [
                            TextSpan(
                                text: "Flutter",
                                style: TextStyle(color: Colors.green)),
                            TextSpan(text: "!")
                          ]))
                    ]))));
  }
}
