import 'package:flutter/material.dart';
import 'get_started_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  //berfungsi untuk menavigasi ke layar berikutnya setelah 3 detik
  void _navigateToNextScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator .pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GetStartedPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ini yang menghilangkan debug banner
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo kamu disini
              Image.asset(
                'assets/logo.png',
                width: 350,
                height: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
