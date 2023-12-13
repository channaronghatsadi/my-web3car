import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('ค้นหารถยนต์'),
      ),
      body: Column(children: [
             Text('THREE CAR',
             style: TextStyle(fontSize: 20),
             ),
             SizedBox(height: 25),
             //search bar
             TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 hintText: 'ค้นหารถยนต์ . .',
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white)
                 ),
               ),
             ),
      ]),
    );
  }
}
