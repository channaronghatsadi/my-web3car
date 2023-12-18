import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 12, 118),
        title: Text('ติดต่อเรา'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' 3CAR ',
              style: TextStyle(fontSize: 40.0, color: Colors.teal),
            ),
            SizedBox(height: 20),
            Text(
              'ติดต่อสอบถามเพิ่มเติม',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          //  Image.asset('images/bg1.jpg'),
            
          ],
        ),
      ),
    );
  }
}
