import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Welcome_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Color backgroundColor = const Color(0xffe9edf1);

  @override
  void initState() {
    super.initState();
    // Ajoutez un délai pour simuler le chargement ou la vérification
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
      systemNavigationBarColor: backgroundColor,
    ));

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app_icon.png'),
            SizedBox(height: 20),
            Text(
              "EcoHealer",
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'odibeeSans',
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(), // Placeholder for loading indicator
            SizedBox(height: 10),
            Text("Initializing..."),
          ],
        ),
      ),
    );
  }
}
