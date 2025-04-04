import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_flutter_app/models/catalog.dart';
import 'package:my_flutter_app/widgets/drawer.dart';
import 'package:my_flutter_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Jay";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }  

  loadData() async {
    final var catalogJson=await rootBundle.loadString("assets/files/catalog.json");
    final var decodedData=jsonEncode(catalogJson);
    final var productsData=jsonDecode(decodedData);
    print(productsData);
  }

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