 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.white,
  leading: Image.asset("assets/images/leading_logo.png"),
  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
                    Text("Welcome to Route",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
                    Text("Enjoy our courses",style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff000000)),),

  ],)
  ,actions: [
        IconButton(icon: Icon(Icons.dark_mode,color: Color(0xff004182),size: 24,), onPressed: () {}),
        IconButton(icon: Icon(Icons.logout,color: Colors.black,size: 24,), onPressed: () {}),
  ]
),
    );
  }
}