import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';


class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  _PageRegisterState createState() => _PageRegisterState();

}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController userController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController(); 
  TextEditingController EmailController = TextEditingController(); 
  TextEditingController phoneController = TextEditingController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 12, 118),
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      // ),
      body: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 20, bottom: 10),
              child: Text(
                "สมัครสมาชิก",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,color: Colors.white),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 0, right: 5, left: 5),
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ชื่อผู้ใช้",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Courier',
                        ),
                      ),
                      subtitle: TextField(
                        controller: userController,
                        decoration: InputDecoration(
                          hintText: "กรุณากรอก ชื่อผู้ใช้",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.blue),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "รหัสผ่าน: ",
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: TextField(
                        controller: passwordController,
                        obscureText: true, 
                        decoration: InputDecoration(
                          hintText: "กรุณากรอกรหัสผ่าน",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.blue),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Courier',
                        ),
                      ),
                      subtitle: TextField(
                        controller: EmailController,
                        obscureText: true, 
                        decoration: InputDecoration(
                          hintText: "กรุณากรอก Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.blue),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      title: Text(  
                        "เบอร์โทร",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Courier',
                        ),
                      ),
                      subtitle: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "กรุณากรอกเบอร์โทร",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.blue),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                      Navigator.push(
                            context,
                             MaterialPageRoute(
                              builder: (context) => const welcomeScreen()));
                      },
                      child: Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(color: Colors.blue, height: 3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
