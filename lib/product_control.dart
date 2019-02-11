import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct;
  ProductControl(this.addProduct){
    print("ProductControl constructor");
  }

  @override
    Widget build(BuildContext context) {
      print("ProductControl builded");
      // TODO: implement build
      return RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Colors.white,
                onPressed: () {
                  addProduct('new product');
                },
                child: Text('Add Product'),
              );
    }
}