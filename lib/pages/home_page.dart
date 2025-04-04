import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Jay";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"), 
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}