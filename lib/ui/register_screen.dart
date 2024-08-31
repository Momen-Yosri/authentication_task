import 'package:authentication_task/app_widgets/App_button.dart';
import 'package:authentication_task/app_widgets/custom_text_form_field.dart';
import 'package:authentication_task/ui/home_screen.dart';
import 'package:authentication_task/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "register_Screen";
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController(text: "test@gmail.com");

  final TextEditingController passwordController = TextEditingController(text: "123456");

  final TextEditingController confirmPasswordController =
      TextEditingController(text: "123456");
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
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                ),
                Text("Create an account",
                    style: GoogleFonts.manrope(
                        color: Color(0xff0000000),
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
                Text("Connect with your friends today!",
                    style: GoogleFonts.manrope(
                        color: Color(0xff999EA1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                CustomTextFormField(
                  label: "Email",
                  hint: "Please enter your Email ",
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (emailController) {
                    if (emailController == null || emailController.trim().isEmpty) {
                      return "please enter your email";
                    }
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailController);
                    if (!emailValid) {
                      return "Please enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  label: "Password",
                  hint: "Please enter your Password ",
                  keyboardType: TextInputType.visiblePassword,
                  ispassword: true,
                  controller: passwordController,
                  validator: (passwordController) {
                    if (passwordController == null || passwordController.trim().isEmpty) {
                      return "please enter a password";
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                    label: "Confirm Password",
                    hint: "Please enter your Password ",
                    keyboardType: TextInputType.visiblePassword,
                    ispassword: true,
                    controller: confirmPasswordController,
                    validator: (confirmPasswordController) {
                      if (confirmPasswordController == null || confirmPasswordController.trim().isEmpty) {
                        return "please enter a password";
                      }
                      if (passwordController.text !=
                          confirmPasswordController) {
                        return "Passwords do not match";
                      }
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.066,
                ),
                AppButton(
                  onTap:(){ register();
                  },
                  title: "Register",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.056,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff999EA1)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        },
                        child: Text(
                          "Login",
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

  void register() async {
    if (_formKey.currentState?.validate() == true) {
     try {
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text
  );
  print(userCredential.user?.uid??"");
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}

      // Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (Route<dynamic> route) => false);
    }
  }
}
