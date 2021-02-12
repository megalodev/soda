import 'package:flutter/material.dart';
import 'package:soda/ui/home.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      backgroundColor: Colors.white,
      seconds: 3,
      // useLoader: true,
      image: Image.asset('assets/img/icon.png'),
      photoSize: MediaQuery.of(context).size.width % 100.8,

      navigateAfterSeconds: Home(),
    );
  }
}
