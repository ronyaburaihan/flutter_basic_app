import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/44436797?v=4";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Abu Raihan Rony"),
                accountEmail: Text("ronyaburaihan@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.black87),
            title: Text("Home",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.black87)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.black87),
            title: Text("Profile",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.black87)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.black87),
            title: Text("Contact",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.black87)),
          )
        ],
      ),
    );
  }
}
