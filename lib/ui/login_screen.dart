import 'package:authentication_task/app_widgets/App_button.dart';
import 'package:authentication_task/app_widgets/custom_text_form_field.dart';
import 'package:authentication_task/ui/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png"),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.dark_mode,
                  color: Color(0xff004182),
                  size: 40,
                ),
                onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            Text("Hi, Welcome Back! ",
                style: GoogleFonts.manrope(
                    color: Color(0xff0000000),
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
            Text("Hello again, you’ve been missed!",
                style: GoogleFonts.manrope(
                    color: Color(0xff999EA1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
            CustomTextFormField(
              label: "Email",
              hint: "Please enter your Email ",
              controller: emailController,
              validator: (text) {
              
              },
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              label: "Password",
              hint: "Please enter your Password ",
              ispassword: true,
              controller: passwordController,
              validator: (text) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.066,
            ),
          AppButton(onTap: (){login();},title: "Login",),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.056,
            ),
            AppButton(onTap: (){},title: "Login with FaceBook",),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.056,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account ? ",
                  style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff999EA1)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RegisterScreen.routeName);
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff004182)),
                      textAlign: TextAlign.center,
                    ))
              ],
            )
          ]),
        ));
  }
  void login() async{
    if (_formKey.currentState?.validate() == true){
    try {
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text
  );
  print(userCredential.user?.uid??"");
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  
  }
}
}