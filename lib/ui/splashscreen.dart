import 'package:flutter/material.dart';
import 'package:soda/ui/screens/login/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      backgroundColor: Colors.white,
      seconds: 3,
      useLoader: true,
      image: Image.asset('assets/img/icon.png'),
      photoSize: 100.0,
      navigateAfterSeconds: LoginPage(),
    );
  }
}
