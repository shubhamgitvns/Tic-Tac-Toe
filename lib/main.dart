import 'package:flutter/material.dart';
import 'package:tiktoktoi/stateless.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) =>  IntroPage(),
     '/second': (context) => const MyApp(),
    },
  ));
}

