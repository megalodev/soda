import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soda/helpers/color_helper.dart';
import 'package:soda/ui/screen/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SmarakSystemChrome.preferredOrientations();
    SmarakSystemChrome.uiOverlayStyle();

    return MaterialApp(
      theme: SmarakTheme.theme,
      title: 'SMARAK App',
      home: LoginPage(),
    );
  }
}

extension SmarakSystemChrome on SystemChrome {
  static preferredOrientations() => SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      );
  static uiOverlayStyle() => SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      );
}

class SmarakTheme {
  static get theme {
    final originalTextTheme = ThemeData.light().textTheme;
    final originalBody1 = originalTextTheme.bodyText1;

    return ThemeData.light().copyWith(
      platform: TargetPlatform.android,
      primaryColor: ColorHelper.fromHex('4BB543'),
      accentColor: Colors.cyan[300],
      buttonColor: ColorHelper.fromHex('4BB543'),
      backgroundColor: Colors.grey[800],
      toggleableActiveColor: Colors.cyan[300],
      textTheme: originalTextTheme.copyWith(
        bodyText1: originalBody1.copyWith(
          decorationColor: Colors.transparent,
          fontSize: 16,
        ),
      ),
    );
  }
}
