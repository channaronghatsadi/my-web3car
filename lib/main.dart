import 'package:flutter/material.dart';
import 'package:my_api/bottom_navbar_t.dart';
import 'package:my_api/register.dart';
import 'package:my_api/screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyButtomNavBar(),
    );
  }
}
