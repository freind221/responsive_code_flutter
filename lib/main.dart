import 'package:flutter/material.dart';
import 'package:responsive/responsive/layout.dart';
import 'package:responsive/responsive/views/desktop.dart';
import 'package:responsive/responsive/views/mobile.dart';
import 'package:responsive/responsive/views/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopWidget(),
      ),
    );
  }
}
