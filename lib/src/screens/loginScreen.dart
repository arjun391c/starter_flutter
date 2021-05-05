import 'package:flutter/material.dart';
import 'package:starter/src/screens/homeScreen.dart';
import 'package:starter/src/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/ninjaParty.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(.6),
                colorBlendMode: BlendMode.darken,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _userNameController,
                                keyboardType: TextInputType.emailAddress,
                                // validator: (s) {},
                                decoration: InputDecoration(
                                    hintText: "Enter username",
                                    labelText: "Username"),
                              ),
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.text,
                                // validator: (s) {},
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Constants.prefs.setBool("loggedin", true);
                                  // formKey.currentState.validate();
                                  Navigator.pushReplacementNamed(
                                      context, HomePage.routeName);
                                },
                                child: Text("Login"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
