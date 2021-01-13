import 'package:flutter/material.dart';
import 'package:twitter_auth_screens_redesign/twitter/twitter_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: TwitterBody()
    );
  }
}

