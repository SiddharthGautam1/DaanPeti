import 'package:flutter/material.dart';
import 'package:app/daanpeti.dart';
import 'package:app/main.dart';

class SignupIsOp extends StatefulWidget {
  @override
  _SignupIsOpState createState() => _SignupIsOpState();
}

class _SignupIsOpState extends State<SignupIsOp> {
  String omg = 'GG!';

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print('Validated');
    } else {
      print('Not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purpleAccent[700]),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    labelText: "Email",
                    prefixIcon:
                        Icon(Icons.mail, color: Colors.purpleAccent[700]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purpleAccent[700]),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        labelText: 'Password',
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.purpleAccent[700])),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text('Sign Up'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
