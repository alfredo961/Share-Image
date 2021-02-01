import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_example/providers/share_provider.dart';
import 'package:share_example/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ShareProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: Brightness.dark,
            textTheme: TextTheme(
                headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                bodyText1: TextStyle(fontSize: 14, color: Colors.white))),
        home: HomePage(),
      ),
    );
  }
}
