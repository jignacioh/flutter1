import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print("Product Widget constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/foodmain.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget _buildProductLists(){
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
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print("Prodcut Widget builded");
    return _buildProductLists();
  }
}