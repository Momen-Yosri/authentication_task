import 'package:authentication_task/app_widgets/App_button.dart';
import 'package:authentication_task/app_widgets/custom_text_form_field.dart';
import 'package:authentication_task/style/my_theme_data.dart';
import 'package:authentication_task/ui/home_screen/home_screen.dart';
import 'package:authentication_task/ui/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login";
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Form(key: _formKey,
            child: SingleChildScrollView(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                ),
                Text("Hi, Welcome Back! ",
                    style: MyThemeData.lightTheme.textTheme.headlineLarge),
                Text("Hello again, you’ve been missed!",
                    style: MyThemeData.lightTheme.textTheme.headlineSmall),
                CustomTextFormField(
                  label: "Email",
                  hint: "Please enter your Email ",
                  controller: emailController,
                  validator: (text) {},
                ),
                const SizedBox(
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
                AppButton(
                  onTap: () {print('################################################################');
                    login();
                  },
                  title: "Login",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.056,
                ),
                AppButton(
                  onTap: () {},
                  title: "Login with FaceBook",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.056,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account ? ",
                        style: MyThemeData.lightTheme.textTheme.headlineSmall),
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
            ),
          ),
        ));
  }

  void login() async {
    if (_formKey.currentState?.validate() == true) {
      print("object is already");
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        print(userCredential.user?.uid ?? "");
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.routeName, (Route<dynamic> route) => false);
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
