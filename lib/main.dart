import 'package:fashion_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FashionApp());
}
class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
