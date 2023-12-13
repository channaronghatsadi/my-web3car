import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:my_api/bottom_navbar_t.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
     ),
     body: Container(
      margin: EdgeInsets.all(24),
      child: Column(
       children: [
            _header(context),
            _inputField(
              context,
            )
          ],
      ),
     ),
    );
  }
   _header(context) {
    return Column(
      children: [
        Text(
          'Welcome To ThreeCar',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          '',
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "อีเมลหรือหมายเลขโทรศัพท์",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColorLight.withOpacity(0.1),
            filled: true,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: "รหัสผ่าน",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColorLight.withOpacity(0.1),
            filled: true,
          ),
        ),
        SizedBox(height: 8),
        FilledButton.tonal(
                onPressed: () {
                  // _login(context);
                },
                style: FilledButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                ),
                child: const Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
        SizedBox(
          height: 20,
        ),
        
      ],
    );
  }
}

 Future<void> _login(context) async {
  await Flushbar(
    title: 'Login',
    message:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
    duration: const Duration(seconds: 2),
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(8),
  ).show(context);

  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return  MyButtomNavBar();
    }),
    (route) => false,
  );
}