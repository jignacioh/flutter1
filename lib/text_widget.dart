import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{

  final String wText;

  TextWidget([this.wText='']){
    print("TextWidget constructor");
  }

  @override
    Widget build(BuildContext context) {
      print("TextWidget builded");
      // TODO: implement build
      return Column(
              children: [Card(
                        child: Column(
                          children: <Widget>[
                            Text(wText)
                          ],
                        ),
                      )],
            );
    }
}