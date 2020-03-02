import 'package:flutter/material.dart';
import 'package:uiloginpage/pages/InittialPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Interface LoginPage',
      home: InitialWidget(), //Our login page
    );
  }
}

