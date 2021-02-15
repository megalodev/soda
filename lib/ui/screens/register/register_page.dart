import 'package:flutter/material.dart';
import 'package:soda/ui/screens/register/register_form.dart';

class RegisterPage extends StatelessWidget {
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
          child: RegisterForm(),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top * 2.4,
          left: 12.0,
          child: GestureDetector(
            onTap: () {
              print('---------------------------->>> >> > on Tap');
            },
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
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
            Colors.yellow[700],
            Colors.orange,
            Colors.orange[700],
            Colors.orange[900]
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.5, 0.7, 0.9],
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
