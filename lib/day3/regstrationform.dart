import 'package:flutter/material.dart';

class RegForm extends StatefulWidget {
  const RegForm({Key? key}) : super(key: key);

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  bool _showPassword = true;
  bool _password = true;
  final _formkey = GlobalKey<FormState>();
  var firstname = " ", lastname = " ", email = " ";
  var pass = " ", confirmpass = " ";
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "REGSTRATION FORM ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: firstnameController,
                validator: (value) {
                  if (firstname == '') {
                    return "enter your firstname";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("First Name"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: lastnameController,
                validator: (value){
                  if(lastname==''){
                    return"enter your last Name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("Last Name"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                validator: (value){
                  if(email==''){
                    return"enter your email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("E-mail"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passwordController,
                validator: (value){
                  if(pass==''){
                    return"enter your Password";
                  }
                  return null;
                },
                obscureText: _showPassword,
                decoration: InputDecoration(
                  label: Text("Password"),
                  suffix: InkWell(
                      onTap: () {
                        viewPassword();
                      },
                      child: _showPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: confirmpasswordController,
                validator: (value){
                  if(confirmpass==''){
                    return"Confirm your password";
                  }
                  return null;
                },
                obscureText: _password,
                decoration: InputDecoration(
                  label: Text("Confirm Password"),
                  suffix: InkWell(
                      onTap: () {
                        Password();
                      },
                      child: _password
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        firstname=firstnameController.text;
                        lastname=lastnameController.text;
                        email=emailController.text;
                        pass=passwordController.text;
                        confirmpass=confirmpasswordController.text;
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("registration successfull")));
                        }
                      });
                    },
                    child: Text("REGISTER")),
              ),
            )
          ],
        ),
      ),
    );
  }

  void Password() {
    setState(() {
      _password = !_password;
    });
  }

  void viewPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}
