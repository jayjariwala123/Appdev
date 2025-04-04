import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/catalog.dart';
import 'package:my_flutter_app/widgets/drawer.dart';
import 'package:my_flutter_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Jay";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      4,
      (index) => CatalogModel.items[0],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}