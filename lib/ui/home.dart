import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('This is Home!'),
      ),
    );
  }
}
