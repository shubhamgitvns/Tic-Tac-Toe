import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe "),
        centerTitle: true,
        shadowColor: Colors.tealAccent,
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const [
              SizedBox(
                width: 200,
                height: 100,
                child: Text("One"),
              ),

               SizedBox(
                 width: 200,
                 height: 100,
                 child: Text("Two"),
               ),

               SizedBox(
                 width: 200,
                 height: 100,
                 child: Text("Three"),
               )
             ],
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 200,
                  height: 100,
                  child: Text("One"),
                ),

                SizedBox(
                  width: 200,
                  height: 100,
                  child: Text("Two"),
                ),

                SizedBox(
                  width: 200,
                  height: 100,
                  child: Text("Three"),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
