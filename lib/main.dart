import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter/src/screens/homeScreen.dart';
import 'package:starter/src/screens/loginScreen.dart';
import 'package:starter/src/utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Constants.prefs.getBool("loggedin") == true
            ? HomePage()
            : LoginScreen(),
        theme: ThemeData(primarySwatch: Colors.purple),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          HomePage.routeName: (context) => HomePage(),
        },
      ),
    );
  }
}
