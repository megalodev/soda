import 'package:flutter/material.dart';
import 'package:soda/ui/widgets/custom_appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
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
