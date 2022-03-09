class ProductItem {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String imageUrl;

  ProductItem(this.id, this.name, this.description, this.price, this.color,
      this.imageUrl);

  final productList = [
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", ""),
    ProductItem("1", "", "", 120, "#123456", "")
  ];
}
