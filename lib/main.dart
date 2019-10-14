import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData( // This is the theme of your application.
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
        //accentColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHomePage(),
    );
  }
}
