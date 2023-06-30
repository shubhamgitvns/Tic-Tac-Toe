
import 'package:flutter/material.dart';
import 'package:tiktoktoi/stateless.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) =>  const WelcomPage(),
      '/second': (context) => const OptionalPage(),
      '/third':(context) => const IntroPage(),
      '/fourth':(context) => const MyApp(),
      '/fifth':(context) => PlayersIntroPage(),
      '/sixth':(context) =>const MyFirstApp(),
    },
  ));
}
