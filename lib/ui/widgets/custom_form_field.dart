import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onEditingComplete;
  final bool obscureText;
  final String hintText;
  final Widget suffixIcon;
  final Widget icon;
  final TextAlign textAlign;
  final TextStyle style;
  final TextStyle hintStyle;
  final TextInputType keyboardType;
  final int maxLength;
  final List<TextInputFormatter> inputFormater;
  final double latterSpacing;
  final Function(String) validator;

  const CustomFormField({
    Key key,
    this.controller,
    this.obscureText,
    this.hintText,
    this.textAlign,
    this.style,
    this.keyboardType,
    this.maxLength,
    this.inputFormater,
    this.suffixIcon,
    this.icon,
    this.latterSpacing,
    this.hintStyle,
    this.onEditingComplete,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      validator: validator,
      controller: controller,
      style: style == null
          ? TextStyle(
              fontSize: 16, color: Colors.black87, letterSpacing: latterSpacing)
          : style,
      textAlign: textAlign == null ? TextAlign.left : textAlign,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType == null ? TextInputType.text : keyboardType,
      maxLength: maxLength,
      inputFormatters: inputFormater,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 16.0,
          top: 12,
          right: 16,
          bottom: 12,
        ),
        isDense: true,
        hintStyle: hintStyle == null
            ? TextStyle(
                fontSize: 14,
                letterSpacing: latterSpacing,
              )
            : hintStyle,
        filled: true,
        fillColor: Colors.white,
        // counter: Text(maxLength.toString()),
        // counterText: maxLength.toString(),
        // counterStyle: TextStyle(fontSize: 0.0),
        icon: icon,
        hintText: hintText,

        border: _inputBorder(),
        focusedBorder: _inputBorder(
          color: Colors.amber,
        ),
        disabledBorder: _inputBorder(),
        enabledBorder: _inputBorder(),
        suffixIcon: suffixIcon,
      ),
      // ),
    );
  }

  _inputBorder({Color color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        gapPadding: 20,
        borderSide: BorderSide(
          color: color ?? Colors.grey[200],
          style: BorderStyle.solid,
          width: 3.0,
        ),
      );
}
