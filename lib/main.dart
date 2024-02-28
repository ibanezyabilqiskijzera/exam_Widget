import 'package:flutter/material.dart';
import 'splash_screen_page.dart';
import 'forgot_password_page.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';
import 'get_started_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/get_strated' : (context) => GetStartedPage(),
        '/sign_in': (context) => SignInpage(),
        '/sign_up': (context) => SignUpPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
      },
    );
  }
}