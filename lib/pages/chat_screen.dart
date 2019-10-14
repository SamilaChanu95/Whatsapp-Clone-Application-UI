import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp_clone/models/chat_models.dart';


class ChatScreen extends StatefulWidget {
  
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> 
{
 
  @override
  Widget build(BuildContext context) 
  {
    return new ListView.builder
    (
      itemCount: dummyData.length,
      itemBuilder: (context,i) => new Column // " => " meaning is return
      (
          children: <Widget>[
            new Divider
            (
              height: 10.0,
            ),
            new ListTile
            (
              leading: new CircleAvatar
              (
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
              ),
              title: new Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text
                  (
                    dummyData[i].name,
                    style: new TextStyle
                    (   
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Text
                  (
                    dummyData[i].time,
                    style: new TextStyle
                    (   
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              subtitle: new Container
              (
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text
                (
                  dummyData[i].message,
                  style: new TextStyle
                  (
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                
              ),
            )
          ],
      ),
    );
  }
}