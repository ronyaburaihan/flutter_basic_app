import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_app/models/product.dart';
import 'package:flutter_basic_app/widgets/drawer.dart';
import 'package:flutter_basic_app/widgets/product_item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic App"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: ProductList.productList.length,
            itemBuilder: (context, index) {
              return ItemWidget(productItem: ProductList.productList[index]);
            }),
      ),
      drawer: AppDrawer(),
    );
  }

  void loadData() async {
    final productString =
        await rootBundle.loadString("assets/files/products.json");
    final decodeData = jsonDecode(productString);
    var productData = decodeData["products"];
    print(productData);
  }
}
