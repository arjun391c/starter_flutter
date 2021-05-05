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
        title: Text("Awesome"),
      ),
      body: Container(
        color: Colors.black,
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // color: Colors.deepOrangeAccent,
              width: 100,
              height: 100,
              // clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(10),
              // alignment: Alignment.center,
              color: Colors.red,
            ),
            Container(
              // color: Colors.deepOrangeAccent,
              width: 100,
              height: 100,
              // clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(10),
              // alignment: Alignment.center,
              color: Colors.green,
            ),
            Container(
              // color: Colors.deepOrangeAccent,
              width: 100,
              height: 100,
              // clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(10),
              // alignment: Alignment.center,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
