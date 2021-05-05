import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:starter/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:starter/src/screens/loginScreen.dart';
import 'package:starter/src/utils/constants.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var text = "_";
  // TextEditingController _nameController = TextEditingController();

  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome"),
          actions: [
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Constants.prefs.setBool("loggedin", false);
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                })
          ],
        ),
        backgroundColor: Colors.grey[300],
        body: data != null
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // text = _nameController.text;
            // setState(() {});
          },
          child: Icon(Icons.edit),
        ),
        drawer: MyDrawer());
  }
}
