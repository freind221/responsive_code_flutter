import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[700],
  elevation: 0,
);

var myColor = Colors.grey[300];

var myDrawer = Drawer(
  backgroundColor: myColor,
  child: Column(
    children: const [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      )
    ],
  ),
);
