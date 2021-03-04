import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_model_classes/Pages/ChatPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("WhatsApp Web"),
                value: 'WhatsApp Web',
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
                value: 'Starred messages',
              ),
              PopupMenuItem(
                child: Text("New Group"),
                value: 'New Group',
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: 'Settings',
              ),
            ];
          })
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("CAMERA"),
          ChatPage(),
          Text("STATUS"),
          Text("CALLS"),
        ],
      ),
    );
  }
}
