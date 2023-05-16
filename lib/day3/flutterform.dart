import 'package:flutter/material.dart';
class FlutterForm extends StatefulWidget {
  const FlutterForm({Key? key}) : super(key: key);

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  bool _showPassword = true;
  final _formkey=GlobalKey<FormState>();
  var usern=" ",pass=" ";
  var usernameController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("FLUTTER FORMS",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
            fontFamily: "Roboto",
          ),
        ),

      ),
      body: Form(
        key: _formkey,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(child: Text("LOGIN"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: usernameController,
                validator: (value){
                  if(usern==''){
                    return"Enter your UserName";
                  }
                  return null;
                },
                //keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text("USERNAME"),
                  border: OutlineInputBorder(
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                validator: (value){
                  if(pass==''){
                    return"Enter your Password";
                  }
                  return null;
                },
                obscureText: _showPassword,
               // obscureText: true,
                decoration: InputDecoration(
                  //label: Text("PASSWORD"),
                    hintText: 'Password',
                 // suffix: Icon(Icons.visibility),
                    suffix: InkWell(
                      onTap: () {
                        viewPassword();
                        },
                      child: _showPassword?Icon(Icons.visibility):
                          Icon(Icons.visibility_off)
                    ),
                  border: OutlineInputBorder(


                  )
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("LOGOUT"),
                  border: OutlineInputBorder(

                  )
                ),
              ),
            )*/
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(onPressed:() {
                  setState(() {
                    usern=usernameController.text;
                    pass=passwordController.text;
                    if(_formkey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:Text("LOGIN SUCCESSFULL")));
                    }
                  });

                },
                    child: Text("LOGIN")),
              ),
            )


          ],
        ),
      )
    );

  }
  void viewPassword(){
    setState(() {
      _showPassword=!_showPassword;
    });
  }
}
