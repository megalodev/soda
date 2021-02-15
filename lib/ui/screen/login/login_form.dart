import 'package:flutter/material.dart';
import 'package:soda/ui/widgets/custom_button.dart';
import 'package:soda/ui/widgets/custom_form_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding.top;
    return SafeArea(
      bottom: true,
      child: Container(
        height: MediaQuery.of(context).size.height - padding,
        padding: EdgeInsets.only(top: padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: ListView(
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(
                right: 20.0,
                left: 20.0,
              ),
              height: MediaQuery.of(context).size.height - (padding * 3),
              child: Form(
                child: _input(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _input(context) {
    return Container(
      child: Column(
        children: [
          _expanded(
            context,
            children: [
              _text(
                text: 'Selamat Datang',
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              _text(
                text: 'Silakan masuk untuk melanjutkan.',
                fontSize: 15.0,
              ),
            ],
          ),
          _expanded(
            context,
            flex: 3,
            children: [
              _text(text: 'Email Anda'),
              CustomFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20.0,
              ),
              _text(text: 'Kata Sandi'),
              CustomFormField(
                controller: _passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                // hintText: 'your password',
              ),
              _text(
                text: 'Lupa kata sandi?',
                color: Colors.blue,
                alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 60.0,
              ),
              CustomButton.defaultButton(
                onPressed: () {
                  print('object 1');
                },
                title: "Login",
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                titleColors: Colors.white,
                buttonDefaultColors: Colors.green,
              ),
            ],
          ),
          _expanded(
            context,
            rowChildren: [
              _text(
                text: 'Belum punya akun?',
              ),
              _text(
                text: ' Daftar',
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///pilih satu! child atau children atau rowChildren.
  ///jika [child != null] && [children != null] && [rowChildren != null]
  ///maka otomatis yang tampil adalah [child]nya.
  _expanded(
    BuildContext context, {
    int flex,
    Widget child,
    List<Widget> children,
    List<Widget> rowChildren,
  }) {
    return Expanded(
      flex: flex ?? 1,
      child: child != null
          ? child
          : children != null
              ? Column(
                  children: children,
                )
              : Row(
                  children: rowChildren,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
    );
  }

  _text({
    String text,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    Alignment alignment,
  }) =>
      Container(
        alignment: alignment ?? Alignment.centerLeft,
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Text(
          '$text',
          style: TextStyle(
            color: color ?? Colors.grey[600],
            fontSize: fontSize ?? 16.0,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      );
}
