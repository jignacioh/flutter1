
import 'package:flutter/material.dart';
import './text_widget.dart';

class TextControl extends StatefulWidget{
  
    final String textoInicial;

    TextControl({this.textoInicial = 'Hola mundo'}){
      print("TextControl Widget construct");
    }

    @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
       print("TextControl Widget createState");
      return _TextControlState();
    }
    
}
class _TextControlState extends State<TextControl>{

   String newText;
@override
  void didUpdateWidget(TextControl oldWidget) {
    // TODO: implement didUpdateWidget
    print("TextControl State didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
@override
  void initState() {
     print("TextControl State initState");
    // TODO: implement initState
    super.initState();
    newText=widget.textoInicial;
  }
  @override
    Widget build(BuildContext context) {
      print("Product Manager State build");
      // TODO: implement build
      return Column(children: [Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    newText='New Hello World';
                  });
                },
                child: Text('Switch Text'),
              ),
            ),
            TextWidget(newText)
      ],);
    }
}