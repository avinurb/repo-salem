import 'package:flutter/material.dart';
import 'package:draft_ap/profiles/ProfileS.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // حذف بنر Debug
      home: ProfileS(), // اجرای صفحه ProfileS
    );
  }
}
