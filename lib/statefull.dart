import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tic Tac Toe "),
          centerTitle: true,
          shadowColor: Colors.tealAccent,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: grid.length,
          itemBuilder: (context, index) => InkWell(
            // if click the icon than work splash color like click button in the css
            splashColor: Colors.teal,
            onTap: (){},
            child: Center(
                child: Text(
                  grid[index],
                  style: TextStyle(fontSize: 50),
                )),
          ),
        ));
  }
}
