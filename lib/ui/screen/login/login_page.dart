import 'package:flutter/material.dart';
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

// class CustomShapeBorder extends ContinuousRectangleBorder {
//   @override
//   Path getOuterPath(Rect rect, {TextDirection textDirection}) {
//     final double innerCircleRadius = 0.0;

//     Path path = Path();
//     path.lineTo(-150, rect.height + 50);
//     path.quadraticBezierTo(
//       // rect.width / 20 - (innerCircleRadius / 2) - 500,
//       0,
//       rect.height - 50,
//       // rect.width / 2 - 100,
//       -20.0,
//       rect.height + 50,
//     );
//     path.cubicTo(
//       rect.width / 2 - 250,
//       rect.height + innerCircleRadius - 0,
//       rect.width / 2 - 200,
//       rect.height + innerCircleRadius - 50,
//       rect.width / 2 + 50,
//       rect.height + 0,
//     );
//     path.quadraticBezierTo(
//       // rect.width / 2 + (innerCircleRadius / 2) + 50,
//       450,
//       // rect.height + 1005,
//       92.0,
//       rect.width + 10,
//       rect.height + 50,
//     );
//     path.lineTo(rect.width - 0, 100.0);
//     path.close();

//     return path;
//   }
// }

// class MyShapeBorder extends ContinuousRectangleBorder {
//   const MyShapeBorder(this.curveHeight);
//   final double curveHeight;

//   @override
//   Path getOuterPath(Rect rect, {TextDirection textDirection}) => Path()
//     ..lineTo(0, rect.size.height)
//     ..quadraticBezierTo(
//       rect.size.width / 2,
//       rect.size.height + (curveHeight - 220),
//       rect.size.width + 50,
//       rect.size.height + 50,
//     )
//     ..lineTo(rect.size.width, 0)
//     ..close();
// }
