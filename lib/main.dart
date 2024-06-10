import 'package:finalecohealer/ragister_screen.dart';
import 'package:finalecohealer/login_screen.dart';

import 'package:flutter/material.dart';
import 'splash_page.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'encyclopedia_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoHealer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/', // Define initial route
      routes: {
        '/': (context) => const SplashPage(), // Define route for SplashPage
        '/welcome': (context) => WelcomeScreen(), // Define route for WelcomePage
         //'/create_account': (context) =>(),
        '/login': (context) => LoginScreen(), // Define route for LoginPage
       
        '/home': (context) => const HomeScreen(), // Define route for HomeScreen
        '/encyclopedia': (context) => const Encyclopedia(), // Define route for Encyclopedia
      },
    );
  }
}
