import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChatScreen extends StatelessWidget 
{
 
  @override
  Widget build(BuildContext context) 
  {
    return new Center
    (
      child: new Text
      (
        "Chats",
        style: new TextStyle
        (
          fontSize: 20.0,
        ),
      ),
    );
  }
}