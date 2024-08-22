import 'package:authentication_task/app_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar:AppBar(title: Image.asset("assets/images/logo.png"),elevation: 0,backgroundColor: Colors.white,actions: [
        IconButton(icon: Icon(Icons.dark_mode,color: Color(0xff004182),size: 40,), onPressed: () {}),
      ],) ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.11,),
            Text("Hi, Welcome Back! ",style: GoogleFonts.manrope(color: Color(0xff0000000),fontSize: 25,fontWeight: FontWeight.w600)),
            Text("Hello again, you’ve been missed!",style: GoogleFonts.manrope(color: Color(0xff999EA1),fontSize: 14,fontWeight: FontWeight.w600)),
            CustomTextFormField(label: "Email", hint: "Please enter your Email ", keyboardType: TextInputType.emailAddress),
            SizedBox(height: 12,),
            CustomTextFormField(label: "Password", hint: "Please enter your Password ", keyboardType: TextInputType.visiblePassword,ispassword: true),
            SizedBox(height: MediaQuery.of(context).size.height*0.066,),
            SizedBox(width: double.infinity,height: 45,
              child: ElevatedButton(onPressed: () {}, child: Text("Login",style: GoogleFonts.manrope(fontSize: 17,fontWeight: FontWeight.w600)),style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xff004182),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),),),
                
            ),SizedBox(height:MediaQuery.of(context).size.height*0.056 ,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account ? ",style: GoogleFonts.manrope(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff999EA1)),),
                TextButton(onPressed: (){}, child: Text("Sign Up",style: GoogleFonts.manrope(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff004182)),textAlign: TextAlign.center,))
              ],
            )
          ]),
      )
    );
  }
}