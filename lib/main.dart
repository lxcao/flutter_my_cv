// @dart=2.9
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my CV',
      // theme: ThemeData.dark().copyWith(
      //     scaffoldBackgroundColor: Color(0xFF101010),
      //     cardColor: Color(0xFF222222)),
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
