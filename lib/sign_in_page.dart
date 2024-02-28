import 'package:flutter/material.dart';
import 'forgot_password_page.dart';
import 'sign_up_page.dart';

class SignInpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text( 'Welcome back!',
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                //navigasa ke halaman forgot password saat text "forgot Password" di tekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text (
                'Forgot Password',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                //aksi saat tobol login di tekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize:
                Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white, fontSize: 10.0),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/google_ip_fb.png',
                width: 100, height: 100),
              ],
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                //navigasi ke halman sign up saat text "Sign Upp" di tekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder :(context) => SignUpPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create An Account'),
                  Text('Sign Up', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}