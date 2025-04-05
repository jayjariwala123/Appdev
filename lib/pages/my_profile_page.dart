import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/routes.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/jay.jpeg"),
              ),
            ),
            SizedBox(height: 20),
            Text("Name: Jay Jariwala", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("Email: jjariwala111@gmail.com", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("Phone: +91 1234567890", style: TextStyle(fontSize: 18)),
            Center(
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text("Previous Orders History:"),
                subtitle: Text("No previous orders found."),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("Go to Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




