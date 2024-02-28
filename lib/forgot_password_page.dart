import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 65, fontWeight:FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Icon(Icons.email), //icon email di kiri
                  SizedBox(width:10.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email addres',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '"We will send you a message to set pr reset your new password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                //aksi daat tombol register di tekan
              },
              child: Container(
                width: double.infinity,
                height:50.0,
                child: Center(
                  child: Text(
                    'Create Account',
                    style:TextStyle(color:Colors.white),
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
          ],
        ),
      ),
    );
  }
}