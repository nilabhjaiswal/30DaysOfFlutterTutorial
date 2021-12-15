import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imagesUrl =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.macmillandictionaryblog.com%2Femoji&psig=AOvVaw0wAPpuNN5BTbKBGT-_HqOg&ust=1639650124094000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjutOvK5fQCFQAAAAAdAAAAABAD";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Nilabh Jaiswal"),
                accountEmail: const Text("nilabhjaiswal@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imagesUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: 
              Text("Home", 
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white)),
            ),

            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
               textScaleFactor: 1.5,
               style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
