
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tiktoktoi/Stateful.dart';
import 'package:tiktoktoi/stateless.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) =>  const WelcomPage(),
      '/optionalpage': (context) => const OptionalPage(),
      '/computermode':(context) => const IntroPage(),
      //'/computermodeplay':(context) => const MyApp(),
      '/humanmode':(context) => PlayersIntroPage(),
      '/humanmodeplay':(context) =>const MyFirstApp(),
      '/Choose_tern':(context)=>const ChooseTern(),
      '/Human_Tern_Play':(context)=>const MyHomePage(title: 'Flutter Demo Page',),
      '/Computer_Tern_Play':(context)=>const MySecondHomePage(),
    },
  ));
}

