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
    await Future.delayed(Duration(seconds: 1));
    final catalogJson=
      await rootBundle.loadString("assets/files/catalog.json");
    final decodedData=jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
    .map<Item>((item) => Item.fromMap(item))
    .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null || CatalogModel.items.isEmpty)
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            ),
           itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: GridTile(
                header: Container(
                child: Text(
                  item.name,
                   style: TextStyle(color: Colors.white)
                   ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                ),
                child: Image.network(item.image),
                footer: Container(
                child: Text(
                  item.price.toString(),
                   style: TextStyle(color: Colors.white)
                   ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                ),
                ));
           },
            itemCount: CatalogModel.items.length,
            )
        : Center(
            child: CircularProgressIndicator(),
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}