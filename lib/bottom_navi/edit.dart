import 'package:flutter/material.dart';

class editPage extends StatelessWidget {
  const editPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 12, 118),
        title: Text('แก้ไขข้อมูล'),
      ),
      body: Center(
        child: Text(
          'This is a About Page',
          style: TextStyle(fontSize: 40.0, color: Colors.teal),
        ),
      ),
    );
  }
}
