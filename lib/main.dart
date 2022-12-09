import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumit Tiware',
      darkTheme: ThemeData(
        primaryColor: StyleColors.pink,
        fontFamily: "Montserrat",
      ),
      home: HomePage(),
    );
  }
}
