import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("awesome"),
      ),
      body: Container(
        // child: Text("Hi flutter!"),
        color: Colors.deepOrangeAccent,
        width: 100,
      ),
    );
  }
}
