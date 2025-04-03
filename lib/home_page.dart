import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Gujju";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days off flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}