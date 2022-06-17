import 'package:flutter/material.dart';

const String _name = "Ashish";

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    var subhead;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.subtitle1),
              Container(
                margin: const EdgeInsets.only(top:5.0 ),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
