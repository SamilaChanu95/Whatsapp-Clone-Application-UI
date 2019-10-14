import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

 class CameraScreen extends StatelessWidget 
 {
  
   @override
   Widget build(BuildContext context) 
   {
     return new Center
     (
       child: new Text
       (
         "Camera",
         style: new TextStyle
         (
           fontSize: 20.0,
         ),
        )
     ); 
   }
 }