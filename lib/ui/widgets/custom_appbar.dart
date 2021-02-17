import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final List<Widget> children;
  final Widget leading;
  final Widget title;
  final PreferredSizeWidget bottom;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final bool shadow;
  final double titleSpacing;
  final Size preferredSize = Size.fromHeight(AppBar().preferredSize.height);

  CustomAppBar({
    Key key,
    this.height,
    this.children,
    this.leading,
    this.title,
    this.bottom,
    this.centerTitle,
    this.automaticallyImplyLeading = true,
    this.shadow = true,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
  });

  @override
  Widget build(BuildContext context) {
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
      child: AppBar(
        actions: children,
        bottom: bottom,
        leading: leading,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        primary: false,
        centerTitle: centerTitle,
        automaticallyImplyLeading: automaticallyImplyLeading,
        title: title,
        titleSpacing: titleSpacing,
      ),
    );
  }
}
