import 'package:flutter/material.dart';
class TextOne extends StatefulWidget {
  const TextOne({Key? key}) : super(key: key);

  @override
  State<TextOne> createState() => _TextOneState();
}

class _TextOneState extends State<TextOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLO",
            style: TextStyle(
            color: Colors.brown,
            fontWeight:FontWeight.bold
        ),
        ),
      ),
    body: Text("LOGIN PAGE"),
    );
  }
}
