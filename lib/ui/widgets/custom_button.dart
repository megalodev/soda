import 'package:flutter/material.dart';

extension CustomButton on TextButton {
  static defaultButton({
    final String title,
    final Color titleColors,
    final Color buttonDefaultColors,
    final Color buttonDefaultBorderColors,
    final VoidCallback onPressed,
    final double height,
    final double width,
    final EdgeInsetsGeometry margin,
    final EdgeInsetsGeometry padding,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      child: ButtonTheme(
        child: TextButton(
          onPressed: onPressed,
          child: new Text(
            title.toUpperCase(),
            style: TextStyle(color: titleColors),
          ),
          style: TextButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              // side: BorderSide(
              //   color: buttonDefaultBorderColors,
              //   width: 0.0,
              // ),
            ),
            backgroundColor: buttonDefaultColors,
          ),
        ),
      ),
    );
  }
}
