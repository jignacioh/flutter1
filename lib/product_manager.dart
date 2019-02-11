import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String productoInicial;
  //ProductManager({this.productoInicial = 'Plato tester'}) {
  ProductManager({this.productoInicial}) {
    print("Prodcut Manager Widget construct");
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("Prodcut Manager Widget createState");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    print("Product Manager State didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  @override
  void initState() {
    print("Product Manager State initState");
    // TODO: implement initState
    super.initState();
    if (widget.productoInicial!=null) {
      _products.add(widget.productoInicial);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Product Manager State build");
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(child:  Products(_products))
      ],
    );
  }
}
