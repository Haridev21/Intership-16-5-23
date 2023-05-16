import 'package:flutter/material.dart';
class FlutterButton extends StatefulWidget {
  const FlutterButton({Key? key}) : super(key: key);

  @override
  State<FlutterButton> createState() => _FlutterButtonState();
}

class _FlutterButtonState extends State<FlutterButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER BUTTON PAGE",
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(

              width: width,
              child: Text("FlutterButtons here",
              textAlign: TextAlign.center,
              textScaleFactor: 4.0,
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w300,
                  fontSize: 10.0,
                  fontFamily: "Caveat",
                ),
              )),
          // TextButton(
          //     onPressed: (){}, child:Text("LOGIN")),
          // OutlinedButton(
          //     onPressed: (){}, child:Text("SIGNUP")),
          // ElevatedButton(
          //     onPressed:(){}, child:Text("RELOGIN")),
          // IconButton(
          //     onPressed: (){}, icon:Icon(Icons.add_a_photo))
        ],
      ),
    );
  }
}
