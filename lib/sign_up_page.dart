import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {
    return  Scaffold (
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create an Account',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username or Email',
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
                suffixIcon: Icon(Icons.visibility), //icon mata di kiri
                prefixIcon: Icon(Icons.lock), //icon gembook di kiri
              ),
            ),
            SizedBox(height:10.0),
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                suffixIcon:Icon(Icons.visibility),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: (){
                //aksi saattombol register di tekan 
              },
              child: Container(
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height:10.0),
            //foto
            Image.asset(
              'assets/google_ip_fb.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                //navigasi ke halaman sign in saat text "Login" di tekan 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInpage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('I AlreadyHave an Account'),
                  Text('Login', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}