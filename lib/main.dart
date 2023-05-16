import 'package:flutter/material.dart';
import 'package:vennikulam1/day3/buttonpage.dart';
import 'package:vennikulam1/day3/first_page.dart';
import 'package:vennikulam1/day3/flutterform.dart';
import 'package:vennikulam1/day3/radio_button.dart';
import 'package:vennikulam1/day3/regstrationform.dart';
import 'package:vennikulam1/day3/secondpage.dart';
import 'package:vennikulam1/text/firstday.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch:Colors.cyan),
      home: FlutterForm());

  }
}




