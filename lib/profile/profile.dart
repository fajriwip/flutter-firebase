import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ElevatedButton(
        child: const Text('Sign out'),
        onPressed: () async {
          AuthService().signOut();
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        },
      ),
    );
  }
}
