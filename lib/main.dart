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
      body: Center(
        child: Container(
          // color: Colors.deepOrangeAccent,
          width: 100,
          height: 100,
          // clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.purple, Colors.red]),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
          child: Text(
            "Hi flutter!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
