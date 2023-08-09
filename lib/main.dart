import 'package:flutter/material.dart';
import 'package:lablysisplan/Screens/login_screen.dart';
import 'package:lablysisplan/Screens/sign_up_screen.dart';
import 'package:lablysisplan/Screens/home_log_sig_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const home_log_sig_screen(),
      routes: {
        "sign up": (context) => signUp(),
        "login": (context) => loginscreen(),
      },
    );
  }
}
