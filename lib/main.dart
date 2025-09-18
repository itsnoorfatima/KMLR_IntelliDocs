import 'package:flutter/material.dart';
import 'package:kmrl_intellidocs/screens/splash.dart';
import 'package:kmrl_intellidocs/screens/dashboard.dart';

void main() {
  runApp(KMRLApp());
}

class KMRLApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMRL Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
