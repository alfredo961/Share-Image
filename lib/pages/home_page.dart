import 'package:flutter/material.dart';
import 'package:share_example/widgets/card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(children: <Widget>[CardWidget()]),
        ),
      ),
    );
  }
}
