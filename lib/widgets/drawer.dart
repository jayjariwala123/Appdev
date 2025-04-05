import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageProvider = AssetImage("assets/images/jay.jpeg");
    
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 230, 221, 244),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 215, 201, 241)),
                accountName: Text("Jay Jariwala"),
                accountEmail: Text("jjariwala111@gmail.com"),
                currentAccountPicture: CircleAvatar(
                backgroundImage: imageProvider,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
              ),
              title: Text(
                "My Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, MyRoutes.myprofileRoute);
              },
          ),
          Container(
            child: ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right_circle,
                color: Colors.black,
                ),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
            ),
          ),
          ],
        ),
      ),
    );
  }
}