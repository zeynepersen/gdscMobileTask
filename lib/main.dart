import 'package:flutter/material.dart';
import 'package:mobile_task/pages/login_page.dart';
import 'package:mobile_task/pages/onboard_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardPage()
    );
  }
}
