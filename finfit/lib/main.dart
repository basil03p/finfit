import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'signuppage.dart';
import 'homepage.dart';
import 'nut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/nut': (context) => NutritionApp(),
      },
    );
  }
}
