import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FlutterLogo(size: 150),
            LoginButton(
              color: Colors.deepPurple,
              icon: FontAwesomeIcons.userNinja,
              text: 'Continue as guest',
              loginMethod: AuthService().anonLogin,
            ),
            LoginButton(
              color: Colors.blueAccent,
              icon: FontAwesomeIcons.google,
              text: 'Continue with gmail',
              loginMethod: AuthService().signInWithGoogle,
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
    required this.loginMethod,
  });

  final String text;
  final Color color;
  final IconData icon;
  final Function loginMethod;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(24),
      ),
      onPressed: () => loginMethod(),
      icon: Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
      label: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
