import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/pages/call_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHomePage extends StatefulWidget
{
  _WhatsAppHomePageState createState() => new _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage>
  with SingleTickerProviderStateMixin
  {

      TabController _tabController;

      void initState()
      {
        super.initState();
        _tabController = new TabController(vsync: this, initialIndex: 1, length: 4); // length is 4. because we use 4 tabs
      }

      @override
      Widget build(BuildContext context) {
        return new Scaffold
        (
          appBar: new AppBar
          (
            title: new Text
            (
              "WhatsApp"
            ),
            elevation: 0.7,
            bottom: new TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab
                (
                  icon: new Icon(Icons.camera_alt)
                ),
                new Tab
                (
                  text: "CHATS"
                ),
                new Tab
                (
                  text: "STATUS"
                ),
                new Tab
                (
                  text: "CALLS"
                ), 

              ],

            ),
            actions: <Widget>
            [

              new Icon
              (
                Icons.search,
                color: Colors.white,
              ),
              new Padding
              (
                padding: const EdgeInsets.symmetric(horizontal: 20.0),                
              ),
              new Icon
              (
                Icons.more_vert,
                color: Colors.white,
              )
            ],

          ),
          body: new TabBarView
          (
            controller: _tabController,
            children: <Widget>
            [
               new CameraScreen(),
               new ChatScreen(),
               new StatusScreen(),
               new CallScreen(),
            ],
          ),
          floatingActionButton: new FloatingActionButton //that need every pages
          (
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon
            (
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () => print("Open chats."),
          ),
        );

      }
  }