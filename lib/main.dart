import 'package:authentication_task/ui/home_screen.dart';
import 'package:authentication_task/ui/login_screen.dart';
import 'package:authentication_task/ui/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main()async { 
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
initialRoute: LoginScreen.routeName  ,
      routes: {
        LoginScreen.routeName : (context) => LoginScreen(),
        RegisterScreen.routeName :(context) => RegisterScreen(),
        HomeScreen.routeName :(context) => HomeScreen(),
      },
    );
  }
}

