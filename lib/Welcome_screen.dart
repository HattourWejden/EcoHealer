import 'package:finalecohealer/login_screen.dart';
import 'package:finalecohealer/ragister_screen.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            children: [
              Image.asset(
                'assets/app_icon.png', // Replace 'logo.png' with your actual logo asset path
                height: 40, // Adjust the height as needed
                width: 40, // Adjust the width as needed
              ),
              SizedBox(width: 10), // Add some space between the logo and title
              Text('EcoHealer'), // Title text
            ],
          ),
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          
          <Widget>[
            Image.asset(
            'assets/wp1.jpg',
             height: 400, // Adjust the height as needed
                width: 500, 
            fit: BoxFit.cover,
          ),
            Text(
              'Save your plant !!',
               style: TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: Color.fromARGB(255, 6, 64, 33),
  ),
            ),
             Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: 320,
                        height: 44,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black87, backgroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 18),
                            side:
                                const BorderSide(color: Color.fromARGB(255, 16, 15, 15), width: 1),
                            elevation: 3,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Join now',
                              style: TextStyle(
                                  fontFamily: 'GeneralSans',
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      height: 44,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 12, 12, 12), textStyle: const TextStyle(fontSize: 18),
                          side: const BorderSide(color: Color.fromARGB(255, 8, 8, 8), width: 1),
                          elevation: 3,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Coming Soon...',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'GeneralSans')),
                              content: const Text(
                                  "I'll add this feature in the future with GitHub auth. Check back soon.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'GeneralSans')),
                              actions: [
                                TextButton(
                                  child: const Text('Ok',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'GeneralSans')),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                          
                                width: 40,
                                child: Image.asset(
                                    'assets/images/GitHub-Symbol.png',
                                    width: 40,
                                    height: 20),
                              
                            ),
                            const Text('Continue with GitHub',
                                style: TextStyle(
                                    fontFamily: 'GeneralSans',
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: 320,
                        height: 44,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 4, 4, 4), textStyle: const TextStyle(fontSize: 18),
                            side:
                                const BorderSide(color: Color.fromARGB(255, 11, 11, 11), width: 1),
                            elevation: 3,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Coming Soon...',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'GeneralSans')),
                                content: const Text(
                                    "I'll add this feature in the future with Google Firebase. Check back soon.",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'GeneralSans')),
                                actions: [
                                  TextButton(
                                    child: const Text('Ok ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'GeneralSans')),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 40,
                                child: Image.asset(
                                    'assets/images/google-icon.png',
                                    width: 40,
                                    height: 20),
                              ),
                              const Text('Continue with Google',
                                  style: TextStyle(
                                      fontFamily: 'GeneralSans',
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 17, 16, 16), textStyle: const TextStyle(fontSize: 18),
                          side: const BorderSide(color: Colors.transparent)),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text('Sign in',
                          style: TextStyle(
                              fontFamily: 'GeneralSans',
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
    );
  }
}