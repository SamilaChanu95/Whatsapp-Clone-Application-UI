import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class StatusScreen extends StatelessWidget 
{
  
  @override
  Widget build(BuildContext context) 
  {
    return new Center
    (
      child: new Text
      (
        "Status",
        style: new TextStyle
        (
          fontSize: 20.0,
        ),
      ),
    );
  }
}