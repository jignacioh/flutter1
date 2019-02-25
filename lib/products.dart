import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;

  Products([this.products = const []]) {
    print("Product Widget constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['url']),
          Text(products[index]['title'])
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No data"),
      );
      //productCard = Container();
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print("Prodcut Widget builded");
    //build nunca debe retornar null
    return _buildProductLists();
  }
}
