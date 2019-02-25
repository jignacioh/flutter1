import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String url;

  ProductPage(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Scaffold(appBar: AppBar(title: Text('Detail'),),
      body: Center(child: Text('On Product detail'),),);
    */
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(url),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30.0,
              top: 10.0,
              bottom: 10.0,
              right: 30.0,
            ),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
