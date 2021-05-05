import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = ['arjun', 'abi ', 'ani'];

    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
          accentColor: Colors.red,
          primaryColor: Colors.red,
          brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, int index) {
              return Text(data[index]);
            }),
      ),
    );
  }
}
