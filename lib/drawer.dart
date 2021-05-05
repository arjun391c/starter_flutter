import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
