import 'package:flutter/material.dart';
class RadioExample extends StatefulWidget {
  const RadioExample({Key? key}) : super(key: key);

  @override
  State<RadioExample> createState() => _RadioExampleState();
}
enum Gender{
  male,
  female,
  other
}


class _RadioExampleState extends State<RadioExample> {
  var ha=Gender.male;//for radio

  var chk1=true;
  var chk2=false;
  var chk3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RADIO BUTTON",
          style:TextStyle(
            color: Colors.pink,
          ),
          ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(value:Gender.male, groupValue:ha, onChanged:(value) {
                setState(() {
                  ha=value!;
                });
              },
              ),
              Text("MALE"),
              Radio(value:Gender.female, groupValue: ha, onChanged:(value) {
                setState(() {
                  ha=value!;
                });
              },
              ),
              Text("FEMALE"),
              Radio(value: Gender.other, groupValue:ha, onChanged: (value) {
               setState(() {
                 ha=value!;
               });
              },
              ),
              Text("OTHERS"),
            ],
          ),
          Row(
            children: [
              Checkbox(value: chk1, onChanged:(value) {
                setState(() {
                  chk1=value!;
                }
                );
              },
              ),
              Text("JAVA"),

              Checkbox(value:chk2, onChanged: (value) {
                setState(() {
                  chk2=value!;
                }
                );
              },
              ),
              Text("C++"),
              Checkbox(value: chk3, onChanged: (value) {
                setState(() {
                  chk3=value!;
                }
                );
              },),
              Text("FLUTTER"),

            ],
          ),
        ],
      ),
    );
  }
}


