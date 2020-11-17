import 'package:flutter/material.dart';

class PlayField extends StatelessWidget {

  final Function markField;

  PlayField(this.markField);

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 3,
      children: [
        RaisedButton(
            child: Text(''),
            onPressed: markField,
            //color: Colors.grey[50],
            //shape: Border(left: BorderSide.none, top: BorderSide.none),
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField,
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField,
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
        RaisedButton(
            child: Text(''),
            onPressed: markField
        ),
      ],
      shrinkWrap: true,
    );
  }
}
