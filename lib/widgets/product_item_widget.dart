import 'package:flutter/material.dart';
import 'package:flutter_basic_app/models/product.dart';

class ItemWidget extends StatelessWidget {
  final ProductItem productItem;

  const ItemWidget({Key? key, required this.productItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print(productItem.name);
        },
        leading: Image.network(productItem.imageUrl),
        title: Text(productItem.name),
        subtitle: Text(productItem.description),
        trailing: Text(
          "\$${productItem.price}",
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.2,
        ),
      ),
    );
  }
}
