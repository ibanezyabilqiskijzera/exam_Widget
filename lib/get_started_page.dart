import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class GetStartedPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //gambar di bagian atas
            Image.asset(
              'assets/shopping.png',
              width: 350,
              height: 350,
            ),
            SizedBox(height: 10),
            //text "Get Your Order" dengan ukuran lebih besar dan bold
            Text(
              'Get Your oorder',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10),
            //Text lorem ipsum dengan ukuran lebih kecil
            Text(
              'Amet minim mollit non deserunt ullamco est sit aligua dolor do amet sint.'
              'Velit officia consequat duis enik velit mollit.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            //tetxt link "Get Started" di pojok kanan warna merah
            GestureDetector(
              onTap: () {
                //navigasi ke halman login saat text link di tekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInpage()),
                );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}