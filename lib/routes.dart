import 'package:flutter_firebase/about/about.dart';
import 'package:flutter_firebase/home/home.dart';
import 'package:flutter_firebase/login/login.dart';
import 'package:flutter_firebase/profile/profile.dart';
import 'package:flutter_firebase/topics/topics.dart';

var appRoutes = {
  '/about': (context) => const AboutScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/': (context) => const HomeScreen(),
};
