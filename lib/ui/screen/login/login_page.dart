import 'package:flutter/material.dart';
import 'package:soda/helpers/color_helper.dart';
import 'package:soda/ui/screen/login/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        _appbar(context),
        Container(
          padding: EdgeInsets.only(
            top: 40.0 - MediaQuery.of(context).padding.top,
          ),
          child: LoginForm(),
        ),
      ],
    );
  }

  Widget _appbar(
    context, {
    double height,
    bool shadow = false,
  }) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorHelper.fromHex('#51E69B'),
            ColorHelper.fromHex('#26C5F9'),
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.9],
        ),
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ]
            : [],
      ),
    );
  }
}
