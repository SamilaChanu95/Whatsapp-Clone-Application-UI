import 'package:flutter/material.dart';


class ChatModel
{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name,this.message,this.time,this.avatarUrl});

  List<ChatModel> dummyData = [
    new ChatModel
    (
      name: "Samila Chanuka",
      message: "Created whatsapp UI.",
      time:"12.00 AM",
      avatarUrl: "https://www.facebook.com/photo.php?fbid=2398154430510448&set=a.1377014282624473&type=3&theater",
    )
  ];

}