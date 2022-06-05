import 'package:flutter/material.dart';

import 'image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prince of Image',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home:ImagePage(),
    );
  }
}
