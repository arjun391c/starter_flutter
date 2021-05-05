import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.text,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String text;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/ninjaParty.jpg",
            width: 400,
            height: 400,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome, $text to ninja party!!',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  hintText: "Write Something!",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}
