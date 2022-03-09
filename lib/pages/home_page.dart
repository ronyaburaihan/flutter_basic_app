import 'package:flutter/material.dart';
import 'package:flutter_basic_app/models/product.dart';
import 'package:flutter_basic_app/widgets/drawer.dart';
import 'package:flutter_basic_app/widgets/product_item_widget.dart';

class HomePage extends StatelessWidget {
  String sdkName = "Flutter";
  String appType = "Basic";

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
}
