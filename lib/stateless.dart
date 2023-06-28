import 'package:flutter/material.dart';
import 'package:tiktoktoi/statefull.dart';

import 'Utilities.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            shadowColor: Colors.lightBlueAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Welcome The Tic Tac Toe Game",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  //Text field icon
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 600,
                      maxWidth: 600,
                    ),
                    child: TextField(
                      onChanged: (String a){
                        a = Utilities.firstcontroller.text;
                        print(a);
                      },
                      controller: Utilities.firstcontroller,
                      decoration: InputDecoration(
                          hintText: "Enter first player name",
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              Utilities.firstcontroller.clear(); // _text controller
                            },
                            //Cross Icon
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2.0, -2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  )
                ]),
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        print("play");
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const Text(
                        "Play",
                      )),
                ),
              )
            ],
          )),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Toc Toe',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}