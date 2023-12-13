import 'package:flutter/material.dart';
import 'package:my_api/bottom_navbar_t.dart';
import 'package:my_api/register.dart';
import 'package:my_api/widgets/loginScreen.dart';

// import 'package:my_api/screens/%E0%B9%89home_page2.dart';

class welcome_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg1.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
         )),
         child: Material(
          color: Colors.transparent,
           child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 65,horizontal: 25),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  "ThreeCar",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                   ),
                  ),
                  SizedBox(height: 50),
                  Text("Welcome", style: TextStyle(
                  color:Colors.white.withOpacity(0.9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                   ),
                  ),
                  SizedBox(height: 50),
                  Text("โปรเรื่องรถ ซื้อ-ขาย      จบในที่เดียว",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 30,
                    letterSpacing: 1.2,
                  ),
                  ),
                  SizedBox(height:50),
                  Text("เข้าสู่ระบบ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 30,
                    letterSpacing: 1.2,
                  ),
                  ),
                  SizedBox(height:50),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>MyButtomNavBar(),
                    ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.login,
                    color: Colors.black54,
                    size: 20,
                    ),
                  ),
                  ),
                  
                   InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>LoginScreen(),
                    ));
                  },
                  
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    ),
            
                    child: Icon(
                      Icons.person,
                    color: Colors.black54,
                    size: 20,
                    ),
                  ),
                  ),
                   InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>PageRegister(),
                    ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.pending,
                    color: Colors.black54,
                    size: 20,
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