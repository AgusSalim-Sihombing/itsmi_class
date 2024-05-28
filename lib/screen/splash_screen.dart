
import 'package:aplikasi_nonton_id/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/splash_screen.png", fit: BoxFit.cover),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFF1C1A29),
                Color.fromRGBO(28, 26, 41, 0.53)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Positioned(
              top: 100,
              right: 0,
              left: 0,
              child: Image.asset("assets/images/logo.png"),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


