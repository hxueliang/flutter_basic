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
                alignment: Alignment.center,
                color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Image.asset(
                      "lib/images/mouse.jpeg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://m.360buyimg.com/babel/jfs/t20280615/318148/22/9216/14627/684fdc85Fa154b4e0/0742847dfed41e81.png',
                      width: 200,
                    )
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
