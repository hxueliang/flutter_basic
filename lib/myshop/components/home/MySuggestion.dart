import 'package:flutter/material.dart';

class MySuggestion extends StatefulWidget {
  MySuggestion({Key? key}) : super(key: key);

  @override
  _MySuggestionState createState() => _MySuggestionState();
}

class _MySuggestionState extends State<MySuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '推荐',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
