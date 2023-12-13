import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('ติดต่อเรา'),
      ),
      body: Center(
        child: Text(
          'ติดต่อสอบถามเพิ่มเติม',
          style: TextStyle(fontSize: 40.0, color: Colors.teal),
        ),
      ),
    );
  }
}
