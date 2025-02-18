import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'after_login.dart'; // Import the after-login screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'FinFit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginWidget(),
        '/signup': (context) => SignupWidget(),
        '/after': (context) => AfterLoginScreen(), // Added this route
      },
    );
  }
}
