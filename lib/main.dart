import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = "_";

  TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
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
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
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
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          text = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Arjun"),
              accountEmail: Text("arjun@mail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/proxy/kYAyBsDbH34vmHK4EWat1vYj53fEA2WzMnCohqC9KBFWaN-njkx33E4AjL8xtWPxklAIMI5COxk3xTJCCCTlHrWrFPe0lIyZ73nJ4tmFVNCS9g4_2DNcYUYgN3VkRTp7vXvI"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Arjun C"),
              subtitle: Text("Hi i'm a developer."),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("arjun@gmail.com"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
    );
  }
}
