import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('ขายรถ'),
      ),
      body: Center(
        child: Text(
          'This is a Contact Page',
          style: TextStyle(fontSize: 25.0, color: Colors.teal),
        ),
      ),
    );
  }
}
