import 'package:flutter/material.dart';
import 'package:my_api/bottom_navbar_t.dart';
import 'package:my_api/register.dart';
import 'package:my_api/widgets/loginScreen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 12, 118),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              children: [
                Text(
                  "ยินดีต้อนรับ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "3CAR",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "โปรเรื่องรถ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 30,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  "ซื้อ-ขาย จบในที่เดียว",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 30,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 100),
                Card(
                  color: Color.fromARGB(255, 113, 113, 113),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    width: 500, height: 170, // Set the desired width for the card
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                             MaterialPageRoute(
                              builder: (context) => const PageRegister()));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 7, 7, 7),
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "ลงทะเบียน",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                             MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            "เข้าสู่ระบบ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
